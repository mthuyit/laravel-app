<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = ['user_id', 'email', 'fullname', 'phone', 'note', 'address', 'total', 'error', 'order_code', 'payment_method'];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
    
    public function products()
    {
        return $this->belongsToMany('App\Models\Product')->withPivot('quantity');
    }
}
