<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Ruta Pagina Principal Externa Sistema
Route::get('/', 'Extranet\ExtranetPageController@index')->name('index-extranet');
Route::get('index', 'Extranet\ExtranetPageController@index')->name('index-extranet');
Route::get('nosotros', 'Extranet\ExtranetPageController@nosotros')->name('nosotros-extranet');
Route::get('noticias', 'Extranet\ExtranetPageController@noticias')->name('noticias-extranet');
Route::get('detalle_noticias/{id}', 'Extranet\ExtranetPageController@detalle_noticias')->name('detalle_noticias-extranet');
Route::get('modal_noticias/{id}', 'Extranet\ExtranetPageController@modal_noticias')->name('modal_noticias');
Route::get('galeria', 'Extranet\ExtranetPageController@galeria')->name('galeria-extranet');
Route::get('galeria_modal/{id}', 'Extranet\ExtranetPageController@galeria_modal')->name('galeria-extranet-modal');
Route::get('contacto', 'Extranet\ExtranetPageController@contacto')->name('contacto-extranet');
Route::get('directorio', 'Extranet\ExtranetPageController@directorio')->name('directorio-extranet');
Route::get('login', 'Extranet\ExtranetPageController@acceso')->name('login');
Route::get('logout', 'Seguridad\LoginController@logout')->name('logout');
Route::post('login', 'Seguridad\LoginController@login')->name('login-post');
//Rutas con logueo Auth
Route::group(['middleware' => 'auth'], function () {
    // Rutas Administrador del Sistema
    Route::group(['middleware' => 'administrador'], function () {
        Route::group(['prefix' => 'admin', 'namespace' => 'Admin'], function () {
            // Ruta Administrador del Sistema
            Route::get('index', 'AdminPageController@index')->name('admin-index');
            // Ruta Administrador del Sistema Menus
            Route::get('menu-index', 'MenuController@index')->name('admin-menu-index');
            Route::get('menu-crear/{pagVolver}', 'MenuController@crear')->name('admin-menu-crear');
            Route::get('menu/{id}/editar', 'MenuController@editar')->name('admin-menu-editar');
            Route::post('menu', 'MenuController@guardar')->name('admin-menu-guardar');
            Route::put('menu/{id}', 'MenuController@actualizar')->name('admin-menu-actualizar');
            Route::get('menu/{id}/eliminar', 'MenuController@eliminar')->name('admin-menu-eliminar');
            Route::get('menu-guardar-orden', 'MenuController@guardarOrden')->name('admin-menu-guardar-orden');
            // Ruta Administrador del Sistema Roles
            Route::get('rol-index', 'RolController@index')->name('admin-rol-index');
            Route::get('rol-crear/{pagVolver?}', 'RolController@crear')->name('admin-rol-crear');
            Route::get('rol/{id}/editar', 'RolController@editar')->name('admin-rol-editar');
            Route::post('rol', 'RolController@guardar')->name('admin-rol-guardar');
            Route::put('rol/{id}', 'RolController@actualizar')->name('admin-rol-actualizar');
            Route::delete('rol/{id}/eliminar', 'RolController@eliminar')->name('admin-rol-eliminar');
            /*RUTAS Administrador del Sistema MENU_ROL*/
            Route::get('_menus_rol', 'MenuRolController@index')->name('admin-menu_rol');
            Route::post('_menus_rol', 'MenuRolController@guardar')->name('admin-guardar_menu_rol');
            /*RUTAS DE PERMISO*/
            Route::get('permiso-index', 'PermisoController@index')->name('admin-permiso-index');
            Route::get('permiso-crear/{pagVolver?}', 'PermisoController@crear')->name('admin-crear_permiso');
            Route::post('permiso', 'PermisoController@guardar')->name('admin-guardar_permiso');
            Route::get('permiso/{id}/editar', 'PermisoController@editar')->name('admin-editar_permiso');
            Route::put('permiso/{id}', 'PermisoController@actualizar')->name('admin-actualizar_permiso');
            Route::delete('permiso/{id}', 'PermisoController@eliminar')->name('admin-eliminar_permiso');
            /*RUTAS PERMISO_ROL*/
            Route::get('_permiso-rol', 'PermisoRolController@index')->name('admin-permiso_rol');
            Route::post('_permiso-rol', 'PermisoRolController@guardar')->name('admin-guardar_permiso_rol');
            // Ruta Administrador del Sistema Usuarios
            Route::get('usuario-index', 'UsuarioController@index')->name('admin-usuario-index');
            Route::get('usuario-crear/{pagVolver?}/{id?}/{volver?}', 'UsuarioController@crear')->name('admin-usuario-crear');
            Route::get('usuario-crear_apa', 'UsuarioController@crear_apa')->name('admin-usuario-crear_apa');
            Route::post('usuario', 'UsuarioController@guardar')->name('admin-usuario-guardar');
            Route::get('usuario/{id}/editar', 'UsuarioController@editar')->name('admin-usuario-editar');
            Route::put('usuario/{id}', 'UsuarioController@actualizar')->name('admin-usuario-actualizar');
            Route::delete('usuario/{id}', 'UsuarioController@eliminar')->name('admin-usuario-eliminar');
            Route::post('usuario-filtro', 'UsuarioController@filtro')->name('admin-usuario-filtro');
            /*RUTAS PARAMETROS*/
            Route::get('parametro-index', 'ParametroController@index')->name('admin-parametro-index');
            Route::put('parametro', 'ParametroController@actualizar')->name('admin-parametro-actualizar');
            /*RUTAS NOTICIAS*/
            Route::get('noticia-index', 'NoticiaController@index')->name('admin-noticia-index');
            Route::get('noticia-crear/{pagVolver?}', 'NoticiaController@crear')->name('admin-crear_noticia');
            Route::post('noticia', 'NoticiaController@guardar')->name('admin-guardar_noticia');
            Route::get('noticia/{id}/editar', 'NoticiaController@editar')->name('admin-noticia-editar');
            Route::put('noticia/{id}', 'NoticiaController@actualizar')->name('admin-noticia-actualizar');
            Route::put('noticia_galeria/{id}', 'NoticiaController@actualizar_galeria')->name('admin-noticia-actualizar_galeria');
            Route::put('noticia_documento/{id}', 'NoticiaController@guardar_docu')->name('admin-noticia-guardar_docu');
            Route::get('noticia_galeria/{id}/{id_foto}', 'NoticiaController@eliminar_galeria')->name('admin-noticia-eliminar_galeria');
            Route::get('noticia_documento/{id}/{id_foto}', 'NoticiaController@eliminar_documento')->name('admin-noticia-eliminar_documento');
            Route::delete('noticia/{id}', 'NoticiaController@eliminar')->name('admin-noticia-eliminar');
            Route::put('noticia_activar/{id}', 'NoticiaController@activar')->name('admin-noticia-activar');
            /*RUTAS GALERIA*/
            Route::get('galeria-index', 'GaleriaController@index')->name('admin-galeria-index');
            Route::post('galeria', 'GaleriaController@guardar')->name('admin-guardar_galeria');
            Route::delete('galeria/{id}', 'GaleriaController@eliminar')->name('admin-galeria-eliminar');
            Route::put('galeria/{id}/{dir}', 'GaleriaController@mover')->name('admin-galeria-mover');
            /*RUTAS DIRECTORIO*/
            Route::get('directorio-index', 'DirectorioController@index')->name('admin-directorio-index');
            Route::get('directorio-crear/{pagVolver?}', 'DirectorioController@crear')->name('admin-crear_directorio');
            Route::post('directorio', 'DirectorioController@guardar')->name('admin-guardar_directorio');
            Route::get('directorio/{id}/editar', 'DirectorioController@editar')->name('admin-directorio-editar');
            Route::put('directorio/{id}', 'DirectorioController@actualizar')->name('admin-directorio-actualizar');
            Route::delete('directorio/{id}', 'DirectorioController@eliminar')->name('admin-directorio-eliminar');
            Route::put('directorio/{id}/{dir}/mover', 'DirectorioController@mover')->name('admin-directorio-mover');
            /*RUTAS CONJUNTO*/
            Route::post('torres', 'ConjuntoController@agregar_torres')->name('admin-torres-agregar');
            Route::post('torres/{id}', 'ConjuntoController@conf_rapida_torre')->name('admin-torres-modificar');
            Route::delete('torres/{id}', 'ConjuntoController@eliminar_torres')->name('admin-torres-eliminar');

            Route::get('apartamentos', 'ConjuntoController@apartamento')->name('admin-apartamentos');
            Route::get('apartamentos-crear/{pagVolver?}', 'ConjuntoController@crear_aparatamento')->name('admin-apartamentos-crear');
            Route::post('apartamentos_conf_rapida', 'ConjuntoController@conf_rapida_aparatamento')->name('admin-conf_rapida_aparatamento');
            Route::post('apartamentos_guardar/{id_torre}', 'ConjuntoController@guardar_aparatamento')->name('admin-guardar_aparatamento');
            Route::delete('apartamentos/{id}', 'ConjuntoController@eliminar_apartamentos')->name('admin-apartamentos-eliminar');

            /*RUTAS PARQUEADEROS*/
            Route::get('parqueaderos', 'ConjuntoController@parqueadero')->name('admin-parqueaderos');
            Route::get('parqueaderos-crear/{pagVolver?}', 'ConjuntoController@crear_parqueaderos')->name('admin-parqueaderos-crear');
            Route::post('parqueaderos/{pagVolver}', 'ConjuntoController@conf_rapida_parqueaderos')->name('admin-parqueaderos-config-rapida');
            Route::delete('parqueaderos/{id}', 'ConjuntoController@eliminar_parqueaderos')->name('admin-parqueaderos-eliminar');


        });
        Route::group(['prefix' => 'adminph', 'namespace' => 'Adminph'], function () {
            /*RUTAS APARTAMENTOS*/
            Route::get('apartamentos', 'ParametrosConjuntoController@apartamento')->name('adminph-apartamentos');
            Route::get('apartamentos-detalles/{id?}/{pagVolver?}', 'ParametrosConjuntoController@detalle_aparatamento')->name('adminph-apartamentos-detalle');
            Route::get('apartamentos-editar/{id?}/{pagVolver?}', 'ParametrosConjuntoController@editar_aparatamento')->name('adminph-apartamentos-editar');
            Route::post('apartamentos-actualizar/{id?}', 'ParametrosConjuntoController@actualizar_apartamento')->name('adminph-apartamentos-actualizar');
            Route::get('exp_apartamentos', 'ParametrosConjuntoController@apartamento_exp')->name('adminph-apartamentos_exp');
            Route::get('exp_apartamentos2/{id?}', 'ParametrosConjuntoController@apartamento_exp2')->name('adminph-apartamentos_exp2');

            /* RUTAS PARQUEADEROS */
            Route::get('parqueaderos', 'ParametrosConjuntoController@parqueadero')->name('adminph-parqueaderos');
            Route::put('parqueaderos-act/{id}', 'ParametrosConjuntoController@act_parqueaderos')->name('adminph-parqueaderos-activar');

            /* RUTAS BICICLETEROS */
            Route::get('bicicletero', 'ParametrosConjuntoController@bicicletero')->name('adminph-bicicletero');
            Route::post('bicicletero', 'ParametrosConjuntoController@guardar_bicicletero')->name('adminph-guardar_bicicletero');
            Route::delete('bicicletero/{id}', 'ParametrosConjuntoController@eliminar_bicicletero')->name('adminph-bicicletero-eliminar');
            /* RUTAS FILTROS APARTAMENTOS */
            Route::post('apartamentos_filtro_clase', 'ParametrosConjuntoController@apartamentos_filtro_clase')->name('admin-apartamentos-filtro_clase');
            Route::post('apartamentos_filtro_eject', 'ParametrosConjuntoController@apartamentos_filtro_eject')->name('admin-apartamentos-filtro_eject');
            /* RUTAS FILTROS APARTAMENTOS */
            Route::get('zonas_sociales', 'ParametrosConjuntoController@zonas_sociales')->name('adminph-zonas_sociales');
            Route::get('zonas_sociales-crear/{pagVolver?}', 'ParametrosConjuntoController@zonas_sociales_crear')->name('adminph-crear_zona_social');
            Route::post('zonas_sociales', 'ParametrosConjuntoController@guardar_zonas_sociales')->name('adminph-guardar_zonas_sociales');



        });
    });
});
