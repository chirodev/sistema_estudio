<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recinto extends Model
{
    protected $table = 'recinto';
    protected $primaryKey = 'id';
    protected $fillable = [
        'idciudad', 'nombre', 'ubicacion', 'estado', 'fecha', 'hora', 
    ];
}
