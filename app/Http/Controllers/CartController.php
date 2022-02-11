<?php

namespace App\Http\Controllers;
use DB;

use App\Models\Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       
        $najprodavanijiProizvodi=DB::table('products')
        ->select('products.*',DB::raw('count(*) as brojac'))
        ->groupBy('products.id')
        ->join('carts','products.id','=','carts.proizvod')
        //->orderBy('COUNT(*) DESC')
        ->get();

        $najprodavanijemarke=DB::table('products')
        ->select('brands.*',DB::raw('count(*) as brojac'))
        ->groupBy('brands.id')
        ->join('carts','products.id','=','carts.proizvod')
        ->join('brands','products.brend','=','brands.id')
        ->orderByRaw('COUNT(*) DESC')
        ->get();


        $polovninastanju=DB::table('products')
        ->select('products.*',DB::raw('count(*) as brojac'))
        ->groupBy('products.id')
        ->join('carts','products.id','=','carts.proizvod')
        ->where('products.stanje','Polovno')
        ->orderByRaw('COUNT(*) DESC')
        ->get();

        $novinastanju=DB::table('products')
        ->select('products.*',DB::raw('count(*) as brojac'))
        ->groupBy('products.id')
        ->join('carts','products.id','=','carts.proizvod')
        ->where('products.stanje','Novo')
        ->orderByRaw('COUNT(*) DESC')
        ->get();

       $superkupci=DB::table('customers')
       ->select('customers.email as em')
       ->groupBy('customers.id')
       ->join('carts','customers.id','=','carts.kupac')
       ->join('products','carts.proizvod','=','products.id')
       ->where('products.cijena','>','3800')
       ->get();


       $nacinPostarine=DB::table('products')
        ->select('shippings.*',DB::raw('count(*) as brojac'))
        ->groupBy('shippings.id')
        ->join('carts','products.id','=','carts.proizvod')
        ->join('shippings','products.vrsta','=','shippings.id')
      
        ->get();

        $pro2020=DB::table('customers')
        
        ->groupBy('customers.id')
        ->join('carts','customers.id','=','carts.kupac')
        ->join('products','carts.proizvod','=','products.id')
        ->join('types','products.vrsta','=','types.id')
        ->where('types.ime','Laptopi')
        ->whereBetween('datum',['2020-01-01 00:00:00','2021-01-01 00:00:00'])
        ->get();


        $kompStand=DB::table('products')
        ->select('products.*')
        ->groupBy('products.id')
        ->join('carts','products.id','=','carts.proizvod')
        ->join('types','products.vrsta','=','types.id')
        ->join('shippings','carts.slanje','=','shippings.id')
        ->join('customers','carts.kupac','=','customers.id')
        ->where('customers.znacka','****')
        ->where('types.ime','Komponente')
        ->where('shippings.ime','Standardno')
        ->whereBetween('datum',['2020-01-01 00:00:00','2022-09-01 00:00:00'])
        ->orderByRaw('COUNT(*) DESC')
        ->get();


        $lapStand=DB::table('products')
        ->select('products.*')
        ->groupBy('products.id')
        ->join('carts','products.id','=','carts.proizvod')
        ->join('types','products.vrsta','=','types.id')
        ->join('shippings','carts.slanje','=','shippings.id')
        ->join('customers','carts.kupac','=','customers.id')
        ->where('customers.znacka','****')
        ->where('types.ime','Laptopi')
        ->where('products.cijena','>','2000')
        ->where('shippings.ime','Standardno')
        ->whereBetween('datum',['2020-01-01 00:00:00','2022-09-01 00:00:00'])
        ->orderByRaw('COUNT(*) DESC')
        ->get();


        $komp=DB::table('products')
        ->select('products.*')
        ->groupBy('products.id')
        ->join('carts','products.id','=','carts.proizvod')
        ->join('shippings','carts.slanje','=','shippings.id')
        ->join('types','products.vrsta','=','types.id')
        ->where('products.cijena','>','300')
        ->where('shippings.ime','Ekonomsko')
        ->where('types.ime','Kompjuteri')
        ->whereBetween('datum',['2020-01-01 00:00:00','2022-01-01 00:00:00'])
        ->orderByRaw('COUNT(*) DESC')
        ->get();



        



        return view('carts.index', [
        
            'najp'=>$najprodavanijiProizvodi,
            'najm'=>$najprodavanijemarke,
            'pol'=> $polovninastanju,
            'nov'=>$novinastanju,
             'super'=>$superkupci,
             'postarina'=>$nacinPostarine,
             'datump'=> $pro2020,
             'Kstand'=>$kompStand,
             'Lstand'=>$lapStand,
             'kompjuteri'=>$komp
             
       
       ]);

       

    }

    public function komp()
    {
        /*$carts=DB::table('carts')
        ->get();

        dd($carts); */

        //najčešci proizvodi u korpi


        //

      
      

      

        //Najprodavanije komponente u odredenom rasponu
         $KOMPONENTE=DB::table('products')
         ->select('products.*',DB::raw('count(*) as brojac'))
         ->groupBy('products.id')
         ->join('carts','products.id','=','carts.proizvod')
         ->join('types','products.vrsta','=','types.id')
         ->where('types.ime','Komponente')
         
         ->orderByRaw('COUNT(*) DESC')
         ->get();

      

        
         



    return view('carts.komponente', [
        
         'pro'=>$KOMPONENTE
         
    
    ]);
    }

    public function koomp()
    {
        /*$carts=DB::table('carts')
        ->get();

        dd($carts); */

        //najčešci proizvodi u korpi


        //

      

      

        //Najprodavanije komponente u odredenom rasponu
         $KOMPJUTERI=DB::table('products')
         ->select('products.*',DB::raw('count(*) as brojac'))
         ->groupBy('products.id')
         ->join('carts','products.id','=','carts.proizvod')
         ->join('types','products.vrsta','=','types.id')
         ->where('types.ime','Kompjuteri')
       
         ->orderByRaw('COUNT(*) DESC')
         ->get();

       

        
         



    return view('carts.kompjuteri', [
        
         'pro'=>$KOMPJUTERI
       
    
    ]);
    }

    public function lap()
    {
        /*$carts=DB::table('carts')
        ->get();

        dd($carts); */

        //najčešci proizvodi u korpi


        //

       
        //Najprodavanije komponente u odredenom rasponu
         $LAPTOPI=DB::table('products')
         ->select('products.*')
         ->groupBy('products.id')
         ->join('carts','products.id','=','carts.proizvod')
         ->join('types','products.vrsta','=','types.id')
         ->where('types.ime','Laptopi')
         ->orderByRaw('COUNT(*) DESC')
         ->get();

      

        
         



    return view('carts.laptopi', [
        
         'pro'=>$LAPTOPI
        
    
    ]);
    }
    

    
    public function per()
    {
        /*$carts=DB::table('carts')
        ->get();

        dd($carts); */

        //najčešci proizvodi u korpi


        //

       
      

      

        //Najprodavanije komponente u odredenom rasponu
         $PERIFERIJA=DB::table('products')
         ->select('products.*',DB::raw('count(*) as brojac'))
         ->groupBy('products.id')
         ->join('carts','products.id','=','carts.proizvod')
         ->join('types','products.vrsta','=','types.id')
         ->where('types.ime','Periferija')
        
         ->orderByRaw('COUNT(*) DESC')
         ->get();

        
        
         



    return view('carts.periferija', [
        
         'pro'=>$PERIFERIJA
      
    
    ]);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function show(Cart $cart)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function edit(Cart $cart)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cart $cart)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cart $cart)
    {
        //
    }
}
