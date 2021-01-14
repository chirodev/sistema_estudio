<?php

use App\User;
use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
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
            User::create($d);
        }
    }
    public function _data() {
        return [
            [
                'nombre'   => 'Admin',
                'apellido' => 'Administrador',
                'usuario' => 'admin',
                'esadmin' => 'A',
                'password' => bcrypt('123456'),
            ], //1
        ];
    }
}
