<?php

namespace App\Http\Controllers;

use App\Mesa;
use App\Recinto;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RecintoController extends Controller
{

    public function index() {
        try {

            $data = DB::table('recinto as r')
                ->join('ciudad as c', 'r.idciudad', '=', 'c.id')
                ->select('c.nombre as ciudad', 'r.id', 'r.nombre', 'r.ubicacion', 'r.imagen')
                ->where('r.estado', '=', 'A')
                ->orderBy('c.id', 'desc')
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

            $nombre = $request->input('nombre');
            $direccion = $request->input('direccion');
            $idciudad = $request->input('idciudad');
            $imagen = $request->input('imagen');

            $data = new Recinto();
            $data->nombre = $nombre;
            $data->idciudad = $idciudad;
            $data->ubicacion = $direccion;
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

            $data = DB::table('recinto')
                ->where('id', '=', $id)
                ->first();

            return response()->json([
                'response' => 1,
                'data' => $data,
                'ciudad' => $ciudad,
            ]);

        }catch(\Exception $e) {
            return response()->json([
                'response' => 0,
            ]);
        }
    }

    public function show($id) {
        try {

            $ciudad = DB::table('ciudad')
                ->where([['estado', '=', 'A'], ['id', '<>', '1']])
                ->orderBy('id', 'asc')
                ->get();

            $data = DB::table('recinto')
                ->where('id', '=', $id)
                ->first();

            $mesa = DB::table('mesa')
                ->where('idrecinto', '=', $id)
                ->where('estado', '=', 'A')
                ->get();

            return response()->json([
                'response' => 1,
                'data' => $data,
                'ciudad' => $ciudad,
                'mesa' => $mesa,
            ]);

        }catch(\Exception $e) {
            return response()->json([
                'response' => 0,
            ]);
        }
    }

    public function update(Request $request) {
        
        try {
            DB::beginTransaction();

            $nombre = $request->input('nombre');
            $direccion = $request->input('direccion');
            $idciudad = $request->input('idciudad');
            $imagen = $request->input('imagen');

            $id = $request->input('id');

            $data = Recinto::findOrFail($id);
            $data->nombre = $nombre;
            $data->idciudad = $idciudad;
            $data->ubicacion = $direccion;
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
