<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateImagenActaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('imagen_acta', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idacta')->unsigned();
            $table->longText('imagen');
            $table->enum('estado', ['A', 'N'])->default('A');
            $table->timestamps();
            $table->foreign('idacta')->references('id')->on('acta')->ondelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('imagen_acta');
    }
}
