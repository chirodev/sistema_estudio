<?php

namespace App\Http\Controllers;

use App\Persona;
use App\User;
use App\Cliente;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Image;

class ClienteController extends Controller
{

    public function index() {
        try {

            $data = DB::table('cliente as p')
                ->select( 'p.id', 'p.nombre', 'p.apellido', 
                    'p.genero', 'p.imagenuno','p.imagendos','p.imagentres', 'p.telefono', 'p.ci'
                )
                ->where('p.estado', '=', 'A')
                ->orderBy('p.id', 'desc')
                ->get();

            return response()->json([
                'data' => $data,
                'response' => 1,
            ]);

        }catch(\Exception $e) {
            return response()->json([
                'response' => 0,
            ]);
        }
    }

    public function create() {
       
    }

    public function store(Request $request) {
        try {
            DB::beginTransaction();

            $ci = $request->input('ci');
            $nombre = $request->input('nombre');
            $apellido = $request->input('apellido');
            $telefono = $request->input('telefono');
            $genero = $request->input('genero');
            $email = $request->input('email');
            $imagenuno = $request->input('imagenuno');
            $imagendos = $request->input('imagendos');
            $imagentres = $request->input('imagentres');

            $usuario = $request->input('usuario');
            $password = bcrypt( $request->input('password') );

            $user = new User();
            $user->nombre = $nombre;
            $user->apellido = $apellido;
            $user->email = $email;
            $user->usuario = $usuario;
            $user->password = $password;
            $user->imagen = $imagenuno;
            $user->save();

            $data = new Cliente();
            $data->idusuario = $user->id;
            $data->ci = $ci;
            $data->nombre = $nombre;
            $data->apellido = $apellido;
            $data->telefono = $telefono;
            $data->genero = $genero;
            $data->email = $email;
            $data->imagenuno = $imagenuno;
            $data->imagendos = $imagendos;
            $data->imagentres = $imagentres;

            $data->save();

            DB::commit();

            return response()->json([
                'response' => 1,
            ]);

        }catch(\Exception $th) {
            DB::rollBack();
            return response()->json([
                'response' => 0,
                'message' => 'Error al procesar la solicitud',
                'error' => [
                    'file'    => $th->getFile(),
                    'line'    => $th->getLine(),
                    'message' => $th->getMessage()
                ]
            ]);
        }
    }

    public function edit($id) {
        
        try {

           

            $data = DB::table('cliente')
                ->where('id', '=', $id)
                ->first();


        }catch(\Exception $th) {
            
            return response()->json([
                'response' => 0,
                'message' => 'Error al procesar la solicitud',
                'error' => [
                    'file'    => $th->getFile(),
                    'line'    => $th->getLine(),
                    'message' => $th->getMessage()
                ]
            ]);
        }
    }

    public function update(Request $request) {
        try {
            DB::beginTransaction();

            $ci = $request->input('ci');
            $nombre = $request->input('nombre');
            $apellido = $request->input('apellido');;
            $telefono = $request->input('telefono');
            $genero = $request->input('genero');
            $email = $request->input('email');
            $password = $request->input('password');
            $imagen = $request->input('imagen');
            $id = $request->input('id');

            $data = cliente::findOrFail($id);
            $data->ci = $ci;
            $data->nombre = $nombre;
            $data->apellido = $apellido;
            $data->email = $email;
            $data->password = $password;
            $data->telefono = $telefono;
            $data->genero = $genero;
            if ($imagen != null) {
                $data->imagen = $imagen;
            }

            $data->update();

            DB::commit();

            return response()->json([
                'response' => 1,
            ]);

        }catch(\Exception $th) {
            DB::rollBack();
            return response()->json([
                'response' => 0,
                'message' => 'Error al procesar la solicitud',
                'error' => [
                    'file'    => $th->getFile(),
                    'line'    => $th->getLine(),
                    'message' => $th->getMessage()
                ]
            ]);
        }
    }
}
