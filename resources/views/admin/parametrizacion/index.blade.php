@extends("admin.plantilla.plantilla")
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('estilosHojas')
<!-- Pagina CSS -->
<link rel="stylesheet" href="{{ asset('css/admin/parametrizacion.css') }}">
@endsection
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('tituloHoja')
Parametrizaci&oacute;n
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
            <h3 class="box-title">Administraci&oacute;n de Parametros Visuales</h3>
        </div>
        <br>
        <div class="box-body  card-primary no-padding">
            <div class="cajonParametros">
                <form id="fomularioParametros" action="{{ route('admin-parametro-actualizar') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method("put")
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="cajonFondoLogoPrincipal">
                                <div class="tituloCajonParametros">
                                    <h4>Fondo principal</h3>
                                </div>
                                <div class="imagenFondoPrincipal text-center">
                                    <img class="img-fluid rounded img-thumbnail" id="img_fondo_conjunto" src="{{ asset('imagenes/sistema/'.$parametros->fondo_conjunto) }}">
                                </div>
                                <div class="formularioImagen">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <input type="file" name="fondo_conjunto" id="fondo_conjunto" accept="image/x-png,image/gif,image/jpeg" onchange="document.getElementById('img_fondo_conjunto').src = window.URL.createObjectURL(this.files[0])">
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="restricciones">
                                    Resticciones:
                                    <br>
                                    <ul>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-4">Alto:</div>
                                                <div class="col-md-6 text-left">900px</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-4">Ancho:</div>
                                                <div class="col-md-6 text-left">1600px</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-4">Resoluci&oacute;n:</div>
                                                <div class="col-md-6 text-left">100dpi</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <hr class="v" />
                        </div>
                        <div class="col-lg-5">
                            <div class="cajonFondoLogoPrincipal">
                                <div class="tituloCajonParametros">
                                    <h4>Logo institucional</h3>
                                </div>
                                <div class="imagenFondoPrincipal text-center">
                                    <img class="img-fluid rounded img-thumbnail" id="img_logo_conjunto" src="{{ asset('imagenes/sistema/'.$parametros->logo_conjunto) }}">
                                </div>
                                <div class="formularioImagen">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <input type="file" name="logo_conjunto" id="logo_conjunto" accept="image/x-png" onchange="document.getElementById('img_logo_conjunto').src = window.URL.createObjectURL(this.files[0])">
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="restricciones">
                                    Resticciones:
                                    <br>
                                    <ul>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-4">Alto:</div>
                                                <div class="col-md-6 text-left">800px</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-4">Ancho:</div>
                                                <div class="col-md-6 text-left">800px</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-4">Resoluci&oacute;n:</div>
                                                <div class="col-md-6 text-left">100dpi</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-4">Formato:</div>
                                                <div class="col-md-6 text-left">png</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="row form-group">
                                <label for="nombre_conjunto" class="col-lg-3 col-form-label">
                                    <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">Nombre Empresa</font>
                                    </font>
                                </label>
                                <input type="text" class="form-control col-lg-8" id="nombre_conjunto" name="nombre_conjunto" placeholder="Nombre Empresa" value="{{ old('nombre_conjunto', $parametros->nombre_conjunto ?? ' ') }}" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="row form-group">
                                <label for="slogan_conjunto" class="col-lg-3 col-form-label">
                                    <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">Slogan Empresa</font>
                                    </font>
                                </label>
                                <input type="text" class="form-control col-lg-8" id="slogan_conjunto" name="slogan_conjunto" placeholder="Slogan Empresa" value="{{ old('slogan_conjunto', $parametros->slogan_conjunto ?? ' ') }}" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="row form-group">
                                <label for="telefono_conjunto" class="col-lg-3 col-form-label">
                                    <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">Tel&eacute;fono Empresa</font>
                                    </font>
                                </label>
                                <input type="text" class="form-control col-lg-8" id="telefono_conjunto" name="telefono_conjunto" placeholder="Nombre Empresa" value="{{ old('telefono_conjunto', $parametros->telefono_conjunto ?? ' ') }}" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="row form-group">
                                <label for="direccion_conjunto" class="col-lg-3 col-form-label">
                                    <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">Direcci&oacute;n Empresa</font>
                                    </font>
                                </label>
                                <input type="text" class="form-control col-lg-8" id="direccion_conjunto" name="direccion_conjunto" placeholder="Direcci&oacute; Empresa" value="{{ old('direccion_conjunto', $parametros->direccion_conjunto ?? ' ') }}" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="row form-group">
                                <label for="email_conjunto" class="col-lg-3 col-form-label">
                                    <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">Email Empresa</font>
                                    </font>
                                </label>
                                <input type="text" class="form-control col-lg-8" id="direccion_conjunto" name="email_conjunto" placeholder="Email Empresa" value="{{ old('email_conjunto', $parametros->email_conjunto ?? ' ') }}" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row form-group">
                                <label for="nosotros_conjunto" class="col-lg-2 col-form-label">
                                    <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">Parrafo Nosotros</font>
                                    </font>
                                </label>
                                <textarea class="form-control col-lg-9" name="nosotros_conjunto" rows="8">{{ $parametros->nosotros_conjunto }}</textarea>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-12 pl-3">
                            <button type="submit" class="btn btn-success btn-sm" style="width: 150px;">Actualizar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
<!-- ************************************************************* -->
<!-- script hoja -->
@section('scripts_pagina')
<script src="{{ asset('js/admin/parametro/parametro.js') }}"></script>
@endsection
<!-- ************************************************************* -->
