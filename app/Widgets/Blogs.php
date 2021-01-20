<?php

namespace App\Widgets;

use App\Models\Blog;
use Illuminate\Support\Facades\Auth;
use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;

class Blogs extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display. 
     */
    public function run()
    {
        $count = Blog::count();
        $string = trans_choice('generic.blog', $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-news',
            'title'  => "{$count} {$string}",
            'text'   => __('voyager::dimmer.page_text', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => __('generic.blog_link_text'),
                'link' => route('voyager.blogs.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/01.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return Auth::user()->can('browse', app(Blog::class));
    }
}
