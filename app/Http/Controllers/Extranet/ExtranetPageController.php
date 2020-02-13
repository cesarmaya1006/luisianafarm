<?php

namespace App\Http\Controllers\Extranet;

use App\Http\Controllers\Controller;
use App\Models\Admin\Adjunto_Noticia;
use App\Models\Admin\Categoria_Dir;
use App\Models\Admin\Directorio;
use App\Models\Admin\Imagen;
use App\Models\Admin\Noticia;
use App\Models\Parametro;
use Illuminate\Http\Request;

class ExtranetPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $parametros = Parametro::all();
        return view('extranet.index.index',compact('parametros'));
    }
    public function contacto()
    {
        $parametros = Parametro::all();
        return view('extranet.contacto.contacto',compact('parametros'));
    }
    public function acceso()
    {
        $parametros = Parametro::all();
        return view('extranet.seguridad.acceso',compact('parametros'));
    }


}
