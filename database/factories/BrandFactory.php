<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Brand;

class BrandFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
        'ime'=>$this->faker->randomElement(['Asus','Apple','Acer','Adata','Beats','Canyon','Crucial','Dell','HP','Logitech','Legion','Lenovo','Samsung','Philips','Kingston']),
        'drzava'=>$this->faker->randomElement(['DE','FR','BA','HR','SRB','AU','IT','USA']),
        'vlasnik'=>$this->faker->firstName,
        'opis'=>'DefaultniOpis',

        ];
    }
}
