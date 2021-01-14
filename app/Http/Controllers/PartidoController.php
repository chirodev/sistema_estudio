<?php

namespace App\Http\Controllers;

use App\Partido;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Image;

class PartidoController extends Controller
{

    public function index() {
        try {

            $data = DB::table('partido as p')
                ->select('p.id', 'p.nombre', 'p.sigla', 'p.imagen' )
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
    
    public function store(Request $request) {
        
        try {
            DB::beginTransaction();

            $nombre = $request->input('nombre');
            $sigla = $request->input('sigla');
            $color = $request->input('color');
            $imagen = $request->input('imagen');

            $value = DB::table('partido')
                ->where('sigla', '=', $sigla)
                ->where('estado', '=', 'A')
                ->get();

            if (sizeof($value) > 0) {
                return response()->json([
                    'response' => -1,
                ]);
            }


            $data = new Partido();
            $data->nombre = $nombre;
            $data->sigla = $sigla;
            $data->color = $color;
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

            $data = DB::table('partido')
                ->where('id', '=', $id)
                ->first();


            return response()->json([
                'response' => 1,
                'data' => $data,
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

            $nombre = $request->input('nombre');
            $sigla = $request->input('sigla');
            $color = $request->input('color');
            $imagen = $request->input('imagen');
            $id = $request->input('id');

            $data = Partido::findOrFail($id);

            if ($data->sigla != $sigla) {

                $value = DB::table('partido')
                    ->where('sigla', '=', $sigla)
                    ->where('estado', '=', 'A')
                    ->get();

                if (sizeof($value) > 0) {
                    return response()->json([
                        'response' => -1,
                    ]);
                }

            }

            $data->nombre = $nombre;
            $data->sigla = $sigla;
            $data->color = $color;
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

    public function show($id) {
        
        try {

            $data = DB::table('partido')
                ->where('id', '=', $id)
                ->first();

            $candidato = DB::table('candidato as cand')
                ->leftJoin('persona as pers', 'cand.idpersona', '=', 'pers.id')
                ->select('pers.id', 'pers.ci', 'pers.nombre', 'pers.apellido', 'cand.rol')
                ->where('cand.idpartido', '=', $id)
                ->get();


            return response()->json([
                'response' => 1,
                'data' => $data,
                'candidato' => $candidato,
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

}
