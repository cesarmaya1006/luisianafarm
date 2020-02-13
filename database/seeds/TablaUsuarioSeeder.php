<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class TablaUsuarioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('usuario')->insert([
            'tipo_docu_id' => 1,
            'identificacion' => '79984883',
            'nombres' => 'Cesar Eduardo',
            'apellidos' => 'Maya Toloza',
            'genero' => 'M',
            'fecha_nacimiento' => '1978-05-22',
            'email' => 'cesarmaya1006@gmail.com',
            'telefono' => '350 807 9232',
            'foto' => 'usuario-inicial.jpg',
            'password' => bcrypt('mayo'),
            'sistema' => '1',
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
        ]);
        DB::table('usuario_rol')->insert([
            'rol_id' => 1,
            'usuario_id' => 1,
            'estado' => 1,
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
        ]);

    }
}
