<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Imagen;
use App\Models\Parametro;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image as InterventionImage;

use Illuminate\Support\Facades\Config;

class ParametroController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id=1;
        $parametros = Parametro::findOrFail($id);
        return view('admin.parametrizacion.index',compact('parametros'));
    }

    public function actualizar(Request $request)
    {
        $id=1;
        $infoNueva = $request->all();
        $infoAntigua = Parametro::findOrFail($id);

        $ruta = Config::get('constantes.folder_imagenes');
        $ruta = trim($ruta.'\sistema\ ');
        if ($request->hasFile('fondo_conjunto')) {
            $fondo = $request->fondo_conjunto;
            $imagen_fondo = InterventionImage::make($fondo);
            $nombreArchivoFondo = time() . $fondo->getClientOriginalName();
            $imagen_fondo->resize(1600, 900);
            $imagen_fondo->save($ruta . $nombreArchivoFondo, 100);
            if($infoAntigua['fondo_conjunto']!='imagen-principal.jpg'){
                unlink($ruta.$infoAntigua->fondo_conjunto);
                }

            $infoNueva['fondo_conjunto']= $nombreArchivoFondo;

        }
        if ($request->hasFile('logo_conjunto')) {
            $logo = $request->logo_conjunto;
            $imagen_logo = InterventionImage::make($logo);
            $nombreArchivoLogo = time() . $logo->getClientOriginalName();
            $imagen_logo->resize(800, 800);
            $imagen_logo->save($ruta . $nombreArchivoLogo, 100);
            if($infoAntigua['logo_conjunto']!='logo-principal.png'){
            unlink($ruta.$infoAntigua->logo_conjunto);
            }
            $infoNueva['logo_conjunto']= $nombreArchivoLogo;
        }
        Parametro::findOrFail($id)->update($infoNueva);
        $parametros = Parametro::findOrFail($id);
        return redirect('admin/parametro-index')->with('mensaje','Las imagenes y la informacion se han  actualizado con exito')->with('parametros');
    }

}
