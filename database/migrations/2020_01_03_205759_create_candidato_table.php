<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCandidatoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('candidato', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idpartido')->unsigned();
            $table->integer('idpersona')->unsigned();
            $table->string('rol');
            $table->timestamps();
            $table->foreign('idpartido')->references('id')->on('partido')->ondelete('cascade');
            $table->foreign('idpersona')->references('id')->on('persona')->ondelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('candidato');
    }
}
