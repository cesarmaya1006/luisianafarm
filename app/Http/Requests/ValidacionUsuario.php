<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ValidacionUsuario extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        if ($this->route('sistema')){
            return [
                'identificacion' => 'required|max:100|unique:usuario,identificacion,' . $this->route('id'),
                'nombres' => 'required|max:100',
                'apellidos' => 'required|max:100',
                'genero' => 'required|max:10',
                'fecha_nacimiento' => 'required|date|before:tomorrow',
                'email' => 'required|email|max:100|unique:usuario,email,' . $this->route('id'),
                'rol_id' => 'required|array',
                'telefono' => 'required|max:30',
            ];
        }else{
            return [
                'identificacion' => 'required|max:100|unique:usuario,identificacion,' . $this->route('id'),
                'nombres' => 'required|max:100',
                'apellidos' => 'required|max:100',
                'genero' => 'required|max:10',
                'fecha_nacimiento' => 'required|date|before:tomorrow',
                'email' => 'nullable',
                'rol_id' => 'required|array',
                'telefono' => 'nullable',
            ];
        }

    }
}
