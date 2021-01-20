@extends('layouts.master')

@section('title', __('auth.my_account'))

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('auth.my_account')
]])

<!-- my account wrapper start -->
<div class="my-account-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                @if (session()->has('success_message'))
                    <div class="alert alert-success">
                        {{ session()->get('success_message') }}
                    </div>
                @endif

                @if(count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            
                <!-- My Account Page Start -->
                <div class="myaccount-page-wrapper">
                    <!-- My Account Tab Menu Start -->
                    <div class="row">
                        <div class="col-lg-3 col-md-4">
                            <div class="myaccount-tab-menu nav" role="tablist">
                                <a rel="nofollow" class="active" href="#account-info" data-toggle="tab">
                                    <i class="fa fa-user"></i> {{ __('auth.account_details') }}
                                </a>
                                <a rel="nofollow" href="#orders" data-toggle="tab">
                                    <i class="fa fa-cart-arrow-down"></i> {{ __('generic.orders') }}
                                </a>
                                <a rel="nofollow" href="#notification" data-toggle="tab">
                                    <i class="fa fa-bell-o"></i> {{ __('auth.notification') }} ({{ auth()->user()->unreadNotifications->count() }})</a>
                                <a rel="nofollow" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                    <i class="fa fa-sign-out"></i> {{ __('auth.logout') }}
                                </a>
                            </div>
                        </div>
                        <!-- My Account Tab Menu End -->
                        
                        <!-- My Account Tab Content Start -->
                        <div class="col-lg-9 col-md-8">
                            <div class="tab-content" id="myaccountContent">
                                
                                
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="orders" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>{{ __('generic.orders') }}</h3>
                                        @if (count($orders) > 0)
                                        <div class="myaccount-table table-responsive text-center">
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th style="width: 40px;"></th>
                                                        <th>STT</th>
                                                        <th>{{ __('generic.page_profile.order_code') }}</th>
                                                        <th>{{ __('generic.page_profile.order_date') }}</th>
                                                        <th>{{ __('generic.page_profile.status') }}</th>
                                                        <th>{{ __('generic.page_profile.payment_method') }}</th>
                                                        <th>{{ __('generic.page_cart.total') }}</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                   
                                                        @foreach ($orders as $key => $v)
                                                        @php 
                                                            $products =  $v->products;
                                                        @endphp
                                                            <tr>
                                                                <td class="details-control fa"></td>
                                                                <td>{{ $key+1 }}</td>
                                                                <td>{{ $v->order_code }}</td>
                                                                <td>{{ $v->created_at }}</td>
                                                                <td class="
                                                                    @if($v->status == 0) text-danger @elseif($v->status == 4) text-success @else text-info @endif  
                                                                ">
                                                                    {{ $status->options->{$v->status} }}
                                                                </td>
                                                                <td>{{ $payment_method->options->{$v->payment_method} }}</td>
                                                                <td>{{ presentPrice($v->total) }}</td>
                                                            </tr>
                                                            <tr class="d-none">
                                                                <td colspan="2"></td>
                                                                <td colspan="5">
                                                                <table cellpadding="0" cellspacing="0" width="100%">
                                                                <thead>
                                                                    <tr>
                                                                        <th>{{ __('generic.page_profile.fullname_receive') }}</th>
                                                                        <th colspan="3">{{ $v->fullname }}</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>{{ __('generic.page_profile.address_receive') }}</th>
                                                                        <th colspan="3">{{ $v->address }}</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>{{ __('generic.page_profile.phone_receive') }}</th>
                                                                        <th colspan="3">{{ $v->phone }}</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>{{ __('generic.page_checkout.note') }}</th>
                                                                        <th colspan="3">{{ $v->note }}</th>
                                                                    </tr>
                                                                </thead> 
                                                                <tfoot>
                                                                <tbody>
                                                                    <tr>
                                                                        <th>{{ __('generic.page_cart.product') }}</th>
                                                                        <th>{{ __('generic.page_cart.price') }}</th>
                                                                        <th>{{ __('generic.page_cart.quantity') }}</th>
                                                                        <th>{{ __('generic.page_cart.total') }}</th>
                                                                    </tr>
                                                                    @foreach($products as $p)
                                                                        <tr>
                                                                            <td>
                                                                                <a href="{{ route('product.detail', $p->getTranslatedAttribute('slug')) }}">
                                                                                    {{ $p->getTranslatedAttribute('title') }}
                                                                                </a>
                                                                            </td>
                                                                            <td>{{ $p->presentPrice() }}</td>
                                                                            <td>{{ $p->pivot->quantity }}</td>
                                                                            <td>{{ presentPrice($p->price * $p->pivot->quantity) }}</td>
                                                                        </tr>
                                                                    @endforeach
                                                                </tbody>
                                                            </table>
                                                                </td>
                                                            </tr>
                                                            
                                                        @endforeach
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                        @else
                                            {{ __('auth.no_order') }}
                                        @endif
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                                
                                
                                
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade show active" id="account-info" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>{{ __('auth.account_details') }}</h3>
                                        <div class="account-details-form">
                                            <form action="{{ route('users.update') }}" method="POST">
                                                @method('patch')
                                                @csrf
                                                <div class="single-input-item form-group">
                                                    <label for="display-name" class="required">{{ __('auth.full_name') }}</label>
                                                    <input class="form-control" type="text" name="name" value="{{ old('name', $user->name) }}" placeholder="{{ __('auth.full_name') }}" required />
                                                </div>
                                                <div class="single-input-item form-group">
                                                    <label for="phone" class="required">{{ __('auth.phone') }}</label>
                                                    <input class="form-control" type="phone" name="phone" value="{{ old('phone', $user->phone) }}" placeholder="{{ __('auth.phone') }}"  required/>
                                                </div>
                                                <div class="single-input-item form-group">
                                                    <label for="email" class="required">Email</label>
                                                    <input class="form-control" type="email" name="email" value="{{ old('email', $user->email) }}" placeholder="Emails" required />
                                                </div>
                                                <div class="single-input-item form-group">
                                                    <label for="address">{{ __('auth.address') }}</label>
                                                    <input class="form-control" type="address" name="address" value="{{ old('address', $user->address) }}" placeholder="{{ __('auth.address') }}" />
                                                </div>

                                                <fieldset>
                                                    <legend>{{ __('auth.password_change') }}</legend>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item form-group">
                                                                <label for="new-pwd">{{ __('auth.password') }}</label>
                                                                <input class="form-control" type="password" name="password" placeholder="{{ __('auth.password') }}">
                                                                <div>{{ __('auth.leave_change_password') }}</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item form-group">
                                                                <label for="confirm-pwd">{{ __('auth.re_password') }}</label>
                                                                <input class="form-control" type="password" name="password_confirmation" placeholder="{{ __('auth.re_password') }}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="single-input-item form-group">
                                                    <button type="submit" class="check-btn sqr-btn btn btn-danger text-uppercase">{{ __('auth.update_account') }}</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div> <!-- Single Tab Content End -->

                                <div class="tab-pane fade show active" id="notification" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>{{ __('auth.notification') }}</h3>
                                        
                                        <div class="notification-table table-responsive">
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th>STT</th>
                                                        <th>{{ __('generic.page_profile.notification_time') }}</th>
                                                        <th>{{ __('auth.notification') }}</th>
                                                        <th>{{ __('generic.page_profile.notification_mark') }}</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                   
                                                    @foreach (auth()->user()->notifications as $key=>$notification)
                                                        <tr>
                                                            <td>{{ $key+1 }}</td>
                                                            <td>{{ $notification->created_at }}</td>
                                                            <td>
                                                                <h4>{{ $notification->data['title'] }}</h4>
                                                                {{ $notification->data['description'] }}
                                                            </td>
                                                            <td class="mark text-danger">
                                                                <div data-id="{{ $notification->id }}" class="@if($notification->read_at) read @endif">
                                                                    <i class="fa fa-eye"></i>
                                                                    <span>
                                                                        {{ $notification->read_at ? __('auth.notification_read') : __('auth.notification_no_read') }}
                                                                    </span>
                                                                </div>
                                                            </td>
                                                            
                                                        </tr>
                                                    @endforeach
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                </div>

                            </div>
                        </div> <!-- My Account Tab Content End -->
                    </div>
                </div> <!-- My Account Page End -->
            </div>
        </div>
    </div>
</div>
<!-- my account wrapper end -->


@endsection

@section('extra-js')
    <script>
        $(function(){
            $('#orders tbody').on('click', 'td.details-control', function () {
                var row = $(this).closest('tr');
                var next_row = row.next();

                if (row.hasClass('shown')) {
                    next_row.addClass('d-none');
                    row.removeClass('shown');
                }
                else {
                    next_row.removeClass('d-none');
                    row.addClass('shown');
                }
            });

            $('.notification-table').on('click', '.mark div', function () {
                var that = $(this);

                axios.post("{{ route('ajax.mark_as_read') }}", {
                        id: that.attr("data-id")
                    })
                    .then(function (response) {
                        
                        if(that.hasClass('read')){
                            that.find('span').html("{{ __('auth.notification_no_read') }}");
                        }else{
                            that.find('span').html("{{ __('auth.notification_read') }}");
                        }
                        that.toggleClass('read');
                    })
                    .catch(function (error) {
                        toastr.info(error);
                    });
            });
        });
    </script>
@endsection