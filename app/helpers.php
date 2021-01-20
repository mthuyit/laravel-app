<?php
use Carbon\Carbon;
use App\Actions\TranslateContent;
use Illuminate\Support\Facades\DB;

use App\Models\SiteSetting;
use App\Models\Rating;

function site_setting($column = "")
{
    return $column == "" ? SiteSetting::firstOrFail() : translateContentRecursive(SiteSetting::get())[0]->$column;
}

function presentPrice($price)
{
    return number_format($price,0,",",".")." ₫";
}

function presentDate($date)
{
    return Carbon::parse($date)->format('M d, Y');
}

function setActiveMenu($menu, $output = 'active')
{
    return request()->segment(1) == $menu ? $output : '';
}

function getRatings($id)
{
    $rating_value = Rating::select(DB::raw('star, count(*) as num'))
                    ->where('product_id', $id)
                    ->where('active', 1)                    
                    ->groupBy('star')
                    ->get();

    $rating_avg = Rating::where('product_id', $id)
                    ->where('active', 1)
                    ->avg('star');

    $rating_comment = Rating::where('product_id', $id)
                    ->where('active', 1)                    
                    ->orderBy('created_at', 'DESC')
                    ->selectRaw('fullname, star, review, DATE_FORMAT(created_at, "%d/%m/%Y %H:%i") as created_att, id')
                    ->get();

    return collect([
        'rating_value' => $rating_value,
        'rating_avg' => round($rating_avg, 1),
        'rating_comment' => $rating_comment
    ]);
}


function getNumbers()
{
    $tax = config('cart.tax') / 100;
    $discount = session()->get('coupon')['discount'] ?? 0;
    $code = session()->get('coupon')['name'] ?? null;
    $newSubtotal = (Cart::subtotal() - $discount);
    if ($newSubtotal < 0) {
        $newSubtotal = 0;
    }
    $newTax = $newSubtotal * $tax;
    $newTotal = $newSubtotal * (1 + $tax);

    return collect([
        'tax' => $tax,
        'discount' => $discount,
        'code' => $code,
        'newSubtotal' => $newSubtotal,
        'newTax' => $newTax,
        'newTotal' => $newTotal,
    ]);
}

function translateContentRecursive($data, ?int $level = 0)
{
    return (new TranslateContent())->handle($data, $level);
}