<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    
    public $timestamps=false;

    use HasFactory;

    

    protected $fillable=[
        'kod',
       'ime',
       'godina_p',
       'cijena',
       'stanje',
       'brend',
       'vrsta',

    ];
}
