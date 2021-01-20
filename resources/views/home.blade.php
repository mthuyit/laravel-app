@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="slider-wrapper-area">
                <div class="hero-slider-active hero__1 slick-dot-style hero-dot">
                    @foreach(translateContentRecursive($sliders) as $v)
                    <div class="single-slider" style="background-image: url({{  Voyager::image($v->thumbnail('cropped')) }} )">
                        <div class="container p-0">
                            <div class="slider-main-content">
                                <div class="slider-content-img">
                                    <img class="lazyload" data-src="{{ asset('img/slider/slider11_lable1.png') }}" alt="Slider image">
                                    <img class="lazyload" data-src="{{ asset('img/slider/slider11_lable2.png') }}" alt="Slider image">
                                    <img class="lazyload" data-src="{{ asset('img/slider/slider11_lable3.png') }}" alt="Slider image">
                                </div>
                                <div class="slider-text">
                                    <div class="slider-label">
                                        <img class="lazyload" data-src="{{ asset('img/slider/slider11_lable4.png') }}" alt="Slider image">
                                    </div>
                                    <h2>{{ $v->title }}</h2>
                                    <p>{{ $v->description }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</div>

<div class="page-main-wrapper mt-34">
    <div class="container">
        <div class="category-tab-area mb-30">
            <div class="category-tab">
                <ul class="nav">
                    <li>
                        <i class="fa fa-flask"></i>
                    </li>
                    <li>
                        <a class="active" data-toggle="tab" href="#tab_one">{{ __('generic.page_home.featured') }}</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#tab_two">{{ __('generic.page_home.new') }}</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#tab_three">{{ __('generic.page_home.hot') }}</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-content pb-md-20 pb-sm-20">
            <div class="tab-pane fade show active" id="tab_one">

                <div class="row">
                    @foreach($products_feature as $product)
                        @include('records.product', ['product' => $product, 'type' => 'col'])
                    @endforeach
                </div>

            </div>
            <div class="tab-pane fade" id="tab_two">

                <div class="row">
                    @foreach($products_new as $product)
                        @include('records.product', ['product' => $product, 'type' => 'col'])
                    @endforeach
                </div>

            </div>
            <div class="tab-pane fade" id="tab_three">

                <div class="row">
                    @foreach($products_hot as $product)
                        @include('records.product', ['product' => $product, 'type' => 'col'])
                    @endforeach
                </div>

            </div>
        </div>
        
    </div>
</div>

<h1 class="invisible">{{ site_setting('seo_title') }}</h1>
@endsection
