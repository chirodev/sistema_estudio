<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Delegado extends Model
{
    protected $table = 'delegado';
    protected $primaryKey = 'id';
    protected $fillable = [
        'idmesa', 'idpersona', 
    ];
}
