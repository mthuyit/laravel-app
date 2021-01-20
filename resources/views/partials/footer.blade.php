<!-- brand area start -->
<div class="brand-area pt-26 pb-30">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title mb-30">
                    <div class="title-icon">
                        <i class="fa fa-crop"></i>
                    </div>
                    <h3>{{ __('footer.brand') }}</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="brand-active slick-padding slick-arrow-style">
                        @php 
                            $brands = App\Models\Brand::select('image', 'links')->where('active', true)->get();
                        @endphp    
                        @foreach ($brands as $v)
                        <div class="brand-item text-center">
                            <a href="{{ $v->links }}" target="_blank"><img class="lazyload" data-src="{{ Voyager::image($v->thumbnail('cropped')) }}" alt="Brand"></a>
                        </div>
                        @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
<!-- brand area end -->

<!-- footer top start -->
<div class="footer-top bg-black pt-14 pb-14">
    <div class="container">
        <div class="footer-top-wrapper">
            <div class="newsletter__wrap">
                <div class="newsletter__title">
                    <div class="newsletter__icon">
                        <i class="fa fa-envelope"></i>
                    </div>
                    <div class="newsletter__content">
                        <h3>{{ __('footer.newletter') }}</h3>
                        <p>{{ __('footer.newletter_sub') }}</p>
                    </div>
                </div>
                <div class="newsletter__box">
                    <form id="mc-form" action="{{ route('ajax.newsletter') }}" method="POST" >
                        {{ csrf_field() }}
                        <input type="email" name="email" id="mc-email" autocomplete="off" placeholder="Email" required="">
                        <button id="mc-submit" type="submit">{{ __('footer.subscribe') }}</button>
                    </form>
                </div>
                <!-- mailchimp-alerts Start -->
                <div class="mailchimp-alerts">
                    <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                    <div class="mailchimp-success"></div><!-- mailchimp-success end -->
                    <div class="mailchimp-error"></div><!-- mailchimp-error end -->
                </div>
                <!-- mailchimp-alerts end -->
            </div>
            <div class="social-icons">
                {{ menu('social', 'partials.menus.social') }}
            </div>
        </div>
    </div>
</div>
<!-- footer top end -->


<!-- footer main start -->
<div class="footer-widget-area pt-40 pb-38 pb-sm-4 pt-sm-30">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="footer-widget mb-sm-26">
                    <div class="widget-title mb-10 mb-sm-6">
                        <h4>{{ __('footer.contact_us') }}</h4>
                    </div>
                    <div class="widget-body">
                        <ul class="location">
                            <li><i class="fa fa-envelope"></i>{{ site_setting('email') }}</li>
                            <li><i class="fa fa-phone"></i>{{ site_setting('hotline') }}</li>
                            <li><i class="fa fa-map-marker"></i>{{ site_setting('address') }}</li>
                        </ul>
                        <a class="map-btn" href="{{ route('contact.index') }}">{{ __('footer.open_map') }}</a>
                    </div>
                </div> <!-- single widget end -->
            </div> <!-- single widget column end -->
            <div class="col-md-3 col-sm-6">
                <div class="footer-widget mb-sm-26">
                    <div class="widget-title mb-10 mb-sm-6">
                        <h4>{{ __('footer.quick_link') }}</h4>
                    </div>
                    <div class="widget-body">
                        {{ menu('footer', 'partials.menus.footer') }}
                    </div>
                </div> <!-- single widget end -->
            </div> <!-- single widget column end -->
            <div class="col-md-3 col-sm-6">
                <div class="footer-widget mb-sm-26">
                    <div class="widget-title mb-10 mb-sm-6">
                        <h4>{{ __('footer.category') }}</h4>
                    </div>
                    <div class="widget-body">
                        <ul>
                            @php 
                                $footer_lists = App\Models\ProductList::select('slug', 'title', 'id')->where('active', true)->where('footer', true)->get();
                            @endphp
                            @foreach(translateContentRecursive($footer_lists) as $v)
                                <li><a href="{{ route('product.list', $v->slug) }}">{{ $v->title }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div> <!-- single widget end -->
            </div> <!-- single widget column end -->
            <div class="col-md-3 col-sm-6">
                <div class="footer-widget mb-sm-26">
                    <div class="widget-title mb-10 mb-sm-6">
                        <h4>Tags</h4>
                    </div>
                    <div class="widget-body">
                        <ul>
                            @php 
                                $tags = App\Models\Tag::select('slug', 'title', 'id')->where('active', true)->get();
                            @endphp
                            @foreach(translateContentRecursive($tags) as $v)
                                <li><a href="{{ route('tags.index', $v->slug) }}">{{ $v->title }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div> <!-- single widget end -->
            </div> <!-- single widget column end -->
        </div>
    </div>
</div>
<!-- footer main end -->

<!-- footer bootom start -->
<div class="footer-bottom-area bg-gray pt-20 pb-20">
    <div class="container">
        <div class="footer-bottom-wrap">
            <div class="copyright-text">
                <p>{{ site_setting('copyright') }}</p>
            </div>
            <div class="payment-method-img">
                <img class="lazyload" data-src="{{ asset('img/payment.png') }}" alt="">
            </div>
        </div>
    </div>
</div>
<!-- footer bootom end -->