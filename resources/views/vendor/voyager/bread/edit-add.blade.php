@extends('voyager::master')

@section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('css')
    <style>
        .panel .mce-panel {
            border-left-color: #fff;
            border-right-color: #fff;
        }

        .panel .mce-toolbar,
        .panel .mce-statusbar {
            padding-left: 20px;
        }

        .panel .mce-edit-area,
        .panel .mce-edit-area iframe,
        .panel .mce-edit-area iframe html {
            padding: 0 10px;
            min-height: 350px;
        }

        .mce-content-body {
            color: #555;
            font-size: 14px;
        }

        .panel.is-fullscreen .mce-statusbar {
            position: absolute;
            bottom: 0;
            width: 100%;
            z-index: 200000;
        }

        .panel.is-fullscreen .mce-tinymce {
            height:100%;
        }

        .panel.is-fullscreen .mce-edit-area,
        .panel.is-fullscreen .mce-edit-area iframe,
        .panel.is-fullscreen .mce-edit-area iframe html {
            height: 100%;
            position: absolute;
            width: 99%;
            overflow-y: scroll;
            overflow-x: hidden;
            min-height: 100%;
        }
    </style>
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content container-fluid">
        <form class="form-edit-add" role="form" action="@if(isset($dataTypeContent->id)){{ route('voyager.'.$dataType->slug.'.update', $dataTypeContent->id) }}@else{{ route('voyager.'.$dataType->slug.'.store') }}@endif" method="POST" enctype="multipart/form-data">
            <!-- PUT Method if we are editing -->
            @if(isset($dataTypeContent->id))
                {{ method_field("PUT") }}
            @endif
            {{ csrf_field() }}


            <!-- ### TITLE ### -->
            <div class="panel">
                @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <div class="panel-body">
                    
                    @php
                        $dataTypeRows = $dataType->{(isset($dataTypeContent->id) ? 'editRows' : 'addRows' )};
                        $exclude = ['meta_description', 'meta_keywords', 'seo_title'];
                    @endphp

                    @foreach($dataTypeRows as $row)
						
                        @if(!in_array($row->field, $exclude))
                            @php
                                $display_options = $row->details->display ?? NULL;
                            @endphp
                            @if (isset($row->details->formfields_custom))
                                @include('voyager::formfields.custom.' . $row->details->formfields_custom)
                            @else
                                <div class="form-group @if($row->type == 'hidden') hidden @endif @if(isset($display_options->width)){{ 'col-md-' . $display_options->width }}@endif" @if(isset($display_options->id)){{ "id=$display_options->id" }}@endif>
                                    {{ $row->slugify }}
                                    <label for="name">{{ $row->getTranslatedAttribute('display_name') }}</label>
                                    @include('voyager::multilingual.input-hidden-bread-edit-add')
                                    @if($row->type == 'relationship')
                                        @include('voyager::formfields.relationship', ['options' => $row->details])
                                    @else
                                        {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                                    @endif

                                    @foreach (app('voyager')->afterFormFields($row, $dataType, $dataTypeContent) as $after)
                                        {!! $after->handle($row, $dataType, $dataTypeContent) !!}
                                    @endforeach
                                </div>
                            @endif
                        @endif
                    @endforeach

                </div>

			</div>

			@php 
				$seo_title = $dataTypeRows->where('field', 'seo_title')->first();
			@endphp
            <!-- ### SEO CONTENT ### -->
            @if(isset($seo_title))
            <div class="panel panel-bordered panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="icon wb-search"></i> {{ __('generic.seo_content') }}</h3>
                    <div class="panel-actions">
                        <a class="panel-action voyager-angle-down" data-toggle="panel-collapse" aria-hidden="true"></a>
                    </div>
                </div>
                <div class="panel-body">
                    
                    <div class="form-group">
                        <label for="seo_title">{{ __('voyager::post.seo_title') }}</label>
                        <span class="language-label js-language-label"></span>
                        @include('voyager::multilingual.input-hidden', [
                            '_field_name'  => 'seo_title',
                            '_field_trans' => get_field_translations($dataTypeContent, 'seo_title')
                        ])
                        <input type="text" class="form-control" name="seo_title" placeholder="SEO Title" value="{{ $dataTypeContent->seo_title ?? '' }}">
                    </div>
                    
                    <div class="form-group">
                        <label for="meta_keywords">{{ __('voyager::post.meta_keywords') }}</label>
                        <span class="language-label js-language-label"></span>
                        @include('voyager::multilingual.input-hidden', [
                            '_field_name'  => 'meta_keywords',
                            '_field_trans' => get_field_translations($dataTypeContent, 'meta_keywords')
                        ])
                        <textarea rows="5" class="form-control" name="meta_keywords">{{ $dataTypeContent->meta_keywords ?? '' }}</textarea>
                    </div>

                    <div class="form-group">
                        <label for="meta_description">{{ __('voyager::post.meta_description') }}</label>
                        <span class="language-label js-language-label"></span>
                        @include('voyager::multilingual.input-hidden', [
                            '_field_name'  => 'meta_description',
                            '_field_trans' => get_field_translations($dataTypeContent, 'meta_description')
                        ])
                        <textarea rows="5" class="form-control" name="meta_description">{{ $dataTypeContent->meta_description ?? '' }}</textarea>
                    </div>
                    
                    
                </div>
			</div>
			@endif

            <button type="submit" class="btn btn-primary pull-right">
                @if(isset($dataTypeContent->id))
                    {{ __('voyager::generic.update') }}
                @else 
                    <i class="icon wb-plus-circle"></i> 
                    {{ __('voyager::generic.new') }}
                @endif
            </button>

        </form>

        <iframe id="form_target" name="form_target" style="display:none"></iframe>
        <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post" enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
            {{ csrf_field() }}
            <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
            <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
        </form>
    </div>
    
    <div class="modal fade modal-danger" id="confirm_delete_modal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><i class="voyager-warning"></i> {{ __('voyager::generic.are_you_sure') }}</h4>
                </div>
                <div class="modal-body">
                    <h4>{{ __('voyager::generic.are_you_sure_delete') }} '<span class="confirm_delete_name"></span>'</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                    <button type="button" class="btn btn-danger" id="confirm_delete">{{ __('voyager::generic.delete_confirm') }}
                    </button>
                </div>
            </div>
        </div>
    </div>
@stop

@section('javascript')
<script>
        var params = {};
        var $file;
        var relates = ['id_list', 'id_cat', 'id_item', 'id_sub'];

        function deleteHandler(tag, isMulti) {
          return function() {
            $file = $(this).siblings(tag);

            params = {
                slug:   '{{ $dataType->slug }}',
                filename:  $file.data('file-name'),
                id:     $file.data('id'),
                field:  $file.parent().data('field-name'),
                multi: isMulti,
                _token: '{{ csrf_token() }}'
            }

            $('.confirm_delete_name').text(params.filename);
            $('#confirm_delete_modal').modal('show');
          };
        }

        function relationParents(name){
            var parents = [];

            switch(name) {
                case 'id_cat':
                    parents.push({'field' :'id_list', 'value': $("select[name='id_list']").val()});
                    break;
                case 'id_item':
                    parents.push({'field' :'id_cat', 'value': $("select[name='id_cat']").val()});
                    break;
                case 'id_sub':
                    parents.push({'field' :'id_item', 'value': $("select[name='id_item']").val()});
                    break;
                default:
                    
                }

            return parents;
        }

        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();

            //Init datepicker for date fields if data-datepicker attribute defined
            //or if browser does not handle date inputs
            $('.form-group input[type=date]').each(function (idx, elt) {
                if (elt.type != 'date' || elt.hasAttribute('data-datepicker')) {
                    elt.type = 'text';
                    $(elt).datetimepicker($(elt).data('datepicker'));
                }
            });

            @if ($isModelTranslatable)
                $('.side-body').multilingual({"editing": true});
            @endif

            $('.side-body input[data-slug-origin]').each(function(i, el) {
                $(el).slugify();
            });

            $('.form-group').on('click', '.remove-multi-image', deleteHandler('img', true));
            $('.form-group').on('click', '.remove-single-image', deleteHandler('img', false));
            $('.form-group').on('click', '.remove-multi-file', deleteHandler('a', true));
            $('.form-group').on('click', '.remove-single-file', deleteHandler('a', false));

            $('#confirm_delete').on('click', function(){
                $.post('{{ route('voyager.'.$dataType->slug.'.media.remove') }}', params, function (response) {
                    if ( response
                        && response.data
                        && response.data.status
                        && response.data.status == 200 ) {

                        toastr.success(response.data.message);
                        $file.parent().fadeOut(300, function() { $(this).remove(); })
                    } else {
                        toastr.error("Error removing file.");
                    }
                });

                $('#confirm_delete_modal').modal('hide');
            });

            $('select.select2-ajax').each(function() {

                $(this).select2({
                    width: '100%',
                    ajax: {
                        url: $(this).data('get-items-route'),
                        data: function (params) {
                            var query = {
                                parents: relationParents($(this).attr('name')),
                                search: params.term,
                                type: $(this).data('get-items-field'),
                                method: $(this).data('method'),
                                id: $(this).data('id'),
                                page: params.page || 1
                            }
                            return query;
                        }
                    }
                });

                $(this).on('select2:select',function(e){
                    var data = e.params.data;
                    
                    if (data.id == '') {
                        // "None" was selected. Clear all selected options
                        $(this).val([]).trigger('change');
                    } else {
                        $(e.currentTarget).find("option[value='" + data.id + "']").attr('selected','selected');
                    }

                    var indexof = relates.indexOf(e.currentTarget.name);

                    relates.forEach(function(el, index){
                        if(index > indexof) {
                            $("select[name='"+el+"']").val([]).trigger('change');
                        }
                    });
                });

                $(this).on('select2:unselect',function(e){
                    var data = e.params.data;
                    $(e.currentTarget).find("option[value='" + data.id + "']").attr('selected',false);;
                });
            });

            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
@stop