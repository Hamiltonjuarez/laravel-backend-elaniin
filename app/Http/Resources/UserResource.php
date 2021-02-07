<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
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
            'name'  => $this->name,
            'username'  => $this->username,
            'email'     => $this->email,
            'birth_date'    => $this->birth_date,    
            'created_at'    => \Carbon\Carbon::parse($this->created_at)->format('d/m/Y')
        ];
    }
}
