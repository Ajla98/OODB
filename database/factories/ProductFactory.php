<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Product;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */

     protected $model=Product::class;

    public function definition()
    {
        return [
            'kod'=>$this->faker->unique()->numberBetween(3000,8000),
            'ime' =>$this->faker->unique()->word,
            'godina_p'=>now(),
            'cijena'=>$this->faker->numberBetween(300,4000),
            'stanje'=>$this->faker->randomElement(['Novo','Polovno']),
            'brend'=>$this->faker->numberBetween(1,15),
            'vrsta'=>$this->faker->numberBetween(1,4),



        ];
    }
}
