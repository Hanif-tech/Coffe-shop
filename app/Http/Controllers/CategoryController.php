<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;

class CategoryController extends Controller
{
    public function filterProduct($category_id){
        $products = Product::where('category_id',$category_id)->get();
        $category = Category::all();

        return view('pages.all-product', [
            'products'=>$products,
            'categories'=>$category,
            // 'active' => 'active'
        ]);
        // dd($products);
    }
}
