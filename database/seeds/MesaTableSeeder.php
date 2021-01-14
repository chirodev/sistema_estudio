<?php

use App\Mesa;
use Illuminate\Database\Seeder;

class MesaTableSeeder extends Seeder
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
            Mesa::create($d);
        }
    }
    public function _data() {
        return [
            [
                'idrecinto'   => 1,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //1
            [
                'idrecinto'   => 1,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //2
            [
                'idrecinto'   => 1,
                'nro' => '3',
                'nombre' => 'Mesa nro.- 3',
            ], //3
            [
                'idrecinto'   => 2,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //4
            [
                'idrecinto'   => 2,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //5
            [
                'idrecinto'   => 3,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //6
            [
                'idrecinto'   => 3,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //7
            [
                'idrecinto'   => 3,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //8
            [
                'idrecinto'   => 3,
                'nro' => '4',
                'nombre' => 'Mesa nro.-4',
            ], //9
            [
                'idrecinto'   => 4,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //10
            [
                'idrecinto'   => 4,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //11
            [
                'idrecinto'   => 5,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //12
            [
                'idrecinto'   => 6,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //13
            [
                'idrecinto'   => 6,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //14
            [
                'idrecinto'   => 6,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //15
            [
                'idrecinto'   => 7,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //16
            [
                'idrecinto'   => 7,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //17
            [
                'idrecinto'   => 8,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //18
            [
                'idrecinto'   => 8,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //19
            [
                'idrecinto'   => 8,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //20
            [
                'idrecinto'   => 9,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //21
            [
                'idrecinto'   => 9,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //22
            [
                'idrecinto'   => 9,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //23
            [
                'idrecinto'   => 10,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //24
            [
                'idrecinto'   => 10,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //25
            [
                'idrecinto'   => 10,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //26
            [
                'idrecinto'   => 10,
                'nro' => '4',
                'nombre' => 'Mesa nro.-4',
            ], //27
            [
                'idrecinto'   => 11,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //28
            [
                'idrecinto'   => 11,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //29
            [
                'idrecinto'   => 12,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //30
            [
                'idrecinto'   => 12,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //31
            [
                'idrecinto'   => 12,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //32
            [
                'idrecinto'   => 13,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //33
            [
                'idrecinto'   => 14,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //34
            [
                'idrecinto'   => 14,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //35
            [
                'idrecinto'   => 15,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //36
            [
                'idrecinto'   => 16,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //37
            [
                'idrecinto'   => 17,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //38
            [
                'idrecinto'   => 17,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //39
            [
                'idrecinto'   => 18,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //40
            [
                'idrecinto'   => 18,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //41
            [
                'idrecinto'   => 18,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //42
            [
                'idrecinto'   => 18,
                'nro' => '4',
                'nombre' => 'Mesa nro.-4',
            ], //43
            [
                'idrecinto'   => 19,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //44
            [
                'idrecinto'   => 19,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //45
            [
                'idrecinto'   => 20,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //46
            [
                'idrecinto'   => 21,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //47
            [
                'idrecinto'   => 21,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //48
            [
                'idrecinto'   => 21,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //49
            [
                'idrecinto'   => 22,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //50
            [
                'idrecinto'   => 23,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //51
            [
                'idrecinto'   => 23,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //52
            [
                'idrecinto'   => 24,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //53
            [
                'idrecinto'   => 25,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //54
            [
                'idrecinto'   => 25,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //55
            [
                'idrecinto'   => 25,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //56
            [
                'idrecinto'   => 25,
                'nro' => '4',
                'nombre' => 'Mesa nro.-4',
            ], //57
            [
                'idrecinto'   => 26,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //58
            [
                'idrecinto'   => 26,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //59
            [
                'idrecinto'   => 27,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //60
            [
                'idrecinto'   => 28,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //61
            [
                'idrecinto'   => 28,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //62
            [
                'idrecinto'   => 28,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //63
            [
                'idrecinto'   => 29,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //64
            [
                'idrecinto'   => 29,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //65
            [
                'idrecinto'   => 30,
                'nro' => '1',
                'nombre' => 'Mesa nro.-1',
            ], //66
            [
                'idrecinto'   => 30,
                'nro' => '2',
                'nombre' => 'Mesa nro.-2',
            ], //67
            [
                'idrecinto'   => 30,
                'nro' => '3',
                'nombre' => 'Mesa nro.-3',
            ], //68
            [
                'idrecinto'   => 30,
                'nro' => '4',
                'nombre' => 'Mesa nro.-4',
            ], //69
            [
                'idrecinto'   => 30,
                'nro' => '5',
                'nombre' => 'Mesa nro.-5',
            ], //70
        ];
    }
}
