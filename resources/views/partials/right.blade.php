@php
    $featureds = \App\Product::where('active', true)->where('featured', true)->get();
    $tags = \App\Tag::where('active', true)->get();
@endphp
<div class="shop-sidebar-wrap fix mt-md-22 mt-sm-22">
    <!-- featured category start -->
    <div class="sidebar-widget mb-22">
        <div class="section-title-2 d-flex justify-content-between mb-28">
            <h3>{{ __('generic.page_home.featured') }}</h3>
            <div class="category-append"></div>
        </div> <!-- section title end -->
        <div class="category-carousel-active row" data-row="4">
            @foreach (translateContentRecursive($featureds) as $v)

            <div class="col">
                <div class="category-item">
                    <div class="category-thumb">
                        <a href="{{ route('product.detail', $v->slug) }}">
                            <img class="lazyload" data-src="{{ Voyager::image($v->thumbnail('cropped')) }}" alt="{{ $v->title }}">
                        </a>
                    </div>
                    <div class="category-content">
                        <h3><a href="{{ route('product.detail', $v->slug) }}">{{ $v->title }}</a></h3>
                        <div class="price-box">
                            <div class="regular-price">
                                {{ $v->presentPrice() }}
                            </div>
                            @if ($v->oldprice > 0)
                            <div class="old-price">
                                <del>{{ $v->getOldPrice() }}</del>
                            </div>
                            @endif

                        </div>
                        <div class="ratings">

                        </div>
                    </div>
                </div> <!-- end single item -->
            </div> <!-- end single item column -->

            @endforeach

        </div>
    </div>
    <!-- featured category end -->

    <!-- product tag start -->
    <div class="sidebar-widget mb-22">
        <div class="sidebar-title mb-20">
            <h3>tag</h3>
        </div>
        <div class="sidebar-widget-body">
            <div class="product-tag">
                @foreach (translateContentRecursive($tags) as $v)
                <a href="{{ route('tags.index', $v->slug) }}">{{ $v->title }}</a>
                @endforeach
            </div>
        </div>
    </div>
    <!-- product tag end -->

</div>