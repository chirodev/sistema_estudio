<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRecintoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recinto', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('idciudad')->unsigned();
            $table->string('nombre');
            $table->string('ubicacion')->nullable();
            $table->longText('imagen')->nullable();
            $table->enum('estado', ['A', 'N'])->default('A');
            $table->date('fecha')->nullable();
            $table->time('hora')->nullable();
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
        Schema::dropIfExists('recinto');
    }
}
