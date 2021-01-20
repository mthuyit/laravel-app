@extends('layouts.master')

@section('title', $page->title)
@section('meta_description', $page->meta_description)
@section('meta_keywords', $page->meta_keywords)

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    $page->title
]])

<!-- about wrapper start -->
<div class="about-us-wrapper pt-4">
  <div class="container">
    <div class="row">
      <!-- About Text Start -->
      <div class="col-lg-6">
        <div class="about-text-wrap">
          {!! $page->body !!}
        </div>
      </div>
      <!-- About Text End -->
      <!-- About Image Start -->
      <div class="col-lg-5 ml-auto">
        <div class="about-image-wrap mt-md-26 mt-sm-26">
          <img class="lazyload" data-src="{{ Voyager::image($page->image) }}" alt="{{$page->title}}">
        </div>
      </div>
      <!-- About Image End -->
    </div>
  </div>
</div>
@endsection