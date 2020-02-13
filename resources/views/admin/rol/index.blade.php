@extends("admin.plantilla.plantilla")
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('estilosHojas')
    <!-- Pagina CSS -->
    <link rel="stylesheet" href="{{ asset('css/admin/admin_rol.css') }}">
@endsection
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('tituloHoja')
    Roles
@endsection
<!-- ************************************************************* -->
<!-- ************************************************************* -->
<!-- Cuerpo hoja -->
@section('cuerpo_pagina')
@include('includes.mensaje')
@include('includes.error-form')
    <div class="cuerpo">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Listado de Roles</h3>
            </div>
            <br>
            <div class="box-body  card-primary">
                @include('includes.botones-exportar',['varPaginaCrear' => "admin-rol-crear",'varPaginaVolver' => "admin-rol-index",'tablaExportar' => "#tabla-data",'ignoraColumnas' => "1",'nombreTabla' => "Roles del Sistema",])
                <table class="table table-striped table-bordered table-hover" id="tabla-data">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th class="width70"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($datas as $data)
                        @if($data->nombre!='Administrador Sistema')
                        <tr>
                            <td>{{$data->nombre}}</td>
                            <td>
                                <a href="{{route('admin-rol-editar', ['id' => $data->id])}}" class="btn-accion-tabla tooltipsC" title="Editar este registro">
                                    <i class="fas fa-pen-square"></i>
                                </a>
                                <form action="{{route('admin-rol-eliminar', ['id' => $data->id])}}" class="d-inline form-eliminar" method="POST">
                                    @csrf @method("delete")
                                    <button type="submit" class="btn-accion-tabla eliminar tooltipsC" title="Eliminar este registro">
                                        <i class="fa fa-fw fa-trash text-danger"></i>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        @endif
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
<!-- ************************************************************* -->
<!-- script hoja -->
@section('scripts_pagina')
<script src="{{ asset('js/admin/rol/rol.js') }}"></script>
@endsection
<!-- ************************************************************* -->
