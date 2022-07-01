<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $arrayValues = ['banhmi', 'bun', 'pho','com'];
        return [
            'category_name' => $arrayValues[rand(0,3)],
        ];
    }
}