<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mesa extends Model
{
    protected $table = 'mesa';
    protected $primaryKey = 'id';
    protected $fillable = [
        'idrecinto', 'nro', 'nombre', 'estado',
    ];
}
