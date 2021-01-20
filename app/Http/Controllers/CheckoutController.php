<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use App\Models\OrderProduct;
use App\Mail\OrderPlaced;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Http\Requests\CheckoutRequest;
use Gloudemans\Shoppingcart\Facades\Cart;
use Cartalyst\Stripe\Laravel\Facades\Stripe;
use Cartalyst\Stripe\Exception\CardErrorException;

use App\Libraries\NL_Checkout;


class CheckoutController extends Controller
{
    public function __construct()
    {
        $this->order_code = 'MT_'.time();
    }

    public function index()
    {

        if (Cart::instance('default')->count() == 0) {
            return redirect()->route('product.index');
        }

        if (auth()->user() && request()->is('guestCheckout')) {
            return redirect()->route('checkout.index');
        }

        return view('checkout');
    }

    public function success()
    {
        if (isset($_GET['payment_id'])) {
            // Lấy các tham số để chuyển sang Ngânlượng thanh toán:

            $transaction_info = $_GET['transaction_info'];
            $order_code = $_GET['order_code'];
            $price = $_GET['price'];
            $payment_id = $_GET['payment_id'];
            $payment_type = $_GET['payment_type'];
            $error_text = $_GET['error_text'];
            $secure_code = $_GET['secure_code'];
            //Khai báo đối tượng của lớp NL_Checkout
            $nl= new NL_Checkout();
            $nl->merchant_site_code = config('services.nganluong.merchant_id');
            $nl->secure_pass = config('services.nganluong.merchant_pass');
            //Tạo link thanh toán đến nganluong.vn
            $checkpay= $nl->verifyPaymentUrl($transaction_info, $order_code, $price, $payment_id, $payment_type, $error_text, $secure_code);
            
            $order = Order::where('order_code', $order_code);
            
            if ($checkpay) {
                
                $order->update([
                    'status' => 4,  // đã thanh toán
                    'payment_type' => $payment_type
                ]);
                return redirect()->route('confirmation.index')->with('success_message', trans('generic.page_checkout.thank_you'));
            }else{
                $order->update([
                    'error' => $error_text, 
                    'status' => 0
                ]); // cập nhật trạng thái đơn đã hủy, và thông báo lỗi
                return redirect()->route('confirmation.index')->with('error_message', trans('generic.page_checkout.error'));
            }
            
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CheckoutRequest $request)
    {
        


        // Check race condition when there are less items available to purchase
        if ($this->productsAreNoLongerAvailable()) {
            return back()->withErrors(trans('generic.page_checkout.not_avialble'));
        }

        try {
            
            //$order = $this->addToOrdersTables($request, null);
            //Mail::send(new OrderPlaced($order));

            // decrease the quantities of all the products in the cart
            //$this->decreaseQuantities();

            //Cart::instance('default')->destroy();
            //session()->forget('coupon');
            $this->addToOrdersTables($request, null);
           

            if($request->payment_method == 'nganluong'){
                // Lấy các tham số để chuyển sang Ngânlượng thanh toán:
                $receiver = config('services.nganluong.receiver');
               
                //Khai báo url trả về 
                $return_url = route('checkout.success');
                // Link nut hủy đơn hàng
                $cancel_url = route('home');	
                $notify_url = route('checkout.success');
                //Giá của cả giỏ hàng 
                $txh_name = $request->name; 	
                $txt_email = $request->email; 	
                $txt_phone = $request->phone; 	
                $price = (int)getNumbers()->get('newSubtotal'); 	
                //Thông tin giao dịch
                $transaction_info = $request->note; 	
                $currency = "vnd";
                $quantity = Cart::instance('default')->count();
                $tax = 0;
                $discount = 0;
                $fee_cal = 0;
                $fee_shipping = 0;
                $order_description = "Thông tin đơn hàng: ".$this->order_code;
                $buyer_info = $txh_name."*|*".$txt_email."*|*".$txt_phone;
                $affiliate_code = "";
                //Khai báo đối tượng của lớp NL_Checkout
                $nl= new NL_Checkout();
                $nl->nganluong_url = config('services.nganluong.nganluong_url');
                $nl->merchant_site_code = config('services.nganluong.merchant_id');
                $nl->secure_pass = config('services.nganluong.merchant_pass');
                //Tạo link thanh toán đến nganluong.vn
                $url = $nl->buildCheckoutUrlExpand($return_url, $receiver, $transaction_info, $this->order_code, $price, $currency, $quantity, $tax, $discount , $fee_cal, $fee_shipping, $order_description, $buyer_info , $affiliate_code);
                
                //echo $url; die;
                if ($this->order_code != "") {
                    Cart::instance('default')->destroy();
                    //một số tham số lưu ý
                    //&option_payment=bank_online --> Mặc định forcus vào phương thức Ngân Hàng
                    $url .='&cancel_url='. $cancel_url . '&notify_url='.$notify_url;
                    //$url .='&option_payment=bank_online';
                    
                    return redirect($url);
                }
            }

            Cart::instance('default')->destroy();

            $order = Order::where('order_code', $this->order_code);
            $order->update([ 
                'status' => 1 // chờ xác nhận
            ]);

            return redirect()->route('confirmation.index')->with('success_message', trans('generic.page_checkout.thank_you'));

        } catch (CardErrorException $e) {
            $this->addToOrdersTables($request, $e->getMessage());
            return back()->withErrors('Error! ' . $e->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    
    protected function addToOrdersTables($request, $error)
    {
        // Insert into orders table
        $order = Order::create([
            'user_id' => auth()->user() ? auth()->user()->id : null,
            'order_code' => $this->order_code,
            'email' => $request->email,
            'fullname' => $request->name,
            'address' => $request->address,
            'phone' => $request->phone,
            'note' => $request->note,
            'total' => (int)getNumbers()->get('newSubtotal'),
            'error' => $error,
            'payment_method' => $request->payment_method,
        ]);

        // Insert into order_product table
        foreach (Cart::content() as $item) {
            OrderProduct::create([
                'order_id' => $order->id,
                'product_id' => $item->model->id,
                'quantity' => $item->qty,
            ]);
        }

        return $order;
    }

    protected function decreaseQuantities()
    {
        foreach (Cart::content() as $item) {
            $product = Product::find($item->model->id);

            $product->update(['quantity' => $product->quantity - $item->qty]);
        }
    }

    protected function productsAreNoLongerAvailable()
    {
        foreach (Cart::content() as $item) {
            $product = Product::find($item->model->id);
            if ($item->qty > 5) {
                return true;
            }
        }

        return false;
    }
}
