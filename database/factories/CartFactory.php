<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Cart;
use Carbon\Carbon;

class CartFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */

     protected $model=Cart::class;

    public function definition()
    
    {
        return [
            'kod'=>$this->faker->unique()->numberBetween(1,3000),
            'datum'=>Carbon::now(),
            'cijena'=>$this->faker->numberBetween(300,4000),
            'kupac'=>$this->faker->numberBetween(1,150),
            'proizvod'=>$this->faker->numberBetween(1,150),
            'slanje'=>$this->faker->numberBetween(1,3),
            'opis'=>'Dodaj opis pošiljke',
        ];
    }
}

