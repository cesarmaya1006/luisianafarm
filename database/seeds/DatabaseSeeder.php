<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->truncateTablas(['parametro','rol','tipo_docu','usuario','icono','usuario_rol','menu',
                                'imagenes',]);
        //$this->call(UsersTableSeeder::class);
        $this->call(TablaRolSeeder::class);
        $this->call(TablaParametroSeeder::class);
        $this->call(TablaTipoDocuSeeder::class);
        $this->call(TablaUsuarioSeeder::class);
        $this->call(TablaMenuSeeder::class);
        $this->call(TablaMenuRolSeeder::class);
        $this->call(TablaImagenesSeeder::class);
        $this->call(TablaIconoSeeder::class);

    }
    protected function truncateTablas(array $tablas){
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');
        foreach ($tablas as $tabla) {
            DB::table($tabla)->truncate();
        }
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');
    }
}
