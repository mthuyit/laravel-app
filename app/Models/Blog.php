<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class Blog extends Model
{
    use Translatable, Resizable;
    protected $translatable = ['title', 'slug', 'description', 'body', 'seo_title', 'meta_keywords', 'meta_description'];

}
