<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class QR extends Model
{
    protected $table = 'qr';
    protected $primaryKey = 'id';
    protected $fillable = [
        'idacta', 'nombre', 'estado'
    ];
}
