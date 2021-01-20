<?php

namespace App\Http\Controllers\Voyager;

use Illuminate\Routing\Controller;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

use App\Exports\ProductsExport;
use App\Exports\ProductsExportQuery;
use App\Exports\ProductsExportView;

use App\Imports\ProductsImport;

use Carbon\Carbon;

class ProductController extends Controller
{
    public function export(Request $request)
    {
        $type = $request->type;
        
        if($request->created!="" && $request->template==""){
            $now = new Carbon($request->created);
            $year = $now->year;
            $created = $request->created;
            return Excel::download(new ProductsExportQuery($year,$created),'products.'.$type);
        }else if($request->created=="" && $request->template!=""){
 
            return Excel::download(new ProductsExportView($request->template), 'products.'.$type);
        }
        return Excel::download(new ProductsExport, 'products.'.$type);
    }

    public function import() 
    {
        Excel::import(new ProductsImport,request()->file('file'));
        
        return back()->with([
            'message'    => trans('generic.import_success'),
            'alert-type' => 'success',
        ]);
    }

}
