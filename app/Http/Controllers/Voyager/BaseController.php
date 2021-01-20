<?php

namespace App\Http\Controllers\Voyager;

use TCG\Voyager\Http\Controllers\VoyagerBaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Database\Schema\SchemaManager;
use Illuminate\Support\Facades\Auth;

class BaseController extends VoyagerBaseController
{
    //***************************************
    //               ____
    //              |  _ \
    //              | |_) |
    //              |  _ <
    //              | |_) |
    //              |____/
    //
    //      Browse our Data Type (B)READ
    //
    //****************************************

    public function index(Request $request)
    {
        // GET THE SLUG, ex. 'posts', 'pages', etc.
        $slug = $this->getSlug($request);

        // GET THE DataType based on the slug
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('browse', app($dataType->model_name));

        $getter = $dataType->server_side ? 'paginate' : 'get';

        $search = (object) [
            'value' => $request->get('s'), 
            'key' => $request->get('key'), 
            'filter' => $request->get('filter'),
            'id_list' => $request->get('id_list'),
            'id_cat' => $request->get('id_cat'),
            'id_item' => $request->get('id_item'),
            'id_sub' => $request->get('id_sub')
        ];

        $searchNames = [];
        if ($dataType->server_side) {
            $searchable = SchemaManager::describeTable(app($dataType->model_name)->getTable())->pluck('name')->toArray();
            $dataRow = Voyager::model('DataRow')->whereDataTypeId($dataType->id)->get();
            foreach ($searchable as $key => $value) {
                $field = $dataRow->where('field', $value)->first();
                $displayName = ucwords(str_replace('_', ' ', $value));
                if ($field !== null) {
                    $displayName = $field->getTranslatedAttribute('display_name');
                }
                $searchNames[$value] = $displayName;
            }
        }

        $orderBy = $request->get('order_by', $dataType->order_column);
        $sortOrder = $request->get('sort_order', $dataType->order_direction);
        $usesSoftDeletes = false;
        $showSoftDeleted = false;

        // Next Get or Paginate the actual content from the MODEL that corresponds to the slug DataType
        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);

            if ($dataType->scope && $dataType->scope != '' && method_exists($model, 'scope'.ucfirst($dataType->scope))) {
                $query = $model->{$dataType->scope}();
            } else {
                $query = $model::select('*');
            }

            // Use withTrashed() if model uses SoftDeletes and if toggle is selected
            if ($model && in_array(SoftDeletes::class, class_uses_recursive($model)) && Auth::user()->can('delete', app($dataType->model_name))) {
                $usesSoftDeletes = true;

                if ($request->get('showSoftDeleted')) {
                    $showSoftDeleted = true;
                    $query = $query->withTrashed();
                }
            }

            // If a column has a relationship associated with it, we do not want to show that field
            $this->removeRelationshipField($dataType, 'browse');

            if ($search->value != '' && $search->key && $search->filter) {
                $search_filter = ($search->filter == 'equals') ? '=' : 'LIKE';
                $search_value = ($search->filter == 'equals') ? $search->value : '%'.$search->value.'%';
                $query->where($search->key, $search_filter, $search_value);
            }

            if($search->id_list){
                $query->where('id_list', $search->id_list);
            }

            if($search->id_cat){
                $query->where('id_cat', $search->id_cat);
            }

            if($search->id_item){
                $query->where('id_item', $search->id_item);
            }

            if($search->id_sub){
                $query->where('id_sub', $search->id_sub);
            }

            if ($orderBy && in_array($orderBy, $dataType->fields())) {
                $querySortOrder = (!empty($sortOrder)) ? $sortOrder : 'desc';
                $dataTypeContent = call_user_func([
                    $query->orderBy($orderBy, $querySortOrder),
                    $getter,
                ]);
            } elseif ($model->timestamps) {
                $dataTypeContent = call_user_func([$query->latest($model::CREATED_AT), $getter]);
            } else {
                $dataTypeContent = call_user_func([$query->orderBy($model->getKeyName(), 'DESC'), $getter]);
            }

            // Replace relationships' keys for labels and create READ links if a slug is provided.
            $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType);
        } else {
            // If Model doesn't exist, get data from table name
            $dataTypeContent = call_user_func([DB::table($dataType->name), $getter]);
            $model = false;
        }

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($model);

        // Eagerload Relations
        $this->eagerLoadRelations($dataTypeContent, $dataType, 'browse', $isModelTranslatable);

        // Check if server side pagination is enabled
        $isServerSide = isset($dataType->server_side) && $dataType->server_side;

        // Check if a default search key is set
        $defaultSearchKey = $dataType->default_search_key ?? null;

        // Actions
        $actions = [];
        if (!empty($dataTypeContent->first())) {
            foreach (Voyager::actions() as $action) {
                $action = new $action($dataType, $dataTypeContent->first());

                if ($action->shouldActionDisplayOnDataType()) {
                    $actions[] = $action;
                }
            }
        }

        // Define showCheckboxColumn
        $showCheckboxColumn = false;
        if (Auth::user()->can('delete', app($dataType->model_name))) {
            $showCheckboxColumn = true;
        } else {
            foreach ($actions as $action) {
                if (method_exists($action, 'massAction')) {
                    $showCheckboxColumn = true;
                }
            }
        }

        // Define orderColumn
        $orderColumn = [];
        if ($orderBy) {
            $index = $dataType->browseRows->where('field', $orderBy)->keys()->first() + ($showCheckboxColumn ? 1 : 0);
            $orderColumn = [[$index, $sortOrder ?? 'desc']];
        }

        $view = 'voyager::bread.browse';

        if (view()->exists("voyager::$slug.browse")) {
            $view = "voyager::$slug.browse";
        }

        return Voyager::view($view, compact(
            'actions',
            'dataType',
            'dataTypeContent',
            'isModelTranslatable',
            'search',
            'orderBy',
            'orderColumn',
            'sortOrder',
            'searchNames',
            'isServerSide',
            'defaultSearchKey',
            'usesSoftDeletes',
            'showSoftDeleted',
            'showCheckboxColumn'
        ));
    }

    public function active(Request $request){
        $dataType = Voyager::model('DataType')->where('slug', $request->slug)->first();
        DB::table($dataType->name)->where('id', $request->id)->update([
            $request->field  => $request->value,
        ]);
        return $request->value;
    }

    public function relation(Request $request)
    {
        $slug = $this->getSlug($request);
        $page = $request->input('page');
        $on_page = 50;
        $search = $request->input('search', false);
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        $method = $request->input('method', 'add');
        $parents = $request->input('parents', []);

        $model = app($dataType->model_name);
        if ($method != 'add') {
            $model = $model->find($request->input('id'));
        }

        $this->authorize($method, $model);

        $rows = $dataType->{$method.'Rows'};
        foreach ($rows as $key => $row) {
            if ($row->field === $request->input('type')) {
                $options = $row->details;
                $model = app($options->model);
                $skip = $on_page * ($page - 1);

                $additional_attributes = $model->additional_attributes ?? [];

                // Apply local scope if it is defined in the relationship-options
                if (isset($options->scope) && $options->scope != '' && method_exists($model, 'scope'.ucfirst($options->scope))) {
                    $model = $model->{$options->scope}();
                }

                // Apply multiple level relationship

                if(count($parents) > 0){
                    foreach ($parents as $con) {
                        $model = $model->where($con['field'], intval($con['value']));
                    }
                }

                // If search query, use LIKE to filter results depending on field label
                if ($search) {
                    // If we are using additional_attribute as label
                    if (in_array($options->label, $additional_attributes)) {
                        $relationshipOptions = $model->all();
                        $relationshipOptions = $relationshipOptions->filter(function ($model) use ($search, $options) {
                            return stripos($model->{$options->label}, $search) !== false;
                        });
                        $total_count = $relationshipOptions->count();
                        $relationshipOptions = $relationshipOptions->forPage($page, $on_page);
                    } else {
                        $total_count = $model->where($options->label, 'LIKE', '%'.$search.'%')->count();
                        $relationshipOptions = $model->take($on_page)->skip($skip)
                            ->where($options->label, 'LIKE', '%'.$search.'%')
                            ->get();
                    }
                } else {
                    $total_count = $model->count();
                    $relationshipOptions = $model->take($on_page)->skip($skip)->get();
                }

                $results = [];

                if (!$row->required && !$search && $page == 1) {
                    $results[] = [
                        'id'   => '',
                        'text' => __('voyager::generic.none'),
                    ];
                }

                

                // Sort results
                if (!empty($options->sort->field)) {
                    if (!empty($options->sort->direction) && strtolower($options->sort->direction) == 'desc') {
                        $relationshipOptions = $relationshipOptions->sortByDesc($options->sort->field);
                    } else {
                        $relationshipOptions = $relationshipOptions->sortBy($options->sort->field);
                    }
                }

                foreach ($relationshipOptions as $relationshipOption) {
                    $results[] = [
                        'id'   => $relationshipOption->{$options->key},
                        'text' => $relationshipOption->{$options->label},
                    ];
                }

                return response()->json([
                    'results'    => $results,
                    'pagination' => [
                        'more' => ($total_count > ($skip + $on_page)),
                    ],
                ]);
            }
        }

        // No result found, return empty array
        return response()->json([], 404);
    }

}
