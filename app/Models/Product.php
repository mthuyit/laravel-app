<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class Product extends Model
{
    use Translatable, Resizable;
    protected $fillable = [
        'title',
        'price',
        'oldprice',
        'seo_title'
    ];
    protected $translatable = ['title', 'slug', 'description', 'body', 'seo_title', 'meta_keywords', 'meta_description'];

    public function list()
    {
        return $this->belongsTo('App\Models\ProductList', 'id_list');
    }

    public function cat()
    {
        return $this->belongsTo('App\Models\ProductCat', 'id_cat');
    }

    public function item()
    {
        return $this->belongsTo('App\Models\ProductItem', 'id_item');
    }

    public function presentPrice()
    {
        return number_format($this->price,0,",",".")." ₫";
    }

    public function getOldPrice()
    {
        return number_format($this->oldprice,0,",",".")." ₫";
    }

    public function scopeMightAlsoLike($query)
    {
        return $query->inRandomOrder();
    }

}
