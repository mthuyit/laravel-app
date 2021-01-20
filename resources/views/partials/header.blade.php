<!-- header top start -->
<div class="header-top-area bg-gray text-center text-md-left">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-5">
                <div class="header-call-action">
                    <a href="mailto: {{ site_setting('email') }}">
                        <i class="fa fa-envelope"></i>{{ site_setting('email') }}
                    </a>
                    <a href="#">
                        <i class="fa fa-phone"></i>{{ site_setting('hotline') }}
                    </a>
                </div>
            </div>
            <div class="col-lg-6 col-md-7">
                <div class="header-top-right float-md-right float-none">
                    <nav>
                        @include('partials.menus.main-right')
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- header top end -->

<!-- header middle start -->
<div class="header-middle-area pt-20 pb-20">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-3">
                <div class="brand-logo">
                    <a href="">
                        <img class="lazyload" data-src="{{ Voyager::image(site_setting()->thumbnail('cropped', 'logo')) }}" alt="Logo">
                    </a>
                </div>
            </div> <!-- end logo area -->
            <div class="col-lg-9">
                <div class="header-middle-right">
                    <div class="header-middle-shipping mb-20">
                        <div class="single-block-shipping">
                            <div class="shipping-icon">
                                <i class="fa fa-clock-o"></i>
                            </div>
                            <div class="shipping-content">
                                <h5>{{ __('header.working_time') }}</h5>
                                <span>{{ site_setting('workingtime') }}</span>
                            </div>
                        </div> <!-- end single shipping -->
                        <div class="single-block-shipping">
                            <div class="shipping-icon">
                                <i class="fa fa-truck"></i>
                            </div>
                            <div class="shipping-content">
                                <h5>{{ __('header.free_shiping') }}</h5>
                                <span>{{ site_setting('freeship') }}</span>
                            </div>
                        </div> <!-- end single shipping -->
                        <div class="single-block-shipping">
                            <div class="shipping-icon">
                                <i class="fa fa-money"></i>
                            </div>
                            <div class="shipping-content">
                                <h5>{{ __('header.money_back') }} 100%</h5>
                                <span>{{ site_setting('moneyback') }}</span>
                            </div>
                        </div> <!-- end single shipping -->
                    </div>
                    <div class="header-middle-block">
                        <div class="search-box">
                            <form action="{{ route('search.index') }}" method="GET">
                                <input type="text" placeholder="{{ __('header.search') }}..." name="query" id="query" value="{{ request()->input('query') }}" required>
                                <button class="search-btn" type="submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                        <div class="header-mini-cart">
                            <div class="mini-cart-btn">
                                <i class="fa fa-shopping-cart"></i>
                                <span class="cart-notification">{{ Cart::count() }}</span>
                            </div>
                            <div class="cart-total-price">
                                <span>{{ __('header.total') }}</span>
                                <label>{{ presentPrice(Cart::subtotal()) }}</label> 
                            </div>
                            
                            <ul class="cart-list">
                                @if (Cart::count() > 0)
                                    @foreach (Cart::content() as $item)
                                        <li>
                                            <div class="cart-img">
                                                <a href="{{ route('product.detail', $item->model->getTranslatedAttribute('slug')) }}">
                                                    <img class="img-fluid" src="{{ Voyager::image($item->model->thumbnail('cropped')) }}" alt="{{ $item->model->getTranslatedAttribute('title') }}">
                                                </a>
                                            </div>
                                            <div class="cart-info">
                                                <h3>
                                                    <a href="{{ route('product.detail', $item->model->getTranslatedAttribute('slug')) }}">
                                                        {{ $item->model->getTranslatedAttribute('title') }}
                                                    </a>
                                                </h3>
                                                <b class="qty">{{ __('header.qty') }}: {{ $item->qty }}</b>
                                                <span>{{ $item->model->presentPrice() }}</span>
                                            </div>
                                        </li>
                                    @endforeach
                                    <li class="mini-cart-price">
                                        <span class="subtotal">{{ __('header.total') }} : </span>
                                        <span class="subtotal-price">{{ presentPrice(Cart::subtotal()) }}</span>
                                    </li>
                                    <li class="checkout-btn">
                                        <a rel="nofollow" href="{{ route('cart.index') }}">{{ __('header.view_cart') }}</a>
                                    </li>
                                @endif
                            </ul>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- header middle end -->

<!-- main menu area start -->
<div class="main-header-wrapper bdr-bottom1">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="main-header-inner">
                    <div class="category-toggle-wrap">
                        <div class="category-toggle">
                            {{ __('header.category') }}
                            <div class="cat-icon">
                                <i class="fa fa-angle-down"></i>
                            </div>
                        </div>
                        <nav class="category-menu @if(Route::current()->getName() == 'home') hm-1 @endif">
                            <ul>
                            @php 
                                $product_lists = App\Models\ProductList::select('slug', 'title', 'id', 'icon')->where('active', true)->get();
                            @endphp
                            @foreach (translateContentRecursive($product_lists) as $list)
                                @php
                                    $product_cats = App\Models\ProductCat::select('slug', 'title', 'id')->where('active',true)->where('id_list', $list->id)->get();
                                    $issetcat = count($product_cats) > 0;
                                @endphp
                                <li @if($issetcat) class='menu-item-has-children' @endif>
                                    <a href="{{ route('product.list', $list->slug) }}">
                                        <i class="fa {{ $list->icon }}"></i>
                                        {{ $list->title }}
                                    </a>
                                    @if($issetcat)
                                    <ul class="category-mega-menu">
                                        @foreach (translateContentRecursive($product_cats) as $cat)
                                        @php
                                            $product_items = App\Models\ProductItem::select('slug', 'title', 'id')->where('active',true)->where('id_cat', $cat->id)->get();
                                            $issetitem = count($product_items) > 0;
                                        @endphp
                                        <li><a href="{{ route('product.cat', ['list' => $list->slug, 'cat' => $cat->slug]) }}">{{ $cat->title }}</a>
                                            @if($issetitem)
                                            <ul>
                                                @foreach (translateContentRecursive($product_items) as $item)
                                                <li><a href="{{ route('product.item', ['list' => $list->slug, 'cat' => $cat->slug, 'item' => $item->slug]) }}">{{ $item->title }}</a></li>
                                                @endforeach
                                            </ul>
                                            @endif
                                        </li>
                                        @endforeach
                                    </ul>
                                    @endif
                                </li>
                                @endforeach
                            </ul>
                        </nav>
                    </div>
                    <div class="main-menu">
                        <div class="menu-tab">
                            <div id="one"></div>
                            <div id="two"></div>
                            <div id="three"></div>
                        </div>

                        <nav class="menu-mobile">
                            {{ menu('main', 'partials.menus.main') }} 
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- main menu area end -->