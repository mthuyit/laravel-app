@extends('layouts.master')

@section('title', __('generic.notification'))

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('generic.notification')
]])

<div class="thankyou-main-wrapper">
    <div class="container">
    
        @if (session()->has('success_message'))
            <div class="alert alert-success">
                <i class="fa fa-chevron-circle-down" aria-hidden="true"></i>
                {{ session()->get('success_message') }}
            </div>
        @endif

        @if (session()->has('error_message'))
            <div class="alert alert-danger">
                <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                {{ session()->get('error_message') }}
            </div>
        @endif
        
        <div>
            <a href="{{ url('/') }}" class="sqr-btn btn btn-danger text-uppercase">{{ __('generic.home') }}</a>
        </div>
        
    </div>
</div>
@endsection
