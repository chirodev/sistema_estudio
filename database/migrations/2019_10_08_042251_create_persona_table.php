<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePersonaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('persona', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idciudad')->unsigned();
            $table->string('ci')->nullable();
            $table->string('nombre');
            $table->string('apellido');
            $table->string('direccion')->nullable();
            $table->string('telefono')->nullable();
            $table->longText('imagen')->nullable();
            $table->enum('genero', ['F', 'M', 'N'])->default('N');
            $table->enum('estado', ['A', 'N'])->default('A');
            $table->timestamps();
            $table->foreign('idciudad')->references('id')->on('ciudad')->ondelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('persona');
    }
}
