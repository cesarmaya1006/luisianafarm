@extends("admin.plantilla.plantilla")
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('estilosHojas')
    <!-- Pagina CSS -->
    <link rel="stylesheet" href="{{ asset('css/admin/usuario.css') }}">
@endsection
<!-- ************************************************************* -->
<!-- titulo hoja -->
@section('tituloHoja')
    Usuarios
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
                <h3 class="box-title">Listado de Usuarios</h3>
            </div>
            <br>
            <div class="box-body  card-primary">
                <div class="cajonFiltrarUsuario">
                    <hr>
                    @csrf
                    <div class="tituloFlitros">Filtrar por:</div>
                    <div class="cajaFiltros">
                        <div class="filtroBusqueda">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-1">
                                        <input type="radio" name="radio" checked="true" id="todos_registros">
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-lg-11">
                                        <label for="rol" class="control-label">Todos los registros</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="filtroBusqueda">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-1">
                                        <input type="radio" name="radio" id="radio_perfil">
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-lg-4">
                                        <label for="rol" class="control-label">Por perfil</label>
                                    </div>
                                    <div class="col-lg-7">
                                        <select class="form-control" name="rol" id="rol">
                                            <option>Seleccione una opci&oacute;n</option>
                                            @foreach ($roles as $rol)
                                            <option value="{{ $rol->id}}">{{ $rol->nombre}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="filtroBusqueda">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-1">
                                        <input type="radio" name="radio" id="radio_identificacion">
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-lg-4">
                                        <label for="rol" class="control-label">Por N&deg; de Identificaci&oacute;n</label>
                                    </div>
                                    <div class="col-lg-7">
                                        <input class="form-control" type="text" name="identificacion" id="identificacion">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="filtroBusqueda">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-1">
                                        <input type="radio" name="radio" id="radio_apellido">
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-lg-4">
                                        <label for="rol" class="control-label">Por Apellidos</label>
                                    </div>
                                    <div class="col-lg-7">
                                        <input class="form-control" type="text" name="apellido" id="apellido">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @include('includes.botones-exportar',['varPaginaCrear' => "admin-usuario-crear",'varPaginaVolver' => "admin-usuario-index",'tablaExportar' => "#tabla-data",'ignoraColumnas' => "",'nombreTabla' => "Usuarios del Sistema",])
                <table class="table table-striped table-bordered table-hover" style="width: 90%;margin: auto;" id="tabla-usuarios">
                    <thead>
                        <tr>
                            <th></th>
                            <th class="text-center">Datos Personales</th>
                            <th class="width70 text-center">Opciones</th>
                        </tr>
                    </thead>
                    <tbody id="cuerpo_tabla_usuarios">
                        @foreach ($datas as $data)
                        <tr>
                            <td class="text-center"><div class="imagenUsuarioTabla" ><img class="img-fluid" src="{{ asset('imagenes/usuarios/'.$data->foto) }}" alt=""></div></td>
                            <td>
                                <div class="row">
                                    <div class="col-lg-6 text-right pr-1"><strong>Rol:</strong></div>
                                    <div class="col-lg-6 text-left pl-1"><strong>@foreach ($data->roles as $rol){{$loop->last ? $rol->nombre : $rol->nombre . ', '}}@endforeach</strong></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 text-right pr-1"><strong>Nombres y Apellidos:</strong></div>
                                    <div class="col-lg-6 text-left pl-1"><strong>{{ ucwords($data->nombres)}} {{ ucwords($data->apellidos) }}</strong></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 text-right pr-1"><strong>N. de Identificaci&oacute;n:</strong></div>
                                    <div class="col-lg-6 text-left pl-1">{{$data->identificacion}}</div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 text-right pr-1"><strong>Email:</strong></div>
                                    <div class="col-lg-6 text-left pl-1">{{$data->email}}</div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 text-right pr-1"><strong>Tel&eacute;fono:</strong></div>
                                    <div class="col-lg-6 text-left pl-1">{{$data->telefono}}</div>
                                </div>
                            </td>
                            <td style="display: flex;justify-content: center;align-items: flex-end;">
                                <a href="{{route('admin-usuario-editar', ['id' => $data->id])}}" class="btn-accion-tabla tooltipsC" title="Editar este registro" style="text-shadow: 1px 1px black;">
                                    <i class="fas fa-edit fa-2x"></i>
                                    <br>
                                    Editar
                                </a>
                                <form action="{{ route ('admin-usuario-eliminar', ['id' => $data->id])}}" class="d-inline form-eliminar" method="POST">
                                    @csrf @method("delete")
                                    <button type="submit" class="btn-accion-tabla eliminar tooltipsC" title="Eliminar este registro" style="text-shadow: 1px 1px black;color: red;">
                                        <i class="fa fa-fw fa-trash text-danger fa-2x"></i>
                                        <br>
                                        Eliminar
                                    </button>
                                </form>
                                <a href="{{route('admin-usuario-editar', ['id' => $data->id])}}" class="btn-accion-tabla tooltipsC" title="Mostrar Detalles" style="text-shadow: 1px 1px black;color: orange ;">
                                    <i class="fas fa-search-plus text-warning fa-2x"></i>
                                    <br>
                                    Detalles
                                </a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ $datas->links() }}

                <table class="table table table-striped table-light table-responsive table-bordered" id="tabla-data" style="visibility: hidden">
                    <thead class="thead-dark">
                      <tr>
                        <th class="text-center" scope="col">Rol</th>
                        <th class="text-center" scope="col">N. Identificacion</th>
                        <th class="text-center" scope="col">Nombres</th>
                        <th class="text-center" scope="col">Apellidos</th>
                        <th class="text-center" scope="col">Email</th>
                        <th class="text-center" scope="col">Telefono</th>
                      </tr>
                    </thead>
                    <tbody id="cuerpo_tabla_usuarios2">
                        @foreach ($datas as $data)
                        <tr>
                            <td>@foreach ($data->roles as $rol){{ $rol->nombre }}@endforeach</td>
                            <td class="text-center">{{ $data->identificacion }}</td>
                            <td>{{ $data->nombres }}</td>
                            <td>{{ $data->apellidos }}</td>
                            <td>{{ $data->email }}</td>
                            <td>{{ $data->telefono }}</td>
                        </tr>
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
<script src="{{ asset('js/admin/usuario/usuario.js') }}"></script>
@endsection
<!-- ************************************************************* -->
