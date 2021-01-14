<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Voto extends Model
{
    protected $table = 'voto';
    protected $primaryKey = 'id';
    protected $fillable = [
        'idmesa', 'idacta', 'idpartido', 'cantidad', 'estado'
    ];
}
