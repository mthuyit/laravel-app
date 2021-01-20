<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Tag extends Model
{
    use Translatable;
    protected $translatable = ['title', 'slug', 'seo_title', 'meta_keywords', 'meta_description'];

    public function products()
    {
        return $this->belongsToMany('App\Models\Product');
    }
}
