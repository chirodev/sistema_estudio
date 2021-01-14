<?php

namespace App\Http\Controllers;

use App\Persona;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Image;

class PersonaController extends Controller
{

    public function index() {
        try {

            $data = DB::table('persona as p')
                ->join('ciudad as c', 'p.idciudad', '=', 'c.id')
                ->select('c.nombre as ciudad', 'p.id', 'p.nombre', 'p.apellido', 
                    'p.genero', 'p.imagen', 'p.telefono', 'p.genero'
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
        try {

            $data = DB::table('ciudad')
                ->where([['estado', '=', 'A'], ['id', '<>', '1']])
                ->orderBy('id', 'asc')
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

    public function store(Request $request) {
        try {
            DB::beginTransaction();

            $ci = $request->input('ci');
            $nombre = $request->input('nombre');
            $apellido = $request->input('apellido');
            $idciudad = $request->input('idciudad');
            $direccion = $request->input('direccion');
            $telefono = $request->input('telefono');
            $genero = $request->input('genero');
            $imagen = $request->input('imagen');

            $data = new Persona();
            $data->ci = $ci;
            $data->nombre = $nombre;
            $data->apellido = $apellido;
            $data->idciudad = $idciudad;
            $data->direccion = $direccion;
            $data->telefono = $telefono;
            $data->genero = $genero;
            $data->imagen = $imagen;

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

            $ciudad = DB::table('ciudad')
                ->where([['estado', '=', 'A'], ['id', '<>', '1']])
                ->orderBy('id', 'asc')
                ->get();

            $data = DB::table('persona')
                ->where('id', '=', $id)
                ->first();


            return response()->json([
                'response' => 1,
                'data' => $data,
                'ciudad' => $ciudad,
            ]);

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
            $apellido = $request->input('apellido');
            $idciudad = $request->input('idciudad');
            $direccion = $request->input('direccion');
            $telefono = $request->input('telefono');
            $genero = $request->input('genero');
            $imagen = $request->input('imagen');
            $id = $request->input('id');

            $data = Persona::findOrFail($id);
            $data->ci = $ci;
            $data->nombre = $nombre;
            $data->apellido = $apellido;
            $data->idciudad = $idciudad;
            $data->direccion = $direccion;
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
