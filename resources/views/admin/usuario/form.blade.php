<div class="form-group row">
    <label for="icono" class="col-lg-1 col-form-label requerido">
        <font style="vertical-align: inherit;">
            <font style="vertical-align: inherit;">Rol de Usuario</font>
        </font>
    </label>
    <div class="col-lg-3">
        <select name="rol_id[]" id="rol_id" class="form-control" required>
            @if(isset($volver))
            <option value="">Elija un Rol</option>
            <option value="{{$tipo=='propietario'? 10:11}}">{{$tipo=='propietario'? 'Propietario':'Residente'}}</option>
            @else
            <option value="">Elija un Rol</option>
            @foreach($roles as $id => $nombre)
            <option value="{{$id}}" {{ is_array (old('rol_id')) ? (in_array($id, old('rol_id')) ? 'selected' : '')  : (isset($data) ? ($data->roles->firstWhere('id', $id) ? 'selected' : '') : '')}}>{{$nombre}}</option>
            @endforeach
            @endif
        </select>
    </div>
    <label for="nombres" class="col-lg-1 col-form-label requerido">
        <font style="vertical-align: inherit;">
            <font style="vertical-align: inherit;">Nombres</font>
        </font>
    </label>
    <div class="col-lg-3">
        <input type="text" class="form-control" id="nombres" name="nombres" placeholder="Nombres del Usuario" value="{{ old('nombres', $data->nombres ?? '') }}" required>
    </div>
    <label for="apellidos" class="col-lg-1 col-form-label requerido">
        <font style="vertical-align: inherit;">
            <font style="vertical-align: inherit;">Apellidos</font>
        </font>
    </label>
    <div class="col-lg-3">
        <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="Apellidos del Usuario" value="{{ old('apellidos', $data->apellidos ?? '') }}" required>
    </div>
</div>
<div class="form-group row">
    <label for="tiposdocu" class="col-lg-1 col-form-label requerido">
        <font style="vertical-align: inherit;">
            <font style="vertical-align: inherit;">Tipo Doc</font>
        </font>
    </label>
    <div class="col-lg-3">
        <select name="tipo_docu_id" id="tipo_docu_id" class="form-control" required>
            <option value="">Tipo de Documento</option>
            @foreach($tiposdocu as $tipo_docu)
            <option value="{{$tipo_docu->id}}" {{ is_array (old('tipo_docu_id')) ? (in_array($tipo_docu->id, old('tipo_docu_id')) ? 'selected' : '')  : (isset($data)? ($data->tipo_docu_id==$tipo_docu->id? 'selected' : '') : '')}}>{{$tipo_docu->abreb_id}}</option>
            @endforeach
        </select>
    </div>
    <label for="identificacion" class="col-lg-2 col-form-label requerido">
        <font style="vertical-align: inherit;">
            <font style="vertical-align: inherit;">N° de Identificaci&oacute;n</font>
        </font>
    </label>
    <div class="col-lg-3">
        <input type="text" class="form-control" id="identificacion" name="identificacion" placeholder="N° de Identificaci&oacuet;n de  del Usuario" value="{{ old('identificacion', $data->identificacion ?? '') }}" required>
    </div>
    <label for="genero" class="col-lg-1 col-form-label requerido">
        <font style="vertical-align: inherit;">
            <font style="vertical-align: inherit;">G&eacute;nero</font>
        </font>
    </label>
    <div class="col-lg-2">
        <select name="genero" id="genero" class="form-control" required>
            <option value="">G&eacute;nero</option>
            <option value="M" {{ (isset($data)? ($data->genero=='M'? 'selected' : '') : '')}}>M</option>
            <option value="F" {{ (isset($data)? ($data->genero=='F'? 'selected' : '') : '')}}>F</option>
        </select>
    </div>
</div>
<div class="form-group row">
    <label for="fecha_nacimiento" class="col-lg-1 col-form-label requerido">
        <font style="vertical-align: inherit;">
            <font style="vertical-align: inherit;">Fec Nac</font>
        </font>
    </label>
    <div class="col-lg-2">
        <input type="date" class="form-control" name="fecha_nacimiento" id="fecha_nacimiento" value="{{ old('fecha_nacimiento', $data->fecha_nacimiento ?? '') }}" required>
    </div>
    <label for="email" class="col-lg-1 col-form-label requerido">
        <font style="vertical-align: inherit;">
            <font style="vertical-align: inherit;">Email</font>
        </font>
    </label>
    <div class="col-lg-4">
        <input type="email" class="form-control" id="email" name="email" placeholder="Email de  del Usuario" value="{{ old('email', isset($data)? ($data->email!='Sin Email'?$data->email:'') :'') }}">
    </div>
    <label for="telefono" class="col-lg-1 col-form-label requerido">
        <font style="vertical-align: inherit;">
            <font style="vertical-align: inherit;">Tel&eacute;fono</font>
        </font>
    </label>
    <div class="col-lg-3">
        <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Tel&eacute;fono Usuario" value="{{ old('telefono', isset($data)? ($data->telefono!='Sin Telefono'?$data->telefono:'') :'') }}">
    </div>
</div>
<div class="row form-group ">
    <div class="col-12 custom-control custom-checkbox">
        <input id="sistema" class="custom-control-input" type="checkbox" name="sistema" @if(isset($data)) @if($data->sistema=='1') {{ 'checked' }} @else {{ '' }} @endif @else {{ 'checked' }} @endif>
        <label for="sistema" class="custom-control-label">Usuario con acceso al sistema</label>
    </div>
</div>
