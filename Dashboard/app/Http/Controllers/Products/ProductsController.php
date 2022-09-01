<?php

namespace App\Http\Controllers\Products;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Services\Media;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductsController extends Controller
{
    public function index()
    {
        $products = DB::table('products')->get();
        return view('products.index',compact('products'));
    }

    public function create()
    {
        $brands = DB::table('brands')->select('id','name_en','name_ar')->orderBy('name_en')
        ->orderBy('id')->get();
        $subcategories = DB::table('subcategories')->select('id','name_en','name_ar')->orderBy('name_en')
        ->orderBy('id')->get();
        return view('products.create',compact('brands','subcategories'));
    }

    public function edit($id)
    {
        $product = DB::table('products')->where('id','=',$id)->first();
        $brands = DB::table('brands')->select('id','name_en','name_ar')->orderBy('name_en')
        ->orderBy('id')->get();
        $subcategories = DB::table('subcategories')->select('id','name_en','name_ar')->orderBy('name_en')
        ->orderBy('id')->get();
        return view('products.edit',compact('product','brands','subcategories'));
    }

    public function store(StoreProductRequest $request)
    {
        $data = $request->except('_token','image');
        $data['image'] = Media::upload($request->image,'product');
        DB::table('products')->insert($data);
        return redirect()->back()->with('success','Product Created Successfully');
    }

    public function update(UpdateProductRequest $request,$id)
    {
        $data = $request->except('_token','image','_method');
        if($request->has('image')){
            $product = DB::table('products')->select('image')->where('id',$id)->first();
            Media::delete('product',$product->image);
            $data['image'] = Media::upload($request->image,'product');
        }
        DB::table('products')->where('id',$id)->update($data);
        return redirect()->back()->with('success','Product Updated Successfully');
    }

    public function destroy($id)
    {
        $product = DB::table('products')->select('image')->where('id',$id)->first();
        Media::delete('product',$product->image);
        DB::table('products')->where('id',$id)->delete();
        return redirect()->back()->with('success','Product Deleted Successfully');
    }

}
