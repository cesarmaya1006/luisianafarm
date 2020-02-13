<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class TablaParametroSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('parametro')->insert([
            'nombre_conjunto' => 'Plataforma OET-MGL',
            'direccion_conjunto' => 'Cr 13. No. 76 – 12',
            'telefono_conjunto' => '031 555 44 33',
            'email_conjunto' => 'emailprueba@conjunto.com',
            'fondo_conjunto' => 'imagen-principal.jpg',
            'logo_conjunto' => 'logo-principal.png',
            'slogan_conjunto' => 'Asistencia Legal',
            'created_at'=>Carbon::now()->format('Y-m-d H:i:s'),
        ]);
    }
}
