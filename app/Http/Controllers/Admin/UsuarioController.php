<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\ValidacionUsuario;
use App\Models\Admin\Apartamentos;
use App\Models\Admin\Rol;
use App\Models\Admin\Tipo_Docu;
use App\Models\Seguridad\Usuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $roles = Rol::where('id', '>', 1)->orderBy('nombre')->get();
        $datas = Usuario::where('id', '>', 1)->with('roles')->orderBy('id')->paginate(15);
        return view('admin.usuario.index', compact('datas', 'roles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function crear($pagVolver)
    {
        $tiposdocu = Tipo_Docu::orderBy('id')->get();
        $roles = Rol::orderBy('id')->pluck('nombre', 'id')->toArray();
        return view('admin.usuario.crear', compact('pagVolver', 'roles', 'tiposdocu'));
    }
    public function crear_apa(Request $request)
    {
        $pagVolver = $request->pagVolver;
        $id = $request->id;
        $volver = $request->volver;
        $tipo = $request->tipo;
        $tiposdocu = Tipo_Docu::orderBy('id')->get();
        $roles = Rol::orderBy('id')->pluck('nombre', 'id')->toArray();
        return view('admin.usuario.crear', compact('pagVolver', 'id', 'volver', 'roles', 'tiposdocu','tipo'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function guardar(ValidacionUsuario $request)
    {
        if ($request['sistema'] == 'on') {
            $nuevoUsuario['tipo_docu_id'] = $request['tipo_docu_id'];
            $nuevoUsuario['identificacion'] = $request['identificacion'];
            $nuevoUsuario['nombres'] = ucwords($request['nombres']);
            $nuevoUsuario['apellidos'] = ucwords($request['apellidos']);
            $nuevoUsuario['genero'] = $request['genero'];
            $nuevoUsuario['fecha_nacimiento'] = $request['fecha_nacimiento'];
            $nuevoUsuario['email'] = strtolower($request['email']);
            $nuevoUsuario['telefono'] = $request['telefono'];
            $nuevoUsuario['sistema'] = 1;
            $nuevoUsuario['password'] = bcrypt('sistema2020');
            if ($request['genero'] == 'M') {
                $nuevoUsuario['foto'] = 'usuario-inicial.jpg';
            } else {
                $nuevoUsuario['foto'] = 'nina-inicial.png';
            }
            $roles = $request->rol_id;
            $roles['estado'] = 1;
        } else {
            if ($request->rol_id[0] != '11') {
                $rolSeleccionado = Rol::findOrFail($request->rol_id[0]);
                return redirect('admin/usuario-index')->with('errores', 'El Rol ' . $rolSeleccionado->nombre . ' requiere acceso al sistema, Usuario no adicionado a la BD');
            }
            $nuevoUsuario['tipo_docu_id'] = $request['tipo_docu_id'];
            $nuevoUsuario['identificacion'] = $request['identificacion'];
            $nuevoUsuario['nombres'] = ucwords($request['nombres']);
            $nuevoUsuario['apellidos'] = ucwords($request['apellidos']);
            $nuevoUsuario['genero'] = $request['genero'];
            $nuevoUsuario['fecha_nacimiento'] = $request['fecha_nacimiento'];
            if ($request['email'] == null) {
                $nuevoUsuario['email'] = 'Sin Email';
            } else {
                $nuevoUsuario['email'] = strtolower($request['email']);
            }
            if ($request['telefono'] == null) {
                $nuevoUsuario['telefono'] = 'Sin Telefono';
            } else {
                $nuevoUsuario['telefono'] = $request['telefono'];
            }
            $nuevoUsuario['sistema'] = 0;
            $nuevoUsuario['password'] = bcrypt('sistema2020');
            if ($request['genero'] == 'M') {
                $nuevoUsuario['foto'] = 'usuario-inicial.jpg';
            } else {
                $nuevoUsuario['foto'] = 'nina-inicial.png';
            }
            $roles = $request->rol_id;
            $roles['estado'] = 1;
        }
        if ($request->volver) {
            $usuario = Usuario::create($nuevoUsuario);
            $usuario->roles()->sync($request->rol_id);
            $usuarios = Usuario::with('roles')->whereHas('roles', function ($q) {
                $q->whereNotIn('rol.nombre', ['Administrador Sistema', 'Administrador', 'Contador', 'Seguridad']);
            })->orderBy('apellidos')->get();
            $apartamento = Apartamentos::with('torres')->findOrFail($request->id);
            $pagVolver = $request->volver;
            return redirect('adminph/apartamentos-editar/'.$request->id.'/'.$request->volver)->with('mensaje', 'Usuario creado con exito')->with('apartamento')->with('pagVolver')->with('usuarios');
        } else {
            $usuario = Usuario::create($nuevoUsuario);
            $usuario->roles()->sync($request->rol_id);
            return redirect('admin/usuario-index')->with('mensaje', 'Usuario creado con exito');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function mostrar($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function editar($id)
    {
        $tiposdocu = Tipo_Docu::orderBy('id')->get();
        $roles = Rol::orderBy('id')->pluck('nombre', 'id')->toArray();
        $data = Usuario::with('roles')->findOrFail($id);
        return view('admin.usuario.editar', compact('data', 'roles', 'tiposdocu'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function actualizar(Request $request, $id)
    {
        if ($request['sistema'] == 'on') {
            $nuevoUsuario['tipo_docu_id'] = $request['tipo_docu_id'];
            $nuevoUsuario['identificacion'] = $request['identificacion'];
            $nuevoUsuario['nombres'] = ucwords($request['nombres']);
            $nuevoUsuario['apellidos'] = ucwords($request['apellidos']);
            $nuevoUsuario['genero'] = $request['genero'];
            $nuevoUsuario['fecha_nacimiento'] = $request['fecha_nacimiento'];
            $nuevoUsuario['email'] = strtolower($request['email']);
            $nuevoUsuario['telefono'] = $request['telefono'];
            $nuevoUsuario['sistema'] = 1;
            $roles = $request->rol_id;
            $roles['estado'] = 1;
        } else {
            if ($request->rol_id[0] != '11') {
                $rolSeleccionado = Rol::findOrFail($request->rol_id[0]);
                return redirect('admin/usuario-index')->with('errores', 'El Rol ' . $rolSeleccionado->nombre . ' requiere acceso al sistema, Usuario no actualizado');
            }
            $nuevoUsuario['tipo_docu_id'] = $request['tipo_docu_id'];
            $nuevoUsuario['identificacion'] = $request['identificacion'];
            $nuevoUsuario['nombres'] = ucwords($request['nombres']);
            $nuevoUsuario['apellidos'] = ucwords($request['apellidos']);
            $nuevoUsuario['genero'] = $request['genero'];
            $nuevoUsuario['fecha_nacimiento'] = $request['fecha_nacimiento'];
            if ($request['email'] == null) {
                $nuevoUsuario['email'] = 'Sin Email';
            } else {
                $nuevoUsuario['email'] = strtolower($request['email']);
            }
            if ($request['telefono'] == null) {
                $nuevoUsuario['telefono'] = 'Sin Telefono';
            } else {
                $nuevoUsuario['telefono'] = $request['telefono'];
            }
            $nuevoUsuario['sistema'] = 0;
            $roles = $request->rol_id;
            $roles['estado'] = 1;
        }
        $usuario = Usuario::findOrFail($id);
        $usuario->update(array_filter($nuevoUsuario));
        $usuario->roles()->sync($request->rol_id);
        $datas = Usuario::with('roles')->orderBy('id')->paginate(15);
        return redirect('admin/usuario-index')->with('mensaje', 'Usuario actualizado con exito', 'datas');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function eliminar(Request $request, $id)
    {
        if ($request->ajax()) {
            $usuario = Usuario::findOrFail($id);
            $usuario->roles()->detach();
            $usuario->delete();
            return response()->json(['mensaje' => 'ok']);
        } else {
            abort(404);
        }
    }
    public function filtro(Request $request)
    {
        if ($request->ajax()) {
            return Usuario::where('id', '>', 1)->with('roles')->orderBy('id')->get();
        } else {
            abort(404);
        }
    }
}
