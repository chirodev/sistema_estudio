<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVotoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('voto', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idmesa')->unsigned();
            $table->integer('idacta')->unsigned();
            $table->integer('idpartido')->unsigned()->nullable();
            $table->integer('cantidad')->nullable();
            $table->enum('estado', ['A', 'N', 'B'])->default('A');
            $table->timestamps();
            $table->foreign('idmesa')->references('id')->on('mesa')->ondelete('cascade');
            $table->foreign('idacta')->references('id')->on('acta')->ondelete('cascade');
            $table->foreign('idpartido')->references('id')->on('partido')->ondelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('voto');
    }
}
