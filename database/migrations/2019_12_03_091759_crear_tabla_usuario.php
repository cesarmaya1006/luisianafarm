<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CrearTablaUsuario extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usuario', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('tipo_docu_id');
            $table->foreign('tipo_docu_id', 'fk_usuariorol_tipo_docu')->references('id')->on('tipo_docu')->onDelete('restrict')->onUpdate('restrict');
            $table->string('identificacion',100);
            $table->string('nombres',100);
            $table->string('apellidos',100);
            $table->string('genero',10);
            $table->date('fecha_nacimiento');
            $table->string('email',100);
            $table->string('telefono',30);
            $table->string('foto',255)->nullable($value = true)->default('usuario-inicial.jpg');
            $table->string('password',100);
            $table->boolean('sistema')->default(1);
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
        Schema::dropIfExists('usuario');
    }
}
