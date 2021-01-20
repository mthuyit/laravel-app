<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductList;
use App\Models\ProductCat;
use App\Models\ProductItem;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $pagination = 4;
        $category = [];

        if(request()->item){
            $category = ProductItem::with('list')
            ->with('cat')
            ->with('products')
            ->select('title', 'id', 'seo_title', 'meta_keywords', 'meta_description', 'id_list', 'id_cat')
            ->whereTranslation('slug', request()->item)->firstOrFail();
            
        }else if(request()->cat){
            $category = ProductCat::with('list')
            ->with('products')
            ->select('title', 'id', 'seo_title', 'meta_keywords', 'meta_description', 'id_list')
            ->whereTranslation('slug', request()->cat)->firstOrFail();
        }else if(request()->list){
            $category = ProductList::with('products')
            ->select('title', 'id', 'seo_title', 'meta_keywords', 'meta_description')
            ->whereTranslation('slug', request()->list)->firstOrFail();
        }
        
        if($category){
            $products = $category
                        ->products()
                        ->select('title', 'id', 'slug', 'image', 'images', 'price', 'oldprice', 'description')
                        ->where('active', true);

            $category = translateContentRecursive($category, 1);

        }else{
            $products = Product::select('title', 'id', 'slug', 'image', 'images', 'price', 'oldprice', 'description')->where('active', true);

        }

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
            'category' => $category,
            'products'    => $products,
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
        $product = Product::with('list')->with('cat')->with('item')->whereTranslation('slug', $slug)->firstOrFail();

        $mightAlsoLike = Product::whereTranslation('slug', '!=', $slug)->mightAlsoLike()->get();
        $mightAlsoLike = translateContentRecursive($mightAlsoLike);

        return view('product-detail')->with([
            'product' => translateContentRecursive($product, 1),
            'mightAlsoLike' => $mightAlsoLike,
            'ratings' => getRatings($product->id),
        ]);
    }

    public function APIindex()
    {
        return Product::all();
    }

    public function APIshow(Product $product)
    {
        return $product;
    }

    public function APIstore(Request $request)
    {
        $product = Product::create($request->all());

        return response()->json($product, 201);
    }

    public function APIupdate(Request $request, Product $product)
    {
        $product->update($request->all());

        return response()->json($product, 200);
    }

    public function APIdelete(Product $product)
    {
        $product->delete();

        return response()->json(null, 204);
    }

}
