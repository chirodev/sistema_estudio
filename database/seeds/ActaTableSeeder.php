<?php

use App\Acta;
use Illuminate\Database\Seeder;

class ActaTableSeeder extends Seeder
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
            Acta::create($d);
        }
    }
    public function _data()
    {
        return [
            [
                'idpersona' => 1,
                'totalvoto' => 20,
                'totalnulo' => 5,
                'totalblanco'=>5,
                'estado' => 'A',
            ], //1
            [
                'idpersona' => 2,
                'totalvoto' => 50,
                'totalnulo' => 10,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //2
            [
                'idpersona' => 3,
                'totalvoto' => 60,
                'totalnulo' => 3,
                'totalblanco' => 10,
                'estado' => 'A',
            ], //3
            [
                'idpersona' => 4,
                'totalvoto' => 80,
                'totalnulo' => 10,
                'totalblanco' => 0,
                'estado' => 'A',
            ], //4
            [
                'idpersona' => 5,
                'totalvoto' => 66,
                'totalnulo' => 20,
                'totalblanco' => 3,
                'estado' => 'A',
            ], //5
            [
                'idpersona' => 6,
                'totalvoto' => 90,
                'totalnulo' => 3,
                'totalblanco' => 20,
                'estado' => 'A',
            ], //6
            [
                'idpersona' => 7,
                'totalvoto' => 80,
                'totalnulo' => 10,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //7
            [
                'idpersona' => 8,
                'totalvoto' => 90,
                'totalnulo' => 4,
                'totalblanco' => 10,
                'estado' => 'A',
            ], //8
            [
                'idpersona' => 9,
                'totalvoto' => 60,
                'totalnulo' => 5,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //9
            [
                'idpersona' => 10,
                'totalvoto' => 30,
                'totalnulo' => 3,
                'totalblanco' => 6,
                'estado' => 'A',
            ], //10
            [
                'idpersona' => 11,
                'totalvoto' => 70,
                'totalnulo' => 6,
                'totalblanco' => 3,
                'estado' => 'A',
            ], //11
            [
                'idpersona' => 12,
                'totalvoto' => 90,
                'totalnulo' => 2,
                'totalblanco' => 15,
                'estado' => 'A',
            ], //12
            [
                'idpersona' => 13,
                'totalvoto' => 80,
                'totalnulo' => 6,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //13
            [
                'idpersona' => 14,
                'totalvoto' => 60,
                'totalnulo' => 6,
                'totalblanco' => 10,
                'estado' => 'A',
            ], //14
            [
                'idpersona' => 15,
                'totalvoto' => 86,
                'totalnulo' => 6,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //15
            [
                'idpersona' => 16,
                'totalvoto' => 90,
                'totalnulo' => 10,
                'totalblanco' => 6,
                'estado' => 'A',
            ], //16
            [
                'idpersona' => 17,
                'totalvoto' => 95,
                'totalnulo' => 6,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //17
            [
                'idpersona' => 18,
                'totalvoto' => 20,
                'totalnulo' => 5,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //18
            [
                'idpersona' => 19,
                'totalvoto' => 80,
                'totalnulo' => 2,
                'totalblanco' => 10,
                'estado' => 'A',
            ], //19
            [
                'idpersona' => 20,
                'totalvoto' => 60,
                'totalnulo' => 10,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //20
            [
                'idpersona' => 21,
                'totalvoto' => 40,
                'totalnulo' => 3,
                'totalblanco' => 12,
                'estado' => 'A',
            ], //21
            [
                'idpersona' => 22,
                'totalvoto' => 20,
                'totalnulo' => 5,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //22
            [
                'idpersona' => 22,
                'totalvoto' => 79,
                'totalnulo' => 9,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //23
            [
                'idpersona' => 2,
                'totalvoto' => 46,
                'totalnulo' => 2,
                'totalblanco' => 7,
                'estado' => 'A',
            ], //24
            [
                'idpersona' => 3,
                'totalvoto' => 48,
                'totalnulo' => 6,
                'totalblanco' => 3,
                'estado' => 'A',
            ], //25
            [
                'idpersona' => 4,
                'totalvoto' => 67,
                'totalnulo' => 8,
                'totalblanco' => 1,
                'estado' => 'A',
            ], //26
            [
                'idpersona' => 5,
                'totalvoto' => 40,
                'totalnulo' => 20,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //27
            [
                'idpersona' => 6,
                'totalvoto' => 40,
                'totalnulo' => 6,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //28

            [
                'idpersona' => 7,
                'totalvoto' => 60,
                'totalnulo' => 15,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //29

            [
                'idpersona' => 8,
                'totalvoto' => 60,
                'totalnulo' => 3,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //30

            [
                'idpersona' => 9,
                'totalvoto' => 56,
                'totalnulo' => 9,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //31

            [
                'idpersona' => 10,
                'totalvoto' => 80,
                'totalnulo' => 3,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //32

            [
                'idpersona' => 11,
                'totalvoto' => 89,
                'totalnulo' => 6,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //33

            [
                'idpersona' => 13,
                'totalvoto' => 32,
                'totalnulo' => 4,
                'totalblanco' => 3,
                'estado' => 'A',
            ], //34

            [
                'idpersona' => 14,
                'totalvoto' => 120,
                'totalnulo' => 20,
                'totalblanco' => 4,
                'estado' => 'A',
            ], //35

            [
                'idpersona' => 15,
                'totalvoto' => 30,
                'totalnulo' => 3,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //36

            [
                'idpersona' => 16,
                'totalvoto' => 70,
                'totalnulo' =>5,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //37
            [
                'idpersona' => 17,
                'totalvoto' => 90,
                'totalnulo' => 8,
                'totalblanco' => 6,
                'estado' => 'A',
            ], //38
            [
                'idpersona' => 18,
                'totalvoto' => 70,
                'totalnulo' => 6,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //39
            [
                'idpersona' => 19,
                'totalvoto' => 80,
                'totalnulo' => 9,
                'totalblanco' => 3,
                'estado' => 'A',
            ], //40
            [
                'idpersona' => 20,
                'totalvoto' => 80,
                'totalnulo' => 3,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //41
            [
                'idpersona' => 21,
                'totalvoto' => 60,
                'totalnulo' => 3,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //42
            [
                'idpersona' => 22,
                'totalvoto' => 86,
                'totalnulo' => 3,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //43
            [
                'idpersona' => 1,
                'totalvoto' => 60,
                'totalnulo' => 3,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //44
            [
                'idpersona' => 4,
                'totalvoto' => 86,
                'totalnulo' => 3,
                'totalblanco' => 3,
                'estado' => 'A',
            ], //45
            [
                'idpersona' => 2,
                'totalvoto' => 80,
                'totalnulo' => 6,
                'totalblanco' => 8,
                'estado' => 'A',
            ], //46
            [
                'idpersona' => 3,
                'totalvoto' => 67,
                'totalnulo' => 9,
                'totalblanco' => 8,
                'estado' => 'A',
            ], //47
            [
                'idpersona' => 4,
                'totalvoto' => 90,
                'totalnulo' => 10,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //48
            [
                'idpersona' => 5,
                'totalvoto' => 53,
                'totalnulo' => 3,
                'totalblanco' => 2,
                'estado' => 'A',
            ], //49
            [
                'idpersona' => 6,
                'totalvoto' => 70,
                'totalnulo' => 6,
                'totalblanco' => 5,
                'estado' => 'A',
            ], //50


        ];
    }
}
