@extends('layouts.app')

@section('title', __('auth.reset_password'))

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('auth.reset_password')
]])

<div class="login-register-wrapper">
    <div class="container">
        <div class="member-area-from-wrap">
            <div class="row justify-content-md-center">
                <!-- Login Content Start -->
                <div class="col-lg-6">
                    @if (session()->has('status'))
                    <div class="alert alert-success">
                        {{ session()->get('status') }}
                    </div>
                    @endif @if(count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif

                    <div class="login-reg-form-wrap  pr-lg-50">
                        <h2>{{ __('auth.reset_password') }}</h2>
                        <form class="form-horizontal" method="POST" action="{{ route('password.request') }}">
                            {{ csrf_field() }}
                            <div class="single-input-item form-group">
                                <input class="form-control" type="hidden" name="token" value="{{ $token }}">
                            </div>
                            <div class="single-input-item form-group">
                                <input class="form-control" id="email" type="email" name="email" value="{{ $email }}" placeholder="Email" required autofocus>
                            </div>
                            <div class="single-input-item form-group">
                                <input class="form-control" id="password" type="password" name="password" placeholder="{{ __('auth.password') }}" required>
                            </div>
                            <div class="single-input-item form-group">
                                <input class="form-control" id="password-confirm" type="password" name="password_confirmation" placeholder="{{ __('auth.re_password') }}" required>
                            </div>
                            <div class="single-input-item form-group">
                                <button type="submit" class="sqr-btn btn btn-danger text-uppercase">{{ __('auth.reset_password') }}</button>
                            </div>

                        </form>
                    </div>
                </div>
                <!-- Login Content End -->

                
            </div>
        </div>
    </div>
</div>
<!-- login register wrapper end -->

@endsection



