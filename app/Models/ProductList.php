<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class ProductList extends Model
{
    use Translatable;
    protected $translatable = ['title', 'slug', 'body', 'seo_title', 'meta_keywords', 'meta_description'];

    public function products()
    {
        return $this->hasMany('App\Models\Product' , 'id_list');
    }
}
