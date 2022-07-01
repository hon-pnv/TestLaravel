<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RestauranSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Restauran::factory(10)->create();
    }
}