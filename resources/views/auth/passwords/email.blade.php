@extends('layouts.app')

@section('title', __('auth.forgot_password'))

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('auth.forgot_password')
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
                        <h2>{{ __('auth.forgot_password') }}</h2>
                        <form action="{{ route('password.email') }}" method="POST">
                            {{ csrf_field() }}
                            <div class="single-input-item form-group">
                                <input type="email" class="form-control" id="email" name="email" value="{{ old('email') }}" placeholder="Email" required autofocus>
                            </div>
                            <div class="single-input-item">
                                <button class="sqr-btn btn btn-danger text-uppercase" type="submit">{{ __('auth.btn_reset_link') }}</button>
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

