<?php

namespace App\Models\Seguridad;

use App\Models\Admin\Apartamentos;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use App\Models\Admin\Rol;
use App\Models\Admin\Tipo_Docu;
use App\Models\Parametro;
use Illuminate\Support\Facades\Session;

class Usuario extends Authenticatable
{
    use Notifiable;
    protected $remember_token = false;
    protected $table = 'usuario';
    protected $guarded = ['id'];

    public function roles()
    {
        return $this->belongsToMany(Rol::class, 'usuario_rol');
    }
    public function apartamentos_prop()
    {
        return $this->belongsToMany(Apartamentos::class, 'propie_aparta','usuario_id','apartamento_id');
    }
    public function apartamentos_res()
    {
        return $this->belongsToMany(Apartamentos::class, 'residente_aparta','residente_id','apartamento_id');
    }
    public function tipos_docu()
    {
        return $this->belongsTo(Tipo_Docu::class, 'tipo_docu_id', 'id');
    }

    public function setSession($roles)
    {
        $parametro = Parametro::findOrFail(1);
        Session::put([
            'tipo_docu_id' => $this->tipo_docu_id,
            'identificacion' => $this->identificacion,
            'nombres' => $this->nombres,
            'contra' => $this->password,
            'apellidos' => $this->apellidos,
            'genero' => $this->genero,
            'fecha_nacimiento' => $this->fecha_nacimiento,
            'email' => $this->email,
            'telefono' => $this->telefono,
            'foto' => $this->foto,
            'nombre_entidad' => $parametro->nombre_conjunto,
            'logo_entidad' => $parametro->logo_conjunto,

        ]);
        if (count($roles) == 1) {
            Session::put(
                [
                    'rol_id' => $roles[0]['id'],
                    'rol_nombre' => $roles[0]['nombre'],
                ]
            );
        } else {
            Session::put('roles', $roles);
        }
    }
}
