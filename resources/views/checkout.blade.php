@extends('layouts.master')

@section('title', __('header.checkout'))

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('header.checkout')
]])

<!-- checkout main wrapper start -->
<div class="checkout-page-wrapper">
    <div class="container">
        @if (session()->has('success_message'))
            <div class="spacer"></div>
            <div class="alert alert-success">
                {{ session()->get('success_message') }}
            </div>
        @endif

        @if(count($errors) > 0)
            <div class="spacer"></div>
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{!! $error !!}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form action="{{ route('checkout.store') }}" method="POST" id="payment-form">
            {{ csrf_field() }}
            <div class="row">
                <!-- Checkout Billing Details -->
                <div class="col-lg-6">
                    <div class="checkout-billing-details-wrap">
                        <h2>{{ __('generic.page_checkout.billing_details') }}</h2>
                        <div class="billing-form-wrap">
                            
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="single-input-item form-group">
                                            <label for="name" class="required">{{ __('generic.page_contact.full_name') }}</label>
                                            <input type="text" class="form-control" id="name" name="name" value="{{ old('name', auth()->user()->name) }}" placeholder="{{ __('generic.page_contact.full_name') }}" required />
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="single-input-item form-group">
                                            <label for="phone" class="required">{{ __('generic.page_contact.phone') }}</label>
                                            <input type="text" class="form-control" id="phone" name="phone" placeholder="{{ __('generic.page_contact.phone') }}" value="{{ old('phone', auth()->user()->phone) }}"  required />
                                        </div>
                                    </div>
                                </div>

                                <div class="single-input-item form-group"> 
                                    <label for="email" class="required">Email</label>
                                    @if (auth()->user())
                                        <input type="email" class="form-control" id="email" name="email" value="{{ auth()->user()->email }}" readonly>
                                    @else
                                        <input type="email" class="form-control" id="email" name="email" value="{{ old('email') }}" required>
                                    @endif
                                </div>

                                <div class="single-input-item form-group">
                                    <label for="address" class="required">{{ __('generic.page_contact.address') }}</label>
                                    <input type="text" class="form-control" id="address" name="address" placeholder="{{ __('generic.page_contact.address') }}" value="{{ old('address', auth()->user()->address) }}" required />
                                </div>


                                <div class="single-input-item form-group">
                                    <label for="note">{{ __('generic.page_checkout.note') }}</label>
                                    <textarea name="note" class="form-control" id="note"  name="note" cols="30" rows="3" placeholder="{{ __('generic.page_checkout.note') }}"></textarea>
                                </div>
                            
                        </div>
                    </div>
                </div>

                <!-- Order Summary Details -->
                <div class="col-lg-6">
                    <div class="order-summary-details mt-md-26 mt-sm-26">
                        <h2>{{ __('generic.page_checkout.order_summary') }}</h2>
                        <div class="order-summary-content mb-sm-4">
                            <!-- Order Summary Table -->
                            <div class="order-summary-table table-responsive text-center">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>{{ __('generic.page_cart.product') }}</th>
                                            <th>{{ __('generic.page_cart.total') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach (Cart::content() as $item)
                                            <tr>
                                                <td class="text-left">
                                                    <img class="img-fluid" src="{{ Voyager::image($item->model->thumbnail('cropped')) }}" alt="{{ $item->model->getTranslatedAttribute('title') }}">
                                                    <a href="{{ route('product.detail', $item->model->getTranslatedAttribute('slug')) }}">{{ $item->model->getTranslatedAttribute('title') }} <strong> × {{ $item->qty }}</strong></a>
                                                </td>
                                                <td>{{ $item->model->presentPrice() }}</td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td>{{ __('generic.page_cart.total') }}</td>
                                                <td><strong class="subtotal-price">{{ presentPrice(Cart::subtotal()) }}</strong></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>

                            </div>
                            <div class="order-payment-method">
                                <div class="single-payment-method show">
                                    <div class="payment-method-name">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="cashon" name="payment_method" value="cash" class="custom-control-input" checked="">
                                            <label class="custom-control-label" for="cashon">Thanh toán khi nhận hàng</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-payment-method">
                                    <div class="payment-method-name">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="directbank" name="payment_method" value="nganluong" class="custom-control-input">
                                            <label class="custom-control-label" for="directbank">Thanh toán trực tuyến qua NgânLượng.vn</label>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>

                        </div>
                        <div class="cart-update-option d-block d-md-flex justify-content-between">
                            <a href="{{ route('product.index') }}" class="sqr-btn btn btn-danger text-uppercase">{{ __('generic.page_cart.continue_shopping') }}</a>
                            <div class="cart-update mt-sm-16">
                                <button type="submit" class="sqr-btn btn btn-danger text-uppercase">{{ __('header.checkout') }}</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- checkout main wrapper end -->

@endsection

