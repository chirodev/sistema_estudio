<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateActaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('acta', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idpersona')->unsigned();
            $table->string('descripcion')->nullable();
            $table->integer('totalvoto')->nullable();
            $table->integer('totalnulo')->nullable();
            $table->integer('totalblanco')->nullable();
            $table->enum('estado', ['A', 'N'])->default('A');
            $table->timestamps();
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
        Schema::dropIfExists('acta');
    }
}
