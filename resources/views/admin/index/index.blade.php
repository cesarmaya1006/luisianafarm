@extends("admin.plantilla.plantilla")
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('estilosHojas')
    <!-- Pagina CSS -->
  <link rel="stylesheet" href="{{ asset('css/admin/index.css') }}">
@endsection
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('tituloHoja')
    Titulo de la hoja
@endsection
<!-- ************************************************************* -->
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('cuerpo_pagina')
    <div class="cuerpo">
        @include('includes.mensaje')
        @include('includes.error-form')
    </div>
@endsection
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('scripts_pagina')

@endsection
<!-- ************************************************************* -->
