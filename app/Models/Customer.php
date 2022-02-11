<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    protected $fillable=[

        'ime',
        'prezime',
        'email',
        'znacka',
        'adresa',
        'opis',
       
    ];
}
