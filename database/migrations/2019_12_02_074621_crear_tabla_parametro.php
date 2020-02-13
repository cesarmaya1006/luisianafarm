<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CrearTablaParametro extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('parametro', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre_conjunto',255)->default('Conjunto de prueba');
            $table->string('direccion_conjunto',255)->default('direccion conjunto');
            $table->string('telefono_conjunto',255)->default('(031 555 44 33)');
            $table->string('email_conjunto',255)->default('emailprueba@conjunto.com');
            $table->string('fondo_conjunto',255)->default('imagen-principal.jpg');
            $table->string('logo_conjunto',255)->default('logo-principal.png');
            $table->string('slogan_conjunto',255)->default('Slogan Principal del Conjunto');
            $table->timestamps();
            $table->charset = 'utf8';
            $table->collation = 'utf8_spanish_ci';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('parametro');
    }
}
