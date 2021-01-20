@extends('layouts.app')

@section('title', __('auth.register'))

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('auth.register')
]])

<!-- login register wrapper start -->
<div class="login-register-wrapper">
    <div class="container">
        <div class="member-area-from-wrap">
            <div class="row justify-content-md-center">

                
                <!-- Register Content Start -->
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
                    
                    <div class="login-reg-form-wrap mt-md-34 mt-sm-34">
                        <h2>{{ __('auth.register') }}</h2>
                        <div class="spacer"></div>

                        <form method="POST" action="{{ route('register') }}">
                            {{ csrf_field() }}

                            <div class="single-input-item form-group">
                                <input  class="form-control" type="text" placeholder="{{ __('auth.full_name') }}*" value="{{ old('name') }}" name="name" required autofocus/>
                            </div>
                            <div class="single-input-item form-group">
                                <input  class="form-control" type="email" placeholder="Email*" value="{{ old('email') }}" name="email" required />
                            </div>
                            <div class="single-input-item form-group">
                                <input  class="form-control" type="text" placeholder="{{ __('auth.phone') }}*" value="{{ old('phone') }}" name="phone" required />
                            </div>
                            <div class="single-input-item form-group">
                                <input  class="form-control" type="text" placeholder="{{ __('auth.address') }}" value="{{ old('address') }}" name="address" />
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="single-input-item form-group">
                                        <input  class="form-control" type="password" placeholder="{{ __('auth.password') }}*" name="password" required />
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="single-input-item form-group">
                                        <input  class="form-control" type="password" placeholder="{{ __('auth.re_password') }}*" name="password_confirmation" required />
                                    </div>
                                </div>
                            </div>
                            <div class="single-input-item form-group">
                                <button class="sqr-btn btn btn-danger text-uppercase" type="submit">{{ __('auth.create_account') }}</button>
                            </div>
                            <div class="already-have-container">
                                <p><strong>{{ __('auth.already_account') }}</strong></p>
                                <a href="{{ route('login') }}">{{ __('auth.login') }}</a>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- Register Content End -->
            </div>
        </div>
    </div>
</div>
<!-- login register wrapper end -->

@endsection
