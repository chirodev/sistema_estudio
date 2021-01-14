<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return redirect('/login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/token', 'HomeController@token');
Route::post('/logout', 'HomeController@logout');

Route::get('/sistema_eventos/cliente/index', 'HomeController@index');
Route::get('/sistema_eventos/cliente/create', 'HomeController@index');
Route::get('/sistema_eventos/cliente/edit/{id}', 'HomeController@index');

Route::get('/cliente/index', 'ClienteController@index');
Route::get('/cliente/create', 'ClienteController@create');
Route::post('/cliente/store', 'ClienteController@store');
Route::get('/cliente/edit/{id}', 'ClienteController@edit');
Route::post('/cliente/update', 'ClienteController@update');




Route::get('/eleccion_electoral/ciudadano/index', 'HomeController@index');
Route::get('/eleccion_electoral/ciudadano/create', 'HomeController@index');
Route::get('/eleccion_electoral/ciudadano/edit/{id}', 'HomeController@index');

Route::get('/ciudadano/index', 'PersonaController@index');
Route::get('/ciudadano/create', 'PersonaController@create');
Route::post('/ciudadano/store', 'PersonaController@store');
Route::get('/ciudadano/edit/{id}', 'PersonaController@edit');
Route::post('/ciudadano/update', 'PersonaController@update');

Route::get('/eleccion_electoral/partido_politico/index', 'HomeController@index');
Route::get('/eleccion_electoral/partido_politico/create', 'HomeController@index');
Route::get('/eleccion_electoral/partido_politico/edit/{id}', 'HomeController@index');
Route::get('/eleccion_electoral/partido_politico/show/{id}', 'HomeController@index');

Route::get('/partido_politico/index', 'PartidoController@index');
Route::post('/partido_politico/store', 'PartidoController@store');
Route::get('/partido_politico/edit/{id}', 'PartidoController@edit');
Route::post('/partido_politico/update', 'PartidoController@update');
Route::get('/partido_politico/show/{id}', 'PartidoController@show');

Route::get('/eleccion_electoral/recinto/index', 'HomeController@index');
Route::get('/eleccion_electoral/recinto/create', 'HomeController@index');
Route::get('/eleccion_electoral/recinto/edit/{id}', 'HomeController@index');
Route::get('/eleccion_electoral/recinto/show/{id}', 'HomeController@index');

Route::get('/recinto/index', 'RecintoController@index');
Route::get('/recinto/create', 'RecintoController@create');
Route::post('/recinto/store', 'RecintoController@store');
Route::get('/recinto/edit/{id}', 'RecintoController@edit');
Route::post('/recinto/update', 'RecintoController@update');
Route::get('/recinto/show/{id}', 'RecintoController@show');

Route::get('/eleccion_electoral/mesa/index', 'HomeController@index');
Route::get('/eleccion_electoral/mesa/create', 'HomeController@index');


Route::get('/mesa/index', 'MesaController@index');
Route::get('/mesa/create', 'MesaController@create');
Route::post('/mesa/store', 'MesaController@store');
Route::get('/mesa/get_mesarecinto/{id}', 'MesaController@get_mesarecinto');


Route::get('/eleccion_electoral/candidato/create', 'HomeController@index');

Route::get('/candidato/create', 'CandidatoController@create');
Route::get('/candidato/get_candidato/{id}', 'CandidatoController@get_candidato');
Route::post('/candidato/store', 'CandidatoController@store');


Route::get('/eleccion_electoral/acta/index', 'HomeController@index');
Route::get('/eleccion_electoral/acta/create', 'HomeController@index');

Route::get('/acta/index', 'ActaController@index');
Route::get('/acta/create', 'ActaController@create');
Route::get('/acta/get_mesa/{id}', 'ActaController@get_mesa');
Route::post('/acta/store', 'ActaController@store');


Route::get('/eleccion_electoral/delegado/index', 'HomeController@index');
Route::get('/eleccion_electoral/delegado/create', 'HomeController@index');

Route::get('/delegado/index', 'DelegadoController@index');


Route::get('/voto/get_general', 'VotoController@get_general');





