<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TablaImagenesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $imagenes=[
            ['ubicacion' => 'extranet-nosotros', 'titulo'=>'Sistema P.H.', 'foto'=>'nosotros1.png',],
            ['ubicacion' => 'galeria_extranet', 'titulo'=>'Imagen de Prueba 1', 'foto'=>'galeria-2.jpg',],
            ['ubicacion' => 'galeria_extranet', 'titulo'=>'Imagen de Prueba 2', 'foto'=>'galeria-3.jpg',],
            ['ubicacion' => 'galeria_extranet', 'titulo'=>'Imagen de Prueba 3', 'foto'=>'galeria-4.jpg',],
            ['ubicacion' => 'galeria_extranet', 'titulo'=>'Imagen de Prueba 4', 'foto'=>'galeria-5.jpg',],
            ['ubicacion' => 'galeria_extranet', 'titulo'=>'Imagen de Prueba 5', 'foto'=>'galeria-6.jpg',],
            ['ubicacion' => 'galeria_extranet', 'titulo'=>'Imagen de Prueba 6', 'foto'=>'galeria-7.jpg',],
            ['ubicacion' => 'galeria_extranet', 'titulo'=>'Imagen de Prueba 7', 'foto'=>'galeria-8.jpg',],
            ['ubicacion' => 'galeria_extranet', 'titulo'=>'Imagen de Prueba 8', 'foto'=>'galeria-1.jpg',],

        ];

        foreach ($imagenes as $imagen){
            DB::table('imagenes')->insert([
                'ubicacion'=>$imagen['ubicacion'],
                'titulo'=>$imagen['titulo'],
                'foto'=>$imagen['foto'],
            ]);
        }
    }
}
