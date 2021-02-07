<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreUserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'              => 'required|max:255',
            'username'          => 'required|unique:users,username|max:255',
            'birth_date'        => 'required|date',
            'email'             => 'required|unique:users,email|max:255|email',
            'phone'             => 'required|digits:8',
            'password'          => 'required|min:8',
        ];
    }
}
