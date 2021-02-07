<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'sku' => $this->faker->regexify('[A-Za-z0-9]{10}'),
            'name' => $this->faker->text($maxNbChars = 20),
            'quantity' => $this->faker->randomFloat(4, 0, 1000),
            'price' => $this->faker->randomFloat(4, 0, 1000),
            'description' => $this->faker->text($maxNbChars = 200), 
            'image' => $this->faker->imageUrl($width = 640, $height = 480),           
        ];
    }
}
