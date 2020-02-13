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
            'nombre_conjunto' => 'Conjunto de prueba',
            'direccion_conjunto' => 'direccion conjunto',
            'telefono_conjunto' => '031 555 44 33',
            'email_conjunto' => 'emailprueba@conjunto.com',
            'fondo_conjunto' => 'imagen-principal.jpg',
            'logo_conjunto' => 'logo-principal.png',
            'slogan_conjunto' => 'Slogan Principal del Conjunto',
            'nosotros_conjunto' => 'Del mismo modo que se puede cambiar el aspecto del texto por medio de las barras de herramientas,es posible tambien modificar el aspecto de los parrafos.',
            'created_at'=>Carbon::now()->format('Y-m-d H:i:s'),
        ]);
    }
}
