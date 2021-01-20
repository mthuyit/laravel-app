@extends('layouts.master')

@section('title', __('generic.page_contact.contact'))

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('generic.page_contact.contact')
]])

<!-- contact area start -->

<div class="contact-area pb-34 pb-md-18 pb-sm-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="contact-message">
                    <form action="{{ route('contact.store') }}" method="POST" >
                        {{ csrf_field() }}
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 form-group">
                                <input id="name" name="name" placeholder="{{ __('generic.page_contact.full_name') }} *" type="text" class="form-control"  required="">    
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 form-group">
                                <input id="phone" name="phone" placeholder="{{ __('generic.page_contact.phone') }} *" type="text" class="form-control" required="">   
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 form-group">
                                <input id="email" name="email" placeholder="Email *" type="email" class="form-control" required="">    
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 form-group">
                                <input name="subject" placeholder="{{ __('generic.page_contact.subject') }}" type="text" class="form-control">   
                            </div>
                            <div class="col-12 form-group">
                                <input name="address" placeholder="{{ __('generic.page_contact.address') }}" type="text" class="form-control">   
                            </div>
                            <div class="col-12 form-group">
                                <div class="contact2-textarea text-center">
                                    <textarea placeholder="{{ __('generic.page_contact.message') }}" class="form-control" name="message" ></textarea>     
                                </div>   
                                
                            </div> 
                            <div class="col-12 contact-btn form-group">
                                <button class="btn btn-danger" type="submit">{{ __('generic.page_contact.send') }}</button> 
                            </div> 
                            
                        </div>
                    </form>    
                </div> 
            </div>
            <div class="col-lg-6">
                <div class="contact-info mt-md-28 mt-sm-28">
                    <h1>{{ __('generic.page_contact.contact') }}</h1>
                    {!! site_setting('contact') !!}
                    <ul>
                        <li><i class="fa fa-fax"></i> {{ __('generic.page_contact.address') }} : {{ site_setting('address') }}</li>
                        <li><i class="fa fa-phone"></i> {{ site_setting('email') }}</li>
                        <li><i class="fa fa-envelope-o"></i> {{ site_setting('hotline') }}</li>
                    </ul>
                    <div class="working-time">
                        <h3>{{ __('header.working_time') }}</h3>
                        <p>{{ site_setting('workingtime') }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- contact area end -->

<!-- map area start -->
<div class="map-area-wrapper">
    <div class="container">
       {!! site_setting('map') !!}
    </div>
</div>
<!-- map area end -->
@endsection