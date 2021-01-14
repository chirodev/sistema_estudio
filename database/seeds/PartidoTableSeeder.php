<?php

use App\Partido;
use Illuminate\Database\Seeder;

class PartidoTableSeeder extends Seeder
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
            Partido::create($d);
        }
    }
    public function _data() {
        return [
            [
                'nombre'   => 'Creemos',
                'sigla' => 'CREEMOS',
                'color' => '#FE15CC',
            ], //1
            [
                'nombre'   => 'Movimiento Al Socialismo ',
                'sigla' => 'MAS',
                'color' => '#0319D3',
            ], //2
            [
                'nombre'   => 'Comunidad Ciudana',
                'sigla' => 'CC',
                'color' => '#EA5B09',
            ], //3
            [
                'nombre'   => 'Frente para la Victoria',
                'sigla' => 'FPV',
                'color' => '#43A703',
            ], //4
            [
                'nombre'   => 'Acción Democrática Nacionalista',
                'sigla' => 'ADN',
                'color' => '#1BDCFF',
            ], //5
            [
                'nombre'   => 'Partido de Accion Nacional Boliviano',
                'sigla' => 'PAN-BOL',
                'color' => '#FCA3A3',
            ], //6
            [
                'nombre'   => 'Libertad y Democracia',
                'sigla' => 'LIBRE',
                'color' => '#FCA3A3',
            ], //7
            
        ];
    }
}
