
@if(isset($type) && $type != 'row')
<div class="col-lg-3 col-md-4 col-sm-6">
@endif

    <div class="product-item fix {{ isset($type) && $type != 'row' ? 'mb-30' : '' }}">
        <div class="product-thumb">
            <a href="{{ route('product.detail', $product->slug) }}">
                <img data-src="{{ Voyager::image($product->thumbnail('cropped')) }}" class="lazyload img-pri" alt="{{ $product->title }}">
                @if($product->images)
                    <img data-src="{{ Voyager::image($product->getThumbnail(json_decode($product->images)[0], 'cropped')) }}" class="lazyload img-sec" alt="{{ $product->title }}">
                @endif
            </a>
            @if($product->hot)
                <div class="product-label">
                    <span>hot</span>
                </div>
            @endif
        </div>
        <div class="product-content">
            <h3><a href="{{ route('product.detail', $product->slug) }}">{{ $product->title }}</a></h3>
            <div class="pricebox">
                <span class="regular-price">{{ $product->presentPrice() }}</span>
                <div class="ratings">
                    
                </div>
            </div>
        </div>
    </div>

    @if(isset($type) && $type == 'grid')
    <div class="product-list-item mb-30">
        <div class="product-thumb">
            <a href="{{ route('product.detail', $v->slug) }}">
                <img src="{{ Voyager::image($v->thumbnail('cropped')) }}" class="img-pri" alt="{{ $v->title }}">
                
                @if($v->images)
                    <img data-src="{{ Voyager::image($v->getThumbnail(json_decode($v->images)[0], 'cropped')) }}" class="lazyload img-sec" alt="{{ $v->title }}">
                @endif
            </a>
            @if($product->hot)
                <div class="product-label">
                    <span>hot</span>
                </div>
            @endif
        </div>
        <div class="product-list-content">
            <h3><a href="{{ route('product.detail', $v->slug) }}">{{ $v->title }}</a></h3>
            <div class="ratings">
                
            </div>
            <div class="pricebox">
                <span class="regular-price">{{ $v->presentPrice() }}</span>
                @if ($v->oldprice > 0)
                    <span class="old-price"><del>{{ $v->getOldPrice() }}</del></span>
                @endif
            </div>
            {!! $v->description !!}
            
        </div>
    </div>
    @endif

@if(isset($type) && $type != 'row')
    </div>
@endif

