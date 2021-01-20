<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class SiteSetting extends Model
{
    use Translatable, Resizable;
    protected $translatable = ['title', 'address', 'copyright', 'moneyback', 'freeship', 'workingtime', 'contact', 'seo_title', 'meta_keywords', 'meta_description'];
}
