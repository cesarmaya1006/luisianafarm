<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TablaMenuRolSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $menus_rols=[
            ['rol_id' => '1', 'menu_id'=>'1',],
            ['rol_id' => '1', 'menu_id'=>'2',],
            ['rol_id' => '1', 'menu_id'=>'3',],
            ['rol_id' => '1', 'menu_id'=>'4',],
            ['rol_id' => '1', 'menu_id'=>'5',],
            ['rol_id' => '1', 'menu_id'=>'6',],
            ['rol_id' => '1', 'menu_id'=>'7',],
            ['rol_id' => '1', 'menu_id'=>'8',],
            ['rol_id' => '1', 'menu_id'=>'9',],
            ['rol_id' => '1', 'menu_id'=>'10',],
            ['rol_id' => '1', 'menu_id'=>'11',],
            ['rol_id' => '1', 'menu_id'=>'12',],
            ['rol_id' => '1', 'menu_id'=>'13',],
            ['rol_id' => '1', 'menu_id'=>'14',],
            ['rol_id' => '1', 'menu_id'=>'15',],
            ['rol_id' => '1', 'menu_id'=>'16',],
            ['rol_id' => '1', 'menu_id'=>'17',],
            ['rol_id' => '1', 'menu_id'=>'18',],
            ['rol_id' => '1', 'menu_id'=>'19',],

        ];
        for ($i=1; $i <=11 ; $i++) {
            DB::table('menu_rol')->insert([
                'rol_id'=>'1',
                'menu_id'=>$i,
            ]);
        }
        /*foreach ($menus_rols as $menus_rol){
            DB::table('menu_rol')->insert([
                'rol_id'=>$menus_rol['rol_id'],
                'menu_id'=>$menus_rol['menu_id'],
            ]);
        }*/
    }
}
