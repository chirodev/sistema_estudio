<?php

use App\Recinto;
use Illuminate\Database\Seeder;

class RecintoTableSeeder extends Seeder
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
            Recinto::create($d);
        }
    }
    public function _data() {
        return [
            [
                'idciudad' => 2,
                'nombre' => 'Col. Don Bosco',
                'ubicacion' => '2do anillo C/palmito #375',
            ], //1
            [
                'idciudad' => 2,
                'nombre' => 'Col. German Busch',
                'ubicacion' => '4do anillo C/Venezuela #502',
            ], //2
            [
                'idciudad' => 2,
                'nombre' => 'Col. Aleman',
                'ubicacion' => '2do anillo C/Enrique Finot #789',
            ], //3
            [
                'idciudad' => 2,
                'nombre' => 'UAGRM',
                'ubicacion' => '1er anillo C/Mexico #123',
            ], //4
            [
                'idciudad' => 2,
                'nombre' => 'Col. 1er de Mayo',
                'ubicacion' => '9no anillo C/Las Vegas #709',
            ], //5
            [
                'idciudad' => 2,
                'nombre' => 'Col. Americano',
                'ubicacion' => '8vo anillo C/Paraguay #736',
            ], //6
            [
                'idciudad' => 3,
                'nombre' => 'Esc. General Barriento',
                'ubicacion' => 'B/Tajibo C/Las Vegas #452',
            ], //7
            [
                'idciudad' => 3,
                'nombre' => 'Esc. San Matias',
                'ubicacion' => 'B/Los Pios C/Las palmeritas #422',
            ], //8
            [
                'idciudad' => 3,
                'nombre' => 'Esc. General Avaroa',
                'ubicacion' => 'B/Tejado C/Las Piñas #432',
            ], //9
            [
                'idciudad' => 3,
                'nombre' => 'Col. San Pablo',
                'ubicacion' => 'B/Suiza C/Las Petas #412',
            ], //10
            [
                'idciudad' => 3,
                'nombre' => 'Esc. San Francisco',
                'ubicacion' => 'B/Andino C/Beni #333',
            ], //11
            [
                'idciudad' => 3,
                'nombre' => 'Univ. San Xavier',
                'ubicacion' => 'B/Totora C/Claveles #200',
            ], //12
            [
                'idciudad' => 4,
                'nombre' => 'Col. Japones ',
                'ubicacion' => 'B/Tokio C/Ayacucho #352',
            ], //13
            [
                'idciudad' => 4,
                'nombre' => 'Col. Jardin de Dios ',
                'ubicacion' => 'B/Paraiso C/Adan #302',
            ], //14
            [
                'idciudad' => 4,
                'nombre' => 'Col. Maria Auxiliadora ',
                'ubicacion' => 'B/Torotoro C/Alemana #213',
            ], //15
            [
                'idciudad' => 5,
                'nombre' => 'Univ. Unibol ',
                'ubicacion' => 'B/ Las MaravillasC/Camacho #462',
            ], //16
            [
                'idciudad' => 5,
                'nombre' => 'Univ. Chuquisica ',
                'ubicacion' => 'B/ Los Guapases C/Amagro #482',
            ], //17
            [
                'idciudad' => 5,
                'nombre' => 'Col. Frances ',
                'ubicacion' => 'B/ Las Hamacas C/Tulipanes #620',
            ], //18
            [
                'idciudad' => 6,
                'nombre' => 'Esc. Eduardo Avaroa',
                'ubicacion' => 'B/ Los Guapos C/pinos #654',
            ], //19
            [
                'idciudad' => 6,
                'nombre' => 'Esc. Angeles',
                'ubicacion' => 'B/ Amazonas C/La paz #634',
            ], //20
            [
                'idciudad' => 6,
                'nombre' => 'Col. Austria',
                'ubicacion' => 'B/Las tinajas C/Jimenez #644',
            ], //21
            [
                'idciudad' => 7,
                'nombre' => 'Col. Fe y alegria',
                'ubicacion' => 'B/santa Fe C/ Rodriguez #777',
            ], //22
            [
                'idciudad' => 7,
                'nombre' => 'Col. San Luis',
                'ubicacion' => 'B/Misiones del Carmen C/ Piraña #712',
            ], //23
            [
                'idciudad' => 7,
                'nombre' => 'Univ. Univalles',
                'ubicacion' => 'B/Moscu C/ San Aurelio #717',
            ], //24
            [
                'idciudad' => 8,
                'nombre' => 'Univ. San Simon',
                'ubicacion' => 'B/Alegria C/ Sucre #320',
            ], //25
            [
                'idciudad' => 8,
                'nombre' => 'Col. San Jose',
                'ubicacion' => 'B/Merced C/ Cochabamba #326',
            ], //26
            [
                'idciudad' => 8,
                'nombre' => 'Col. San Tomas',
                'ubicacion' => 'B/Teresa C/ Alemana #330',
            ], //27
            [
                'idciudad' => 9,
                'nombre' => 'Col. 16 de Julio',
                'ubicacion' => 'B/Los Chacos C/ Murillo #856',
            ], //28
            [
                'idciudad' => 9,
                'nombre' => 'Col. Andres Ibañez',
                'ubicacion' => 'B/Los guayabos C/ Guatemala #836',
            ], //29
            [
                'idciudad' => 10,
                'nombre' => 'Col. Calver',
                'ubicacion' => 'B/santa Maria C/ Argentina #369',
            ], //30

        ];
    }
}
