<?php

namespace App\Models\Admin;

use App\Models\Seguridad\Usuario;
use Illuminate\Database\Eloquent\Model;

class Tipo_Docu extends Model
{
    protected $table = "tipo_docu";
    protected $guarded = ['id'];
    public function usuarios()
    {
        return $this->hasMany(Usuario::class,'tipo_docu_id','id');
    }
}
