<?php

namespace App\Http\Controllers;
use DB;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product=DB::table('products')
        ->get();
 
        return view ('products.index',['products'=>$product]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('products.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'ime'=>'required|string|max:255',
        ]);

        DB::table('products')->insert([
        'kod'=>$request->kod,  
        'ime'=>$request->ime,
        'godina_p'=>$request->godina_p,
        'cijena'=>$request->cijena,
        'stanje'=>$request->stanje,
        'brend'=>$request->brend,
        'vrsta'=>$request->vrsta,

        ]);

        
        return redirect()->route('products');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $id=$request->id;

        $products=DB::table('products')
        ->where('id',$id)
        ->get();

        $brands=DB::table('brands')
        ->get();

        $types=DB::table('types')
        ->get();

        return view ('products.edit',['products'=>$products,'brands'=>$brands,'types'=>$types]);
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {

        $id=$request->id;

        $request->validate([
            'ime'=>'required|string|max:255',
        ]);

        $update_query=DB::table('products')
        ->where('id',$id)
        ->update([
        'kod'=>$request->kod,
        'ime'=>$request->ime,
        'godina_p'=>$request->godina_p,
        'cijena'=>$request->cijena,
        'stanje'=>$request->stanje,
        'brend'=>$request->brend,
        'vrsta'=>$request->vrsta,

        ]);
        return redirect()->route('products');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }

    public function delete(Request $request){

      $id=$request->id;
      Product::destroy($id);

      return redirect()->route('products');

    }

    public function file_add(Request $request){

        $product_id = $request['id'];

    

        return view ('products.file_add',['id'=>$product_id]);
  
      }

      public function process(Request $request){

        $id=$request->id;

        $products=Product::find($id);

        $folder_to_save=$products->kod;

        $file=$request->file('datoteka');

        $filename=$products->id . time() . '.' . $file->getClientOriginalExtension();

        $path=$file->storeAs($folder_to_save,$filename);


    

        return redirect()->route('products');
      }
}
