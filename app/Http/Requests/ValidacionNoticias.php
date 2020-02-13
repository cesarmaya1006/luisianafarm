<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ValidacionNoticias extends FormRequest
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
            return [
                'tipo' => 'required|max:100|unique:usuario,identificacion,' . $this->route('id'),

                'tipo' => 'required|max:100',
                'titulo' => 'required|max:100|unique:noticia,titulo,' . $this->route('id'),
                'resumen' => 'required|max:100',
                'contenido' => 'nullable',
                'fecha_vencimiento' => 'required|date|after:tomorrow',

            ];

    }
}
