<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    protected $table = 'persona';
    protected $primaryKey = 'id';
    protected $fillable = [
        'nombre', 'apellido', 'imagen', 'ci', 'genero', 'estado', 'idciudad',
    ];
}
