<?php

namespace App\Http\Controllers;

use App\Acta;
use App\ActaImagen;
use App\QR;
use App\Voto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use QrCode;

class ActaController extends Controller
{

    public function index() {
        try {

            $data = DB::table('acta as act')
                ->leftJoin('persona as pers', 'act.idpersona', '=', 'pers.id')
                ->leftJoin('qr as q', 'act.id', '=', 'q.idacta')
                ->select('pers.nombre', 'pers.apellido', 'act.id', 'act.descripcion', 'act.totalvoto',
                    'q.descripcion as query', 
                    DB::raw("(SELECT rec.nombre FROM voto vot, mesa me, recinto rec 
                        WHERE act.id = vot.idacta and vot.idmesa = me.id and me.idrecinto = rec.id ORDER BY me.id DESC LIMIT 1) as recinto"),
                        
                    DB::raw("(SELECT rec.ubicacion FROM voto vot, mesa me, recinto rec 
                        WHERE vot.idacta = act.id and vot.idmesa = me.id and me.idrecinto = rec.id ORDER BY me.id DESC LIMIT 1) as direccion")
                )
                ->where('act.estado', '=', 'A')
                ->orderBy('act.id', 'desc')
                ->get();

            return response()->json([
                'data' => $data,
                'response' => 1,
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

    public function create()
    {
        try {

            $partido = DB::table('partido')
                ->where('estado', '=', 'A')
                ->orderBy('id')
                ->get();

            $persona = DB::table('persona as pers')
                ->where(DB::raw('(SELECT COUNT(*) FROM candidato as cand WHERE cand.idpersona = pers.id)'), '=', '0')
                ->where('pers.estado', '=', 'A')
                ->orderBy('pers.id')
                ->get();

            $recinto = DB::table('recinto')
                ->where('estado', '=', 'A')
                ->orderBy('id')
                ->get();

            $mesa = [];

            if (sizeof($recinto) > 0) {
                $mesa = DB::table('mesa')
                    ->where('idrecinto', '=', $recinto[0]->id)
                    ->where('estado', '=', 'A')
                    ->orderBy('id')
                    ->get();
            }

            return response()->json([
                'response' => 1,
                'partido' => $partido,
                'persona' => $persona,
                'recinto' => $recinto,
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


    public function get_mesa($id)
    {
        try {

            $mesa = DB::table('mesa')
                ->where('idrecinto', '=', $id)
                ->where('estado', '=', 'A')
                ->orderBy('id')
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

    public function store(Request $request) {

        try {
            DB::beginTransaction();

            $idpersona = $request->input('idpersona');
            $idmesa = $request->input('idmesa');
            $array_partido = json_decode($request->input('array_partido', '[]'));
            $imagen = $request->input('imagen');

            $data = new Acta();
            $data->idpersona = $idpersona;
            $data->descripcion = null;
            $data->totalvoto = 0;
            $data->totalnulo = 0;
            $data->totalblanco = 0;
            $data->estado = 'A';
            $data->save();

            $total = 0;

            foreach ($array_partido as $partido) {
                $detalle = new Voto();
                $detalle->idmesa = $idmesa;
                $detalle->idacta = $data->id;
                $detalle->idpartido = $partido->id;
                $detalle->cantidad = $partido->cantidad;

                $detalle->save();

                $total = $total + $partido->cantidad * 1;

            }

            if ($imagen != null) {
                $image = new ActaImagen();
                $image->idacta = $data->id;
                $image->imagen = $imagen;
                $image->save();
            }

            $data->totalvoto = $total;
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
