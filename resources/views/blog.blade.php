@extends('layouts.master')

@section('title', __('generic.page_blog.blog'))

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('generic.page_blog.blog')
]])

<!-- blog main wrapper start -->
<div class="blog-main-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="blog-wrapper-inner">
                    <div class="row">
                       @foreach ($blogs as $v)
                        
                        <!-- start single blog item -->
                        <div class="col-lg-4 col-md-6">
                            <div class="blog-item mb-26">
                                <div class="blog-thumb img-full fix">
                                    <a href="{{ route('blog.detail', $v->slug) }}">
                                        <img src="{{ Voyager::image($v->thumbnail('cropped')) }}" alt="{{ $v->title }}">
                                    </a>
                                </div>
                                <div class="blog-content">
                                    <h3><a href="{{ route('blog.detail', $v->slug) }}">{{ $v->title }}</a></h3>
                                    <div class="blog-meta">
                                        <span class="posted-author">{{ __('generic.page_blog.by') }}: admin</span>
                                        <span class="post-date">{{ date("d/m/Y", strtotime($v->created_at)) }}</span>
                                    </div>
                                    <p>{{ $v->desciption }}</p>
                                </div>
                                <a href="{{ route('blog.detail', $v->slug) }}">{{ __('generic.page_blog.read_more') }} <i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                        <!-- end single blog item -->
                        @endforeach

                        </div>
                    </div>

                    <?php echo $blogs->render('vendor.pagination.default'); ?>
                    

                </div>
            </div>
        </div>
    </div>
    <!-- blog main wrapper end--> 
    @endsection