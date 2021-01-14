<?php

use App\Delegado;
use Illuminate\Database\Seeder;

class DelegadoTableSeeder extends Seeder
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
            Delegado::create($d);
        }
    }
    public function _data() {
        return [
            [
                'idmesa'   => 1,
                'idpersona' => 20,
            ], //1
            [
                'idmesa'   => 2,
                'idpersona' => 19,
            ], //2
            [
                'idmesa'   => 2,
                'idpersona' => 18,
            ], //3
            [
                'idmesa'   => 3,
                'idpersona' => 17,
            ], //4
            [
                'idmesa'   => 4,
                'idpersona' => 16,
            ], //5
            [
                'idmesa'   => 5,
                'idpersona' => 20,
            ], //6
            [
                'idmesa'   => 6,
                'idpersona' => 15,
            ], //7
            [
                'idmesa'   => 7,
                'idpersona' => 14,
            ], //8
            [
                'idmesa'   => 8,
                'idpersona' => 14,
            ], //9
            [
                'idmesa'   => 9,
                'idpersona' => 13,
            ], //10
            [
                'idmesa'   => 10,
                'idpersona' => 12,
            ], //11
            [
                'idmesa'   => 11,
                'idpersona' => 12,
            ], //12
            [
                'idmesa'   => 12,
                'idpersona' => 20,
            ], //13
            [
                'idmesa'   => 13,
                'idpersona' => 22,
            ], //14
            [
                'idmesa'   => 14,
                'idpersona' => 21,
            ], //15
            [
                'idmesa'   => 15,
                'idpersona' => 11,
            ], //16
            [
                'idmesa'   => 16,
                'idpersona' => 10,
            ], //17
            [
                'idmesa'   => 17,
                'idpersona' => 9,
            ], //18
            [
                'idmesa'   => 18,
                'idpersona' => 8,
            ], //19
            [
                'idmesa'   => 19,
                'idpersona' => 7,
            ], //20
            [
                'idmesa'   => 20,
                'idpersona' => 6,
            ], //21
            [
                'idmesa'   => 21,
                'idpersona' => 5,
            ], //22
            [
                'idmesa'   => 22,
                'idpersona' => 4,
            ], //23
            [
                'idmesa'   => 23,
                'idpersona' => 3,
            ], //24
            [
                'idmesa'   => 24,
                'idpersona' => 2,
            ], //25
            [
                'idmesa'   => 25,
                'idpersona' => 1,
            ], //26
            [
                'idmesa'   => 26,
                'idpersona' => 2,
            ], //27
            [
                'idmesa'   => 27,
                'idpersona' => 3,
            ], //28
            [
                'idmesa'   => 28,
                'idpersona' => 4,
            ], //29
            [
                'idmesa'   => 29,
                'idpersona' => 5,
            ], //30
            [
                'idmesa'   => 30,
                'idpersona' => 6,
            ], //31
            [
                'idmesa'   => 31,
                'idpersona' => 7,
            ], //32
            [
                'idmesa'   => 32,
                'idpersona' => 8,
            ], //33
            [
                'idmesa'   => 33,
                'idpersona' => 9,
            ], //34
            [
                'idmesa'   => 34,
                'idpersona' => 10,
            ], //35
            [
                'idmesa'   => 35,
                'idpersona' => 11,
            ], //36
            [
                'idmesa'   => 36,
                'idpersona' => 12,
            ], //37
            [
                'idmesa'   => 37,
                'idpersona' => 13,
            ], //38
            [
                'idmesa'   => 38,
                'idpersona' => 14,
            ], //39
            [
                'idmesa'   => 39,
                'idpersona' => 15,
            ], //40
            [
                'idmesa'   => 40,
                'idpersona' => 16,
            ], //41
            [
                'idmesa'   => 41,
                'idpersona' => 17,
            ], //42
            [
                'idmesa'   => 42,
                'idpersona' => 18,
            ], //43
            [
                'idmesa'   => 43,
                'idpersona' => 19,
            ], //44
            [
                'idmesa'   => 44,
                'idpersona' => 20,
            ], //45
            [
                'idmesa'   => 45,
                'idpersona' => 21,
            ], //46
            [
                'idmesa'   => 46,
                'idpersona' => 22,
            ], //47
            [
                'idmesa'   => 47,
                'idpersona' => 1,
            ], //48
            [
                'idmesa'   => 48,
                'idpersona' => 2,
            ], //49
            [
                'idmesa'   => 49,
                'idpersona' => 3,
            ], //50
            [
                'idmesa'   => 50,
                'idpersona' => 4,
            ], //51
            [
                'idmesa'   => 51,
                'idpersona' => 5,
            ], //52
            [
                'idmesa'   => 52,
                'idpersona' => 6,
            ], //53
            [
                'idmesa'   => 53,
                'idpersona' => 7,
            ], //54
            [
                'idmesa'   => 54,
                'idpersona' => 8,
            ], //55
            [
                'idmesa'   => 55,
                'idpersona' => 9,
            ], //56
            [
                'idmesa'   => 56,
                'idpersona' => 10,
            ], //57
            [
                'idmesa'   => 57,
                'idpersona' => 11,
            ], //58
            [
                'idmesa'   => 58,
                'idpersona' => 12,
            ], //59
            [
                'idmesa'   => 59,
                'idpersona' => 13,
            ], //60
            [
                'idmesa'   => 60,
                'idpersona' => 14,
            ], //61
            [
                'idmesa'   => 61,
                'idpersona' => 15,
            ], //62
            [
                'idmesa'   => 62,
                'idpersona' => 16,
            ], //63
            [
                'idmesa'   => 63,
                'idpersona' => 17,
            ], //64
            [
                'idmesa'   => 64,
                'idpersona' => 18,
            ], //65
            [
                'idmesa'   => 65,
                'idpersona' => 19,
            ], //66
            [
                'idmesa'   => 66,
                'idpersona' => 20,
            ], //67
            [
                'idmesa'   => 67,
                'idpersona' => 21,
            ], //68
            [
                'idmesa'   => 68,
                'idpersona' => 22,
            ], //69
            [
                'idmesa'   => 69,
                'idpersona' => 1,
            ], //70
            [
                'idmesa'   => 70,
                'idpersona' => 2,
            ], //71
        ];
    }
}
