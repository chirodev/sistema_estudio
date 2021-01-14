<?php

use App\Ciudad;
use Illuminate\Database\Seeder;

class CiudadTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = $this->_data();
        foreach ($data as $d) {
            Ciudad::create($d);
        }
    }
    public function _data() {
        return [
            [
                'nombre'   => 'Bolivia',
                'idciudad' => null,
            ], //1
            [
                'nombre'   => 'Santa Cruz',
                'idciudad' => 1,
            ], //2
            [
                'nombre'   => 'Beni',
                'idciudad' => 1,
            ], //3
            [
                'nombre'   => 'Pando',
                'idciudad' => 1,
            ], //4
            [
                'nombre'   => 'Cochabamba',
                'idciudad' => 1,
            ], //5
            [
                'nombre'   => 'Sucre',
                'idciudad' => 1,
            ], //6
            [
                'nombre'   => 'Tarija',
                'idciudad' => 1,
            ], //7
            [
                'nombre'   => 'Potosi',
                'idciudad' => 1,
            ], //8
            [
                'nombre'   => 'Oruro',
                'idciudad' => 1,
            ], //9
            [
                'nombre'   => 'La Paz',
                'idciudad' => 1,
            ], //10
        ];
    }
}
