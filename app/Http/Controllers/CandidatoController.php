<?php

namespace App\Http\Controllers;

use App\Candidato;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CandidatoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        try {

            $data = DB::table('partido')
                ->where('estado', '=', 'A')
                ->orderBy('id')
                ->get();

            $persona = DB::table('persona as pers')
                ->where(DB::raw('(SELECT COUNT(*) FROM candidato as cand WHERE cand.idpersona = pers.id)'), '=', '0')
                ->where('pers.estado', '=', 'A')
                ->get();

            return response()->json([
                'response' => 1,
                'data' => $data,
                'persona' => $persona,
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

            $idpersona = $request->input('idpersona');
            $idpartido = $request->input('idpartido');
            $rol = $request->input('rol');

            $data = new Candidato();
            $data->rol = $rol;
            $data->idpersona = $idpersona;
            $data->idpartido = $idpartido;

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

    public function get_candidato($id)
    {
        try {

            $data = DB::table('candidato as cand')
                ->leftJoin('persona as pers', 'cand.idpersona', '=', 'pers.id')
                ->select('pers.id', 'pers.ci', 'pers.nombre', 'pers.apellido', 'cand.rol')
                ->where('cand.idpartido', '=', $id)
                ->get();

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

}
