@extends('layouts.master')

@section('title', $blog->seo_title)
@section('meta_description', $blog->meta_description)
@section('meta_keywords', $blog->meta_keywords)

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('generic.page_blog.blog') => route('blog.index'),
    $blog->title
]])

<!-- blog main wrapper start -->
<div class="blog-detail-main-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 order-2">
                @include('partials.right')
            </div>
            <div class="col-lg-9 order-1">
                <div class="blog-wrapper-inner" itemscope="" itemtype="https://schema.org/NewsArticle">
                    <meta itemscope="" itemprop="mainEntityOfPage" itemtype="https://schema.org/WebPage" itemid="https://google.com/article">
                    <div itemprop="image" itemscope="" itemtype="https://schema.org/ImageObject">
                        <meta itemprop="url" content="{{ Voyager::image($blog->image) }}">
                        <meta itemprop="width" content="370">
                        <meta itemprop="height" content="220">
                    </div>
                    <meta itemprop="description" content="{{ $blog->description }}">
                    <meta itemprop="url" content="{{ route('blog.detail', $blog->slug) }}">
                    <div itemprop="publisher" itemscope="" itemtype="https://schema.org/Organization">
                        <div itemprop="logo" itemscope="" itemtype="https://schema.org/ImageObject">
                            <meta itemprop="url" content="{{ Voyager::image(site_setting('logo')) }}">
                            <meta itemprop="width" content="166">
                            <meta itemprop="height" content="65">
                        </div>
                        <meta itemprop="name" content="{{ $blog->title }}">
                    </div>
                    <div itemprop="author" itemscope="https://plus.google.com/107648545863805702809" itemtype="https://schema.org/Person">
                        <meta itemprop="name" content="{{ $blog->title }}">
                    </div>

                    <div class="row blog-content-wrap">
                        <!-- start single blog item -->
                        <div class="col-lg-12">
                            <div class="blog-item mb-30">
                                <div class="blog-content">
                                    <div class="blog-details">
                                        <h2 class="blog-heading" itemprop="name headline">{{ $blog->title }}</h2>
                                        <div class="blog-meta">
                                            <span class="post-time" itemprop="datePublished">{{ date("d/m/Y", strtotime($blog->created_at)) }}</span>
                                            <meta itemprop="dateModified" content="{{ date('d/m/Y', strtotime($blog->update_at)) }}">
                                        </div>
                                        <hr>
                                        {!! $blog->body !!}
                                    </div>
                                </div>
                                <div class="blog-sharing mt-34 mt-sm-34">
                                    <h4>{{ __('generic.page_blog.share_this_post') }}:</h4>
                                    <div class="addthis_inline_share_toolbox_t0bb"></div>
                                </div>
                            </div>


                        </div>
                        <!-- end single blog item -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- blog main wrapper end -->
@endsection

@section('extra-js')
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-54bc70ea4098f745"></script>
@endsection