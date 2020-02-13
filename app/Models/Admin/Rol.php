<?php

namespace App\Models\Admin;

use App\Models\Seguridad\Usuario;
use Illuminate\Database\Eloquent\Model;

class Rol extends Model
{
    protected $table = "rol";
    protected $guarded = ['id'];

    public function usuarios()
    {
        return $this->belongsToMany(Usuario::class, 'usuario_rol');
    }
}
