<?php

namespace App\Http\Controllers;

use App\Models\Blog;

class BlogController extends Controller
{
    public function index()
    {
        $pagination = 9;

        $blogs = translateContentRecursive(Blog::where('active', true)->paginate($pagination));

        return view('blog')->with([
            'blogs'    => $blogs,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  string  $slug
     * @return \Illuminate\Http\Response
     */
    public function detail($slug)
    {
        $blog = Blog::whereTranslation('slug', $slug)->firstOrFail();
       
        $blog = translateContentRecursive($blog);

        return view('blog-detail')->with([
            'blog' => $blog,
        ]);
    }

}
