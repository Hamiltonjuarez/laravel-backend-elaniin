<?php

namespace App\Actions;

use App\Models\User;
use Illuminate\Support\Facades\Hash;

class CreateUser
{
     /**
     * Store a newly created resource in storage .
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function store($request)
    {
        $user = User::create([
            'name'          => $request->name,
            'username'      => $request->username,
            'birth_date'    => $request->birth_date,
            'email'         => $request->email,
            'phone'         => $request->phone,
            'password'      => Hash::make($request->password),
        ]);
    }
}