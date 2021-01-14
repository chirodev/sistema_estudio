<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMesaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mesa', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idrecinto')->unsigned();
            $table->string('nro');
            $table->string('nombre');
            $table->longText('imagen')->nullable();
            $table->enum('estado', ['A', 'N'])->default('A');
            $table->timestamps();
            $table->foreign('idrecinto')->references('id')->on('recinto')->ondelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mesa');
    }
}
