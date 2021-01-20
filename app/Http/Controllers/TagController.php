<?php

namespace App\Http\Controllers;

use App\Models\Tag;

class TagController extends Controller
{
    
    public function index ($slug)
    {
        $pagination = 4;

        $category = Tag::whereTranslation('slug', $slug)->firstOrFail();

        $products = $category
                    ->products()
                    ->select('products.title', 'products.id', 'products.slug', 'image', 'images', 'price', 'oldprice', 'description')
                    ->where('active', true);
        
        $category = translateContentRecursive($category);

        if (request()->sortby == 'nameasc') {
            $products = $products->orderBy('title')->paginate($pagination);
        } elseif (request()->sortby == 'namedesc') {
            $products = $products->orderBy('title', 'desc')->paginate($pagination);
        }elseif (request()->sortby == 'priceasc') {
            $products = $products->orderBy('price')->paginate($pagination);
        }elseif (request()->sortby == 'pricedesc') {
            $products = $products->orderBy('price', 'desc')->paginate($pagination);
        } else {
            $products = $products->paginate($pagination);
        }

        return view('product')->with([
            'products'    => $products,
            'category' => $category,
        ]);
    }
}