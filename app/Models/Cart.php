<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    public $timestamps=false;
    
    use HasFactory;


    protected $fillable=[
        'kod',
        'datum',
        'cijena',
        'kupac',
        'proizvod',
        'slanje',
        'opis',

        

    ];
}
