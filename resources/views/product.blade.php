@extends('layouts.master')

@if (isset($category->title))
    @section('title', $category->seo_title)
@else
    @section('title', __('generic.page_product.product'))
@endif

@if (isset($category->meta_description) || isset($category->meta_keywords))
    @section('meta_description', $category->meta_description)
    @section('meta_keywords', $category->meta_keywords)
@endif

@section('content')

    @if (isset($category->cat))
        @include('components.breadcrumbs', ['breadcrumbs' => [
            $category->list->title => route('product.list', $category->list->slug),
            $category->cat->title => route('product.cat', ['list' => $category->list->slug, 'cat' => $category->cat->slug]),
            $category->title
        ]])
    @elseif (isset($category->list))
        @include('components.breadcrumbs', ['breadcrumbs' => [
            $category->list->title => route('product.list', $category->list->slug),
            $category->title
        ]])
    @else
        @include('components.breadcrumbs', ['breadcrumbs' => [
            isset($category->title) ? $category->title : __('generic.page_product.product')
        ]])
    @endif

<div class="page-main-wrapper">
    <div class="container">
        <div class="row">
            
            <div class="col-12">
                @if (count($products) > 0)
                    <div class="shop-product-wrapper">
                       
                        <div class="shop-top-bar">
                            <div class="row">
                                <div class="col-lg-7 col-md-6">
                                    <div class="top-bar-left">
                                        <div class="product-view-mode mr-70 mr-sm-0">
                                            <a class="active" href="#" data-target="grid"><i class="fa fa-th"></i></a>
                                            <a href="#" data-target="list"><i class="fa fa-list"></i></a>
                                        </div>
                                        <div class="product-amount">
                                            <p>{{ __('generic.page_product.show') }} {{ $products->firstItem() }}-{{ $products->lastItem() }} {{ __('generic.page_product.of') }} {{ $products->total() }} {{ __('generic.page_product.result') }}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-6">
                                    <div class="top-bar-right">
                                        <div class="product-short">
                                            <p>{{ __('generic.page_product.sortby') }} : </p>
                                            <select class="nice-select" name="sortby">
                                                <option value="" <?= isset($_GET['sortby']) && $_GET['sortby'] == "" ? "selected" : "" ?>>
                                                    {{ __('generic.page_product.normal') }}
                                                </option>
                                                <option value="nameasc" <?= isset($_GET['sortby']) && $_GET['sortby'] == "nameasc" ? "selected" : "" ?>>
                                                    {{ __('generic.page_product.name') }} (A - Z)
                                                </option>
                                                <option value="namedesc" <?= isset($_GET['sortby']) && $_GET['sortby'] == "namedesc" ? "selected" : "" ?>>
                                                    {{ __('generic.page_product.name') }} (Z - A)
                                                </option>
                                                <option value="priceasc" <?= isset($_GET['sortby']) && $_GET['sortby'] == "priceasc" ? "selected" : "" ?>>
                                                    {{ __('generic.page_product.price') }} ({{ __('generic.page_product.low') }} &gt; {{ __('generic.page_product.high') }})
                                                </option>
                                                <option value="pricedesc" <?= isset($_GET['sortby']) && $_GET['sortby'] == "pricedesc" ? "selected" : "" ?>>
                                                    {{ __('generic.page_product.price') }} ({{ __('generic.page_product.high') }} &gt; {{ __('generic.page_product.low') }})
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="shop-product-wrap row grid">
                        @foreach ($products as $v)
                            @php 
                                $product = translateContentRecursive($v); 
                            @endphp

                            @include('records.product', ['product' => $product, 'type' => 'grid'])

                        @endforeach
                        </div>
                    </div>
                   
                    <?php echo $products->render('vendor.pagination.bootstrap-4'); ?>

                @else 
                    <p class='mt-10'>{{ __('generic.page_product.no_item') }} !</p>
                @endif
            </div>
            
        </div>
    </div>
</div>
@endsection