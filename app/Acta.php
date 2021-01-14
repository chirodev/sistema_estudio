<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Acta extends Model
{
    protected $table = 'acta';
    protected $primaryKey = 'id';
    protected $fillable = [
        'descripcion', 'totalvoto', 'totalnulo', 'totalblanco', 'estado', 'idpersona'
    ];
}
