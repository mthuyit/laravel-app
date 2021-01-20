@extends('layouts.master')

@section('title', __('generic.cart'))

@section('content')

@include('components.breadcrumbs', ['breadcrumbs' => [
    __('generic.cart')
]])

<!-- cart main wrapper start -->
<div class="cart-main-wrapper">
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

                @if (Cart::count() > 0)
                <!-- Cart Table Area -->
                <div class="cart-table">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th class="pro-thumbnail">{{ __('generic.page_cart.thumbnail') }}</th>
                                <th class="pro-title">{{ __('generic.page_cart.product') }}</th>
                                <th class="pro-price">{{ __('generic.page_cart.price') }}</th>
                                <th class="pro-quantity">{{ __('generic.page_cart.quantity') }}</th>
                                <th class="pro-subtotal">{{ __('generic.page_cart.total') }}</th>
                                <th class="pro-remove">{{ __('generic.page_cart.remove') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach (Cart::content() as $item)
                                <tr>
                                    <td class="pro-thumbnail">
                                        <a href="{{ route('product.detail', $item->model->getTranslatedAttribute('slug')) }}">
                                            <img class="img-fluid" src="{{ Voyager::image($item->model->thumbnail('cropped')) }}" alt="{{ $item->model->getTranslatedAttribute('title') }}">
                                        </a>
                                    </td>
                                    <td class="pro-title"><a href="{{ route('product.detail', $item->model->getTranslatedAttribute('slug')) }}">{{ $item->model->getTranslatedAttribute('title') }}</a></td>
                                    <td class="pro-price"><span>{{ $item->model->presentPrice() }}</span></td>
                                    <td class="pro-quantity">
                                        <select class="quantity w-100" data-id="{{ $item->rowId }}">
                                            @for ($i = 1; $i < 5 + 1 ; $i++)
                                                <option {{ $item->qty == $i ? 'selected' : '' }}>{{ $i }}</option>
                                            @endfor
                                        </select>
                                    </td>
                                    <td class="pro-subtotal"><span>{{ presentPrice($item->subtotal) }}</span></td>
                                    <td class="pro-remove">
                                        <form action="{{ route('cart.destroy', $item->rowId) }}" method="POST">
                                            {{ csrf_field() }}
                                            {{ method_field('DELETE') }}

                                            <button type="submit" class="btn"><i class="fa fa-trash-o"></i></button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                            <tr>
                                <td colspan="4" class="text-right">{{ __('generic.page_cart.total') }}:</td>
                                <td colspan="2" class="text-left cart-total-price"><label>{{ presentPrice(Cart::subtotal()) }}</label></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>


                <!-- Cart Update Option -->
                <div class="cart-update-option d-flex justify-content-between">
                    <a href="{{ route('product.index') }}" class="sqr-btn btn btn-danger text-uppercase">{{ __('generic.page_cart.continue_shopping') }}</a>
                    <div class="cart-update mt-sm-16">
                        <a rel="nofollow" href="{{ route('checkout.index') }}" class="sqr-btn btn btn-danger text-uppercase">{{ __('generic.page_cart.proceed_to_checkout') }}</a>
                    </div>
                </div>

                @endif
            </div>
        </div>

    </div>
</div>
<!-- cart main wrapper end -->


  


@endsection

@section('extra-js')
    
    <script>
        (function(){
            const classname = document.querySelectorAll('select.quantity')
    
            Array.from(classname).forEach(function(element) {
                element.onchange = function() {
                    const id = element.getAttribute('data-id')

                    axios.patch(`/cart/${id}`, {
                        quantity: this.value
                    })
                    .then(function (response) {
                        window.location.href = "{{ route('cart.index') }}"
                    })
                    .catch(function (error) {
                        window.location.href = "{{ route('cart.index') }}"
                    });
                }
            })
        })();
    </script>

@endsection
