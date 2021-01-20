<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index(Request $request)
    {
        $pagination = 4;

        $products = Product::select('title', 'id', 'slug', 'image', 'images', 'price', 'oldprice', 'description')
                    ->where('title', 'like', "%".$request->input('query')."%")
                    ->where('active', true);;
        
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

        $category = new \stdClass; 
        $category->title = $category->seo_title = trans('generic.search_keyword')." ".request()->input('query')."'";

        return view('product')->with([
            'products'    => $products,
            'category'    => $category,
        ]);
    }
}