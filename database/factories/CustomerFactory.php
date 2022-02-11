<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Customer;

class CustomerFactory extends Factory
{

  
    /**
     * Define the model's default state.
     *
     * @return array
     */

    protected $model=Customer::class;

    public function definition()
    {
        return [
        'ime'=>$this->faker->name(),
        'prezime'=> $this->faker->lastname(),
        'email'=>$this->faker->unique()->email(),
        'znacka'=>$this->faker->randomElement(['*****','****','***','**','*']),
        'adresa'=>$this->faker->randomElement(['Ulica Alekse Santica','Krupska','Ozimice1','Ozimice2','Ulica Izeta Sarajlica','Ulica žrtava genocida','Ulica Irfana Ljubijankića']),
        'opis'=>'Dodaj opis',
        ];
    }
}
