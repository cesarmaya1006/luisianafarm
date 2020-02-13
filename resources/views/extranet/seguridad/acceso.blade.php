@extends("extranet.plantilla.plantilla")
<!-- ************************************************************* -->
@section('estilosHojas')
<!-- Hoja de estilos de la pagina -->
<link rel="stylesheet" href="{{ asset('css/extranet/login.css') }}">
<style>
.cuerpo {
    background-image: url('{{Storage::url('public/imagenes/sistema/bogota-02.jpg')}}');

}
</style>
@stop
<!-- ************************************************************* -->
@section('cuerpo_pagina')
<div class="container cuerpo">
    <div class="container-fluid cuerpo">
        <div class="pantalla p-3">
            <div class="row text-center m-5 p-5">
                <div class="col-lg-12 cajonLogin text-center">
                    @include('includes.mensaje')
                    @include('includes.error-form')
                    <div class="row text-center pt-3">
                        <div class="col-md-6 col-lg-6 logoAplicacion">
                            <img class="img-fluid" @foreach ($parametros as $parametro) src="{{asset('imagenes/sistema/'.$parametro->logo_conjunto)}}" @endforeach >
                        </div>
                    </div>
                    <div class="row text-center p-2">
                        <div class="col-md-10 tituloFormulario text-center">
                            <h3>Acceso de Usuarios</h3>
                        </div>
                    </div>
                    <div class="row text-center">
                        <form class="col-md-12" action="{{route('login-post') }}" method="post" autocomplete="off">
                            @csrf
                            <div class="row text-center">
                                <div class="col-md-2 text-right">
                                    <i class="fas fa-at fa-2x" style="color:white;text-shadow: 1px 1px black"></i>
                                </div>
                                <div class="col-md-9 form-group">
                                    <input class="form-control" name="email" type="email" placeholder="Correo Electr&oacute;nico" style="background-color: rgba(0,0,0,0.6);color:white;font-weight:bold;" value="{{old('email')}}">
                                </div>
                            </div>
                            <div class="row text-center">
                                <div class="col-md-2 text-right">
                                    <i class="fas fa-key fa-2x" style="color:white;text-shadow: 1px 1px black"></i>
                                </div>
                                <div class="col-md-9 form-group">
                                    <input class="form-control" type="password" name="password" placeholder="Contrase&ntilde;a" style="background-color: rgba(0,0,0,0.6);color:white;font-weight:bold;">
                                </div>
                            </div>
                            <div class="row text-center">
                                <div class="col-md-12 text-center">
                                    <button type="submit" class="btn btn-info btn-md pl-5 pr-5">Ingresar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row text-center mt-2 mb-3">
                        <div class="col-lg-12 text-center">
                            <a href="#" style="text-decoration: none; color:white;">Olvido Su Contrase&ntilde;a?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
