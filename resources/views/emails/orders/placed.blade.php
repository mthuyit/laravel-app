@component('mail::message')
# Order Received

Thank you for your order.

**Order Name:** {{ $order->fullname }}

**Order Phone:** {{ $order->phone }}

**Order Email:** {{ $order->email }}

**Order Address:** {{ $order->address }}

**Order Note:** {{ $order->note }}

**Order Total:** {{ presentPrice($order->total) }}

**Items Ordered**

@foreach ($order->products as $product)
Name: {{ $product->title }} <br>
Price: {{ $product->presentPrice() }} <br>
Quantity: {{ $product->pivot->quantity }} <br>
@endforeach

You can get further details about your order by logging into our website.

@component('mail::button', ['url' => config('app.url'), 'color' => 'green'])
Go to Website
@endcomponent

Thank you again for choosing us.

Regards,<br>
{{ config('app.name') }}
@endcomponent
