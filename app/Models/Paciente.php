<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Paciente extends Model
{
    use HasFactory;
    //Cuando no importa que el usuario pueda acceder a todos los campos de la tabla
    //P
    protected $guarded = [];
}
