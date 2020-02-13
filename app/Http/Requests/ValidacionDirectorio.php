<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ValidacionDirectorio extends FormRequest
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
            'nombre' => 'required|max:100|unique:menu,nombre,'.$this->route('id'),
            'fijo' => 'nullable|size:7',
            'celular' => 'nullable|size:10',
            'direccion' => 'nullable|max:255',
            'pagina_web' => 'nullable|max:255',

        ];
    }
}
