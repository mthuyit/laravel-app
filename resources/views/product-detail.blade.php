@extends('layouts.master')

@section('title', $product->title)
@section('meta_description', $product->meta_description)
@section('meta_keywords', $product->meta_keywords)

@section('images')
    <meta property="og:image" content="{{ Voyager::image($product->image) }}" />
 
    @php
        $images = json_decode($product->images);
    @endphp
    @foreach($images as $image)
        <meta property="og:image" content="{{ Voyager::image($image) }}" />
    @endforeach
@endsection

@section('content')

    @if (isset($product->item))
        @include('components.breadcrumbs', ['breadcrumbs' => [
            $product->list->title => route('product.list', $product->list->slug),
            $product->cat->title => route('product.cat', ['list' => $product->list->slug, 'cat' => $product->cat->slug]),
            $product->item->title => route('product.item', ['list' => $product->list->slug, 'cat' => $product->cat->slug, 'item' => $product->item->slug]),
            $product->title
        ]]) 
    @elseif (isset($product->cat))
        @include('components.breadcrumbs', ['breadcrumbs' => [
            $product->list->title => route('product.list', $product->list->slug),
            $product->cat->title => route('product.cat', ['list' => $product->list->slug, 'cat' => $product->cat->slug]),
            $product->title
        ]])
    @elseif (isset($product->list))
        @include('components.breadcrumbs', ['breadcrumbs' => [
            $product->list->title => route('product.list', $product->list->slug),
            $product->title
        ]])
    @endif

<!-- product details wrapper start -->
<div class="product-details-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <!-- product details inner end -->
                <div class="product-details-inner" itemscope itemtype="https://schema.org/Product">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-large-slider mb-20 slick-arrow-style_2">
                                <div class="pro-large-img img-zoom" id="img1">
                                    <img itemprop="image" src="{{ Voyager::image($product->image) }}" alt="{{ $product->title }}" />
                                </div>
                                @php
                                $i = 2;
                                $images = json_decode($product->images);
                                @endphp
                                @foreach($images as $image)
                                <div class="pro-large-img img-zoom" id="img{{ $i }}">
                                    <img class="lazyload" data-src="{{ Voyager::image($image) }}" alt="{{ $product->title }}" />
                                </div>
                                @php $i++; @endphp
                                @endforeach
                            </div>
                            <div class="pro-nav slick-padding2 slick-arrow-style_2">
                                <div class="pro-nav-thumb">
                                    <img class="lazyload" data-src="{{ Voyager::image($product->thumbnail('cropped')) }}" alt="{{ $product->title }}" />
                                </div>
                                @foreach($images as $image)
                                <div class="pro-nav-thumb">
                                    <img class="lazyload" data-src="{{ Voyager::image($product->getThumbnail($image, 'cropped')) }}" alt="{{ $product->title }}" />
                                </div>
                                @endforeach
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-details-des mt-md-34 mt-sm-34">
                                <h2 itemprop="name">{{ $product->title }}</h2>
                                <div class="ratings" itemprop="aggregateRating" itemscope="" itemtype="https://schema.org/AggregateRating">
                                    <span itemprop="ratingValue">{{ $ratings->get('rating_avg') }}</span>
                                    <span class="good"><i class="fa fa-star"></i></span><span class="good"><i class="fa fa-star"></i></span><span class="good"><i class="fa fa-star"></i></span><span class="good"><i class="fa fa-star"></i></span><span class="good"><i class="fa fa-star"></i></span>                                        <div class="pro-review">
                                        <span>
                                            <span itemprop="ratingCount">{{ count($ratings->get('rating_comment')) }}</span> {{ __('generic.page_product_detail.review') }}
                                        </span>
                                    </div>
                                </div>
                                <div class="availability mt-10">
                                    <h5>{{ __('generic.page_product_detail.availability') }}:</h5>
                                    <span>1 {{ __('generic.page_product_detail.in_stock') }}</span>
                                </div>
                                <div class="pricebox" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
                                    <span class="regular-price">{{ $product->presentPrice()}}</span>
                                    <meta itemprop="price" content="{{ $product->price}}" />
                                    <meta itemprop="priceCurrency" content="VND" />
                                    <meta itemprop="url" content="{{ route('product.detail', ['slug' => $product->slug]) }}" />
                                    <meta itemprop="availability" content="https://schema.org/InStock" />
                                </div>

                                <div itemprop="description">{!! $product->description !!}</div>

                                
                                <form action="{{ route('cart.store', $product) }}" method="POST" class="quantity-cart-box d-flex align-items-center">
                                    {{ csrf_field() }}
                                    <div class="quantity">
                                        <div class="pro-qty"><input type="text" name="qty" value="1" onkeypress="return isNumberKey(event)"></div>
                                    </div>
                                    <div class="action_link">
                                        <button type="submit" class="buy-btn btn btn-danger">{{ __('generic.page_product_detail.add_to_cart') }} <i class="fa fa-shopping-cart"></i></button>
                                    </div>
                                </form>
                                
                                <div class="share-icon mt-20">
                                    <div class="addthis_inline_share_toolbox_t0bb"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- product details inner end -->

                <!-- product details reviews start -->
                <div class="product-details-reviews mt-34">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product-review-info">
                                <ul class="nav review-tab nav-tabs mb-20">
                                    <li class="nav-item">
                                        <a rel="nofollow" class="active nav-link" data-toggle="tab" href="#tab_one">{{ __('generic.page_product_detail.description') }}</a>
                                    </li>
                                    <li class="nav-item">
                                        <a rel="nofollow" data-toggle="tab" class="nav-link" href="#tab_two">{{ __('generic.page_product_detail.comment') }}</a>
                                    </li>
                                    <li class="nav-item">
                                        <a rel="nofollow" data-toggle="tab" class="nav-link" href="#tab_three">{{ __('generic.page_product_detail.review') }}</a>
                                    </li>
                                </ul>
                                <div class="tab-content reviews-tab">
                                    <div class="tab-pane fade show active" id="tab_one">
                                        <div class="tab-one">
                                            {!! $product->body !!}
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="tab_two">
                                        <div data-width="100%" class="fb-comments" data-href="{{ request()->fullUrl() }}" data-numposts="5"></div>
                                    </div>
                                    <div class="tab-pane fade" id="tab_three">
                                        @include('components.rating', ['ratings' => $ratings, 'product_id' => $product->id, 'title' => $product->title]) 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- product details reviews end -->

                <!-- related products area start -->
                <div class="related-products-area mt-34">
                    <div class="section-title mb-30">
                        <div class="title-icon">
                            <i class="fa fa-desktop"></i>
                        </div>
                        <h3>{{ __('generic.page_product_detail.related_products') }}</h3>
                    </div> <!-- section title end -->
                    <!-- featured category start -->
                    <div class="featured-carousel-active slick-padding slick-arrow-style">
                        @foreach ($mightAlsoLike as $product)
                            @include('records.product', ['product' => $product, 'type' => 'row'])
                        @endforeach

                    </div>
                    <!-- featured category end -->
                </div>
                <!-- related products area end -->
            </div>

            <!-- sidebar start -->
            <div class="col-lg-3">

                @include('partials.right')

            </div>
            <!-- sidebar end -->
        </div>
    </div>
</div>
<!-- product details wrapper end -->
@endsection

@section('extra-css')
<link rel="stylesheet" href="https://pagination.js.org/dist/2.1.5/pagination.css">
@endsection


@section('extra-js')
<div id="fb-root"></div>

<script>(function(d, s, id) {

    var js, fjs = d.getElementsByTagName(s)[0];

    if (d.getElementById(id)) return;

    js = d.createElement(s); js.id = id;

    js.src = "https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.0&appId=154422631851891&autoLogAppEvents=1";

    fjs.parentNode.insertBefore(js, fjs);

}(document, "script", "facebook-jssdk"));</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-54bc70ea4098f745"></script>


<script type="text/javascript" src="https://pagination.js.org/dist/2.1.5/pagination.min.js"></script>
<script>
    $('#form-review .fa-star').hover(function(){
        var id = $(this).attr('data-value');
        var counter = 1;

        $('#form-review .fa-star').each(function(i){
            if (id >= counter) {
                $("#form-review .fa-star[data-value='" + counter + "']").addClass("selected");
                $("input[name='star']").val(counter);
            } else {
                $("#form-review .fa-star[data-value='" + counter + "']").removeClass("selected");
            }
            counter ++;
        });
    });


    $('#paging-reviews').pagination({
        dataSource: @json($ratings->get('rating_comment')),
        pageSize: 5,
        callback: function(data, pagination) {
            var html = "";
            $.each(data, function(index, item) {
                html += '<div class="rating-item">';
                    html += '<div class="name">'+ item.fullname +' <span>' + item.created_att + '</span>';
                    html += '</div>';
                    html += '<div class="ct-rate">';
                        html += '<div class="star">';
                            for(var i = 0; i < 5; i ++){
                                var checked = item.star > i ? "checked": "";
                                html += '<span class="fa fa-star ' + checked + '"></span>';
                            }
                        html += '</div>';
                        html += item.review;
                    html += '</div>';
                html += '</div>';
            });

            $('.div-reviews').html(html);

            if(pagination.pageSize > pagination.totalNumber) {
                $('#rating .paginationjs').remove();
            }
        }
    });
</script> 
@endsection