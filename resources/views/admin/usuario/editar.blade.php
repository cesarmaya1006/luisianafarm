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
    Crear Roles
@endsection
<!-- ************************************************************* -->
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('cuerpo_pagina')
<div class="card card-primary" style="border-top: 8px solid rgb(38, 160, 241);">
    {{ $mensaje ?? '' }}
    @include('includes.error-form')
    @include('includes.mensaje')
    <div class="card-header">
        <h3 class="card-title"><font style="vertical-align: inherit;">Nuevo Usuario (datos b&aacute;sicos)</font></h3>
    </div>
    <!-- /.card-header -->
    <!-- form start -->
    <form action="{{ route('admin-usuario-actualizar', ['id' => $data->id])}}" class="form-horizontal" method="POST" autocomplete="off">
        @csrf
        @method('put')
        <div class="card-body">
            @include('admin.usuario.form')
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            @include('includes.botones_editar')
        </div>
        <!-- /.card-footer -->
    </form>
</div>
@endsection
<!-- ************************************************************* -->
<!-- scripts hoja -->
@section('scripts_pagina')
<script src="{{ asset('js/admin/usuario/usuario.js') }}"></script>
@endsection
<!-- ************************************************************* -->
