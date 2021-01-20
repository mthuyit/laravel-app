@if (! empty($ratings))

@php 
    $rating_value = $ratings->get('rating_value');
    $rating_avg = $ratings->get('rating_avg');
    $rating_comment = $ratings->get('rating_comment'); 
@endphp


<div id="rating">
    <div class="result">
        <div class="bigstar">
            <span class="rating-value">{{ $rating_avg  }}</span>/5
            <span class="fa fa-star checked"></span>
        </div>
        <div class="rs">
            @for($i = 5; $i > 0; $i--)
            @php         
                $result = collect($rating_value)->where('star', $i)->first();
                $num = $result ? $result->num : 0;
                $width = count($rating_comment) > 0 ? $num/count($rating_comment) * 100 : 0;
            @endphp
                <div class="side">
                    <div>{{ $i }} <span class="fa fa-star"></span></div>
                </div>
                <div class="middle">
                    <div class="bar-container">
                    <div style="width: {{ $width }}%" class="bar-{{ $i }}"></div>
                    </div>
                </div>
                <div class="side right">
                    <div class="num-5">{{ $num }} {{ __('generic.page_product_detail.review') }}</div>
                </div>
            @endfor
        </div>
        
    </div>
    
    <div class="container-2">
        <div class="title-ra">
            <span>{{ __('generic.rating.send') }}</span>
        </div>
        <div class="form-cm">
            <span class="title">{{ __('generic.rating.info', ['title' => $title]) }} *</span>
            <form id="form-review" action="{{ route('ajax.rating') }}" method="POST">
                {{ csrf_field() }}
                <input type="hidden" name="product_id" value="{{ $product_id }}">
                <input type="hidden" name="star" value="5">
                <b>{{ __('generic.rating.star_review') }} *</b>
                <div class="star rating">
                    <span class="fa fa-star selected" data-value="1"></span>
                    <span class="fa fa-star selected" data-value="2"></span>
                    <span class="fa fa-star selected" data-value="3"></span>
                    <span class="fa fa-star selected" data-value="4"></span>
                    <span class="fa fa-star selected" data-value="5"></span>
                </div>
                <b>{{ __('generic.rating.review') }} *</b>
                <textarea class="form-control" name="review" required=""></textarea>
                <b>{{ __('generic.page_contact.full_name') }} *</b>
                <input type="text" name="fullname" class="form-control" required="">
                <b>Email *</b>
                <input type="email" name="email" class="form-control" required="">
                
                <button class="btn btn-danger mt-20" type="submit">{{ __('generic.page_contact.send') }}</button>
                
            </form>
        </div>
    </div>
    
    <section id="comment-cus">
        <div class="container-2">
            <div class="title-ra">
                <span>{{ __('generic.rating.customer') }} (<strong class="rating-count">{{ count($rating_comment) }}</strong>)</span>
            </div>
            <div class="clearfix"></div>
            <div id="paging-reviews">
                <div class="div-reviews"></div>
            </div>
        </div>
    </section>

</div>
@endif

         
      