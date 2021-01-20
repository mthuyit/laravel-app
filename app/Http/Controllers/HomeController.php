<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use App\Models\Product;
use App\Models\Slider;

class HomeController extends Controller
{
    public function index()
    { 
        
        $products_feature = Product::select('slug', 'title', 'image', 'images', 'price', 'id', 'hot')->where('active', true)->where('featured', true)->get();
        $products_new = Product::select('slug', 'title', 'image', 'images', 'price', 'id', 'hot')->where('active', true)->where('new', true)->get();
        $products_hot = Product::select('slug', 'title', 'image', 'images', 'price', 'id', 'hot')->where('active', true)->where('hot', true)->get();
        $sliders = Slider::select('title', 'description', 'image', 'id')->where('active', true)->get();

        return view('home')->with([
            'products_feature'=> translateContentRecursive($products_feature),
            'products_new'=> translateContentRecursive($products_new),
            'products_hot'=> translateContentRecursive($products_hot), 
            'sliders' => $sliders,
        ]);
    }

}
