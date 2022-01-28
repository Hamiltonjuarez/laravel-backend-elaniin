<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

     //Cuando es requerido que el usuario solo acceda a ciertos campos de la BD
    protected $fillable = [
        'name',
        'quantity',
        'price',
        'description',
        'sku',
        'image'
    ];

     /**
     * Retreives records that matches query.
     *
     *  @param  \Illuminate\Http\query  $query
     *  @param  \Illuminate\Http\Request  $search
     *  @return \Illuminate\Http\Response
     *  @return array
     */
    public function scopeFilter($query, $search)
    {
        $query->when($search ?? null, function($query, $search){
            $query->where('name','like','%'.$search.'%')
                    ->orWhere('sku','like','%'.$search.'%');
        });
    }
}
