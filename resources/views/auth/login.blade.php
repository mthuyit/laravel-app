@extends('layouts.app')

@section('title', __('auth.login'))

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('auth.login')
]])

<div class="login-register-wrapper">
    <div class="container">
        <div class="member-area-from-wrap">
            <div class="row justify-content-md-center">
                <!-- Login Content Start -->
                <div class="col-lg-6">
                    @if (session()->has('success_message'))
                    <div class="alert alert-success">
                        {{ session()->get('success_message') }}
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
                        <h2>{{ __('auth.login') }}</h2>
                        <form action="{{ route('login') }}" method="POST">
                            {{ csrf_field() }}

                            <div class="single-input-item form-group">
                                <input class="form-control" type="email" name="email" value="{{ old('email') }}" placeholder="Email*" required autofocus />
                            </div>
                            <div class="single-input-item form-group">
                                <input class="form-control" type="password" name="password" value="{{ old('password') }}" placeholder="{{ __('auth.password') }}*" required />
                            </div>
                            <div class="single-input-item form-group">
                                <div class="login-reg-form-meta d-flex align-items-center justify-content-between">
                                    <div class="remember-meta">
                                        <div class="custom-control custom-checkbox">
                                            <input id="rememberMe" type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}>
                                            <label class="custom-control-label" for="rememberMe">{{ __('auth.remember_me') }}</label>
                                        </div>
                                    </div>
                                    <div class="spacer"></div>

                                    <a rel="nofollow" href="{{ route('password.request') }}" class="forget-pwd">
                                        {{ __('auth.forgot_password') }}
                                    </a>
                                </div>
                            </div>
                            <div class="single-input-item form-group">
                                <button class="sqr-btn btn btn-danger text-uppercase" type="submit">{{ __('auth.login') }}</button>
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
