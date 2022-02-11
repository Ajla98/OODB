<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\TypeController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\ShippingController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
    return view('dashboard');
})->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->get('/kontakt', function () {
    return view('kontakt');
})->name('kontakt');




Route::middleware(['auth:sanctum','verified'])->get('products',[ProductController::class,'index'])->name('products');
Route::middleware(['auth:sanctum','verified'])->get('brands',[BrandController::class,'index'])->name('brands');
Route::middleware(['auth:sanctum','verified'])->get('types',[TypeController::class,'index'])->name('types');
Route::middleware(['auth:sanctum','verified'])->get('customers',[CustomerController::class,'index'])->name('customers');
Route::middleware(['auth:sanctum','verified'])->get('carts',[CartController::class,'index'])->name('carts');
Route::middleware(['auth:sanctum','verified'])->get('shippings',[ShippingController::class,'index'])->name('shippings');


Route::middleware(['auth:sanctum','verified'])->get('carts_komponente',[CartController::class,'komp'])->name('carts_komponente');
Route::middleware(['auth:sanctum','verified'])->get('carts_kompjuteri',[CartController::class,'koomp'])->name('carts_kompjuteri');
Route::middleware(['auth:sanctum','verified'])->get('carts_laptopi',[CartController::class,'lap'])->name('carts_laptopi');
Route::middleware(['auth:sanctum','verified'])->get('carts_periferija',[CartController::class,'per'])->name('carts_periferija');








Route::middleware(['auth:sanctum','verified'])->get('dodaj_proizvod',[ProductController::class,'create'])->name('dodaj_proizvod');

Route::middleware(['auth:sanctum','verified'])->post('spremi_proizvod',[ProductController::class,'store'])->name('spremi_proizvod');

Route::middleware(['auth:sanctum','verified'])->post('obrisi_proizvod',[ProductController::class,'delete'])->name('obrisi_proizvod');

Route::middleware(['auth:sanctum','verified'])->post('file_add',[ProductController::class,'file_add'])->name('file_add');

Route::middleware(['auth:sanctum','verified'])->post('process',[ProductController::class,'process'])->name('process');

Route::middleware(['auth:sanctum','verified'])->post('uredi_proizvod',[ProductController::class,'edit'])->name('uredi_proizvod');
Route::middleware(['auth:sanctum','verified'])->post('update_proizvod',[ProductController::class,'update'])->name('update_proizvod');
Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
