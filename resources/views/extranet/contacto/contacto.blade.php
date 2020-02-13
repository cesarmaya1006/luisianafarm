@extends("extranet.plantilla.plantilla")
<!-- ************************************************************* -->
@section('estilosHojas')
<!-- Hoja de estilos de la pagina -->
<link rel="stylesheet" href="{{ asset('css/extranet/contacto.css') }}">
@stop
<!-- ************************************************************* -->
@section('cuerpo_pagina')
<div class="container cuerpo">
    <div class="formularioContactoFront">
        <form action="" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="well well-sm">
                            <form class="form-horizontal" method="post">
                                <fieldset>
                                    <legend class="text-center header">Contactenos</legend>

                                    <div class="form-group">
                                        <div class="col-md-2"></div>
                                        <span class="col-md-1 col-md-offset-2 text-right"><i class="fa fa-user bigicon"></i></span>
                                        <div class="col-md-7">
                                            <input id="fname" name="name" type="text" placeholder="Nombres y Apellidos" class="form-control">
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-2"></div>
                                        <span class="col-md-1 col-md-offset-2 text-right"><i class="fas fa-envelope-open-text"></i></span>
                                        <div class="col-md-7">
                                            <input id="email" name="email" type="text" placeholder="Correo Electronico" class="form-control">
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-2"></div>
                                        <span class="col-md-1 col-md-offset-2 text-right"><i class="fa fa-phone-square bigicon"></i></span>
                                        <div class="col-md-7">
                                            <input id="phone" name="phone" type="text" placeholder="Telefono" class="form-control">
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-2"></div>
                                        <span class="col-md-1 col-md-offset-2 text-right"><i class="fa fa-pencil-square-o bigicon"></i></span>
                                        <div class="col-md-7">
                                            <textarea class="form-control" id="message" name="message" placeholder="Ingrese su mensaje" rows="7"></textarea>
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-12 text-center">
                                            <button type="submit" class="btn btn-primary btn-lg">Enviar</button>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection
