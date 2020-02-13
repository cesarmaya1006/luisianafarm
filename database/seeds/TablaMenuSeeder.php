<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Carbon;

class TablaMenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $menus=[
            // Menus padre
            ['nombre' => 'Inicio', 'menu_id'=>'0', 'url' =>'admin/index', 'orden' =>'1', 'icono' =>'fas fa-tachometer-alt'],
            ['nombre' => 'Sistema', 'menu_id'=>'0', 'url' =>'#', 'orden' =>'2', 'icono' =>'fas fa-tools'],
            ['nombre' => 'Parametrización', 'menu_id'=>'0', 'url' =>'#', 'orden' =>'3', 'icono' =>'fas fa-cogs'],
            ['nombre' => 'Usuarios', 'menu_id'=>'0', 'url' =>'#', 'orden' =>'4', 'icono' =>'fas fa-users'],
            //----------------------------------------------------------------------------------------------------------------------
            // Menus hijos
            //----------------------------------------------------------------------------------------------------------------------
            ['nombre' => 'Menús', 'menu_id'=>'2',  'url' =>'admin/menu-index', 'orden' =>'1',  'icono' =>'fas fa-list-ul'],
            ['nombre' => 'Roles Usuarios', 'menu_id'=>'2', 'url' =>'admin/rol-index', 'orden' =>'2', 'icono' =>'fas fa-user-tag'],
            ['nombre' => 'Menú - Roles', 'menu_id'=>'2', 'url' =>'admin/_menus_rol', 'orden' =>'3', 'icono' =>'fas fa-chalkboard-teacher'],
            ['nombre' => 'Permisos', 'menu_id'=>'2', 'url' =>'admin/permiso-index', 'orden' =>'4', 'icono' =>'fas fa-lock'],
            ['nombre' => 'Permisos -Rol', 'menu_id'=>'2', 'url' =>'admin/_permiso-rol', 'orden' =>'5', 'icono' =>'fas fa-user-lock'],
            //----------------------------------------------------------------------------------------------------------------------
            ['nombre' => 'Datos Básicos', 'menu_id'=>'3', 'url' =>'admin/parametro-index', 'orden' =>'1', 'icono' =>'fas fa-eye'],
            //----------------------------------------------------------------------------------------------------------------------
            ['nombre' => 'Gestión de Usuarios', 'menu_id'=>'4', 'url' =>'admin/usuario-index', 'orden' =>'1', 'icono' =>'fas fa-address-book'],

        ];

        foreach ($menus as $menu){
            DB::table('menu')->insert([
                'nombre'=>utf8_encode(utf8_decode($menu['nombre'])),
                'menu_id'=>$menu['menu_id'],
                'url'=>$menu['url'],
                'orden'=>$menu['orden'],
                'icono'=>$menu['icono'],
                'created_at'=>Carbon::now()->format('Y-m-d H:i:s'),
            ]);
        }
    }
}
