<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Type;

class TypeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
        'ime'=>$this->faker->randomElement(['Kompjuter','Laptop','Komponenta','Periferija']),
        'opis'=>'DefaultniOpis',
            
        ];
    }
}
