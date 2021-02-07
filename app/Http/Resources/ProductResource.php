<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id'    => $this->id,
            'sku'   => $this->sku,
            'name'  => $this->name,
            'price' => $this->price,
            'quantity'  => $this->quantity,
            'description'   => $this->description,
            'image'         => $this->image,
            'created_at'    => \Carbon\Carbon::parse($this->created_at)->format('d/m/Y')
        ];
    }
}
