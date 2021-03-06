<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class ProductCat extends Model
{
    use Translatable;
    protected $translatable = ['title', 'slug', 'body', 'seo_title', 'meta_keywords', 'meta_description'];

    public function list()
    {
        return $this->belongsTo('App\Models\ProductList', 'id_list');
    }

    public function products()
    {
        return $this->hasMany('App\Models\Product' , 'id_cat');
    }
}
