<?php

namespace App\Http\Controllers;

use App\Mesa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MesaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {

            $data = DB::table('mesa as m')
                ->join('recinto as r', 'm.idrecinto', '=', 'r.id')
                ->select('r.nombre as recinto', 'r.ubicacion', 'm.id', 'm.nro', 'm.nombre')
                ->where('m.estado', '=', 'A')
                ->orderBy('r.id', 'asc')
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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        try {

            $recinto = DB::table('recinto')
                ->where('estado', '=', 'A')
                ->get();

            return response()->json([
                'response' => 1,
                'recinto' => $recinto,
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

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            DB::beginTransaction();

            $nombre = $request->input('nombre');
            $nro = $request->input('nro');
            $idrecinto = $request->input('idrecinto');
            $imagen = $request->input('imagen');

            $data = new Mesa();
            $data->nombre = $nombre;
            $data->nro = $nro;
            $data->idrecinto = $idrecinto;
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

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function get_mesarecinto($id)
    {
        try {

            $mesa = DB::table('mesa')
                ->where('idrecinto', '=', $id)
                ->where('estado', '=', 'A')
                ->get();

            return response()->json([
                'response' => 1,
                'mesa' => $mesa,
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
