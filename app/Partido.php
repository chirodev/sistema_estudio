<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Partido extends Model
{
    protected $table = 'partido';
    protected $primaryKey = 'id';
    protected $fillable = [
        'nombre', 'sigla', 'color', 'imagen', 'estado'
    ];
}
