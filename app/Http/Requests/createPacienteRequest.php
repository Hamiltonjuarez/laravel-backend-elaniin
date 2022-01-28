<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class createPacienteRequest extends FormRequest
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
            //Es para validar las request que vienen desde la APi
            'name'              => 'required',
            'dui'               => 'required',
            'sexo'              => 'required',
            'edad'              => 'required'
        ];
    }
}
