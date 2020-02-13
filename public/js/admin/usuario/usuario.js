$(document).ready(function() {
    var servidor = 'http://127.0.0.1:8000/';

    if ($('#sistema').prop("checked") == true) {
        $('#email').prop('required', true);
        $('#telefono').prop('required', true);
    } else if ($('#sistema').prop("checked") == false) {
        $('#email').prop('required', false);
        $('#telefono').prop('required', false);
    }
    $('#rol_id').on('change', function(event) {
        if ($(this).val() == 11) {
            $('#sistema').prop('checked', false);
            $('#email').prop('required', false);
            $('#telefono').prop('required', false);
        } else {
            $('#sistema').prop('checked', true);
            $('#email').prop('required', true);
            $('#telefono').prop('required', true);
        }
    });
    $('#sistema').on('change', function(event) {
        if ($(this).prop("checked") == true) {
            $('#email').prop('required', true);
            $('#telefono').prop('required', true);
        } else if ($(this).prop("checked") == false) {
            $('#email').prop('required', false);
            $('#telefono').prop('required', false);
        }
    });

    $("#tabla-usuarios").on('submit', '.form-eliminar', function() {
        event.preventDefault();
        const form = $(this);
        swal({
            title: '¿Está seguro que desea eliminar el registro de usuario?',
            text: "Esta acción no se puede deshacer!",
            icon: 'warning',
            buttons: {
                cancel: "Cancelar",
                confirm: "Aceptar"
            },
        }).then((value) => {
            if (value) {
                ajaxRequest(form);
            }
        });
    });

    function ajaxRequest(form) {
        $.ajax({
            url: form.attr('action'),
            type: 'POST',
            data: form.serialize(),
            success: function(respuesta) {
                if (respuesta.mensaje == "ok") {
                    form.parents('tr').remove();
                    Sistema.notificaciones('El registro de usuario fue eliminado correctamente', 'Sistema', 'success');
                } else {
                    Sistema.notificaciones('El registro de usuario no pudo ser eliminado, hay recursos usandolo', 'Sistema', 'error');
                }
            },
            error: function() {

            }
        });
    }
    $('#todos_registros').on('change', function() {
        var url = '/admin/usuario-filtro';
        var data = {
            filtro: 'Todos',
            _token: $('input[name=_token]').val()
        };
        $.ajax({
            url: url,
            type: 'POST',
            data: data,
            success: function(respuesta) {

                llenarTablaUsuarios(respuesta, data.filtro, data._token);

            }
        });
    });
    $('#identificacion').keyup(function(event) {
        if ($("#radio_identificacion").is(':checked')) {
            var url = '/admin/usuario-filtro';
            var data = {
                filtro: 'identificacion',
                _token: $('input[name=_token]').val()
            };
            $.ajax({
                url: url,
                type: 'POST',
                data: data,
                success: function(respuesta) {
                    llenarTablaUsuarios(respuesta, data.filtro, data._token);
                }
            });
        }
    });
    $('#apellido').keyup(function(event) {
        if ($("#radio_apellido").is(':checked')) {
            var url = '/admin/usuario-filtro';
            var data = {
                filtro: 'apellido',
                _token: $('input[name=_token]').val()
            };
            $.ajax({
                url: url,
                type: 'POST',
                data: data,
                success: function(respuesta) {
                    llenarTablaUsuarios(respuesta, data.filtro, data._token);
                }
            });
        }
    });
    $('#rol').on('change', function() {
        var filtro = "perfil";
        if ($("#radio_perfil").is(':checked')) {
            var url = '/admin/usuario-filtro';
            var data = {
                filtro: 'perfil',
                perfil: $('#rol').val(),
                _token: $('input[name=_token]').val()
            };
            $.ajax({
                url: url,
                type: 'POST',
                data: data,
                success: function(respuesta) {
                    llenarTablaUsuarios(respuesta, data.filtro, data._token);
                }
            });
        }
    });

    function llenarTablaUsuarios(respuesta, filtro, token) {
        var cuerpoTabla = "";
        var cuerpoTabla2 = "";
        var asset = "{{ asset('') }}";
        asset = asset + 'imagenes/usuarios/';

        $.each(respuesta, function(key, value) {
            if (filtro == 'Todos') {
                cuerpoTabla += '<tr>';
                cuerpoTabla += '<td class="text-center"><div class="imagenUsuarioTabla" ><img class="img-fluid" src="' + servidor + 'imagenes/usuarios/' + value['foto'] + '" alt=""></div></td>';
                cuerpoTabla += '<td>';
                cuerpoTabla += '<div class="row">';
                cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Rol:</strong></div>';
                cuerpoTabla += '<div class="col-lg-6 text-left pl-1"><strong>' + value['roles'][0]['nombre'] + '</strong></div>';
                cuerpoTabla += '</div>';
                cuerpoTabla += '<div class="row">';
                cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Nombres y Apellidos:</strong></div>';
                cuerpoTabla += '<div class="col-lg-6 text-left pl-1"><strong>' + value['nombres'] + ' ' + value['apellidos'] + '</strong></div>';
                cuerpoTabla += '</div>';
                cuerpoTabla += '<div class="row">';
                cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>N. de Identificaci&oacute;n:</strong></div>';
                cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['identificacion'] + '</div>';
                cuerpoTabla += '</div>';
                cuerpoTabla += '<div class="row">';
                cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Email:</strong></div>';
                cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['email'] + '</div>';
                cuerpoTabla += '</div>';
                cuerpoTabla += '<div class="row">';
                cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Tel&eacute;fono:</strong></div>';
                cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['telefono'] + '</div>';
                cuerpoTabla += '</div>';
                cuerpoTabla += '</td>';
                cuerpoTabla += '<td style="display: flex;justify-content: center;align-items: flex-end;">';
                cuerpoTabla += '<a href="' + servidor + 'admin/usuario/' + value['id'] + '/editar" class="btn-accion-tabla tooltipsC" title="Editar este registro" style="text-shadow: 1px 1px black;">';
                cuerpoTabla += '<i class="fas fa-edit fa-2x"></i>';
                cuerpoTabla += '<br>';
                cuerpoTabla += 'Editar';
                cuerpoTabla += '</a>';
                cuerpoTabla += '<form action="' + servidor + 'admin/usuario/' + value['id'] + '" class="d-inline form-eliminar" method="POST">';
                cuerpoTabla += '<input type="hidden" name="_token" value="' + token + '">';
                cuerpoTabla += '<input type="hidden" name="_method" value="delete">';
                cuerpoTabla += '<button type="submit" class="btn-accion-tabla eliminar tooltipsC" title="Eliminar este registro" style="text-shadow: 1px 1px black;color: red;">';
                cuerpoTabla += '<i class="fa fa-fw fa-trash text-danger fa-2x"></i>';
                cuerpoTabla += '<br>';
                cuerpoTabla += 'Eliminar';
                cuerpoTabla += '</button>';
                cuerpoTabla += '</form>';
                cuerpoTabla += '<a href="' + servidor + 'admin/usuario/' + value['id'] + '/editar" class="btn-accion-tabla tooltipsC" title="Mostrar Detalles" style="text-shadow: 1px 1px black;color: orange ;">';
                cuerpoTabla += '<i class="fas fa-search-plus text-warning fa-2x"></i>';
                cuerpoTabla += '<br>';
                cuerpoTabla += 'Detalles';
                cuerpoTabla += '</a>';
                cuerpoTabla += '</td>';
                cuerpoTabla += '</tr>';

                cuerpoTabla2 += '<tr>';
                cuerpoTabla2 += '<td>' + value['roles'][0]['nombre'] + '</td>';
                cuerpoTabla2 += '<td class="text-center">' + value['identificacion'] + '</td>';
                cuerpoTabla2 += '<td>' + value['apellidos'] + '</td>';
                cuerpoTabla2 += '<td>' + value['nombres'] + '</td>';
                cuerpoTabla2 += '<td>' + value['email'] + '</td>';
                cuerpoTabla2 += '<td>' + value['telefono'] + '</td>';
                cuerpoTabla2 += '</tr>';

            } else if (filtro == 'perfil') {
                if (value['roles'][0]['id'] == $('#rol').val()) {
                    cuerpoTabla += '<tr>';
                    cuerpoTabla += '<td class="text-center"><div class="imagenUsuarioTabla" ><img class="img-fluid" src="' + servidor + 'imagenes/usuarios/' + value['foto'] + '" alt=""></div></td>';
                    cuerpoTabla += '<td>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Rol:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1"><strong>' + value['roles'][0]['nombre'] + '</strong></div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Nombres y Apellidos:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1"><strong>' + value['nombres'] + ' ' + value['apellidos'] + '</strong></div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>N. de Identificaci&oacute;n:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['identificacion'] + '</div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Email:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['email'] + '</div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Tel&eacute;fono:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['telefono'] + '</div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '</td>';
                    cuerpoTabla += '<td style="display: flex;justify-content: center;align-items: flex-end;">';
                    cuerpoTabla += '<a href="' + servidor + 'admin/usuario/' + value['id'] + '/editar" class="btn-accion-tabla tooltipsC" title="Editar este registro" style="text-shadow: 1px 1px black;">';
                    cuerpoTabla += '<i class="fas fa-edit fa-2x"></i>';
                    cuerpoTabla += '<br>';
                    cuerpoTabla += 'Editar';
                    cuerpoTabla += '</a>';
                    cuerpoTabla += '<form action="' + servidor + 'admin/usuario/' + value['id'] + '" class="d-inline form-eliminar" method="POST">';
                    cuerpoTabla += '<input type="hidden" name="_token" value="' + token + '">';
                    cuerpoTabla += '<input type="hidden" name="_method" value="delete">';
                    cuerpoTabla += '<button type="submit" class="btn-accion-tabla eliminar tooltipsC" title="Eliminar este registro" style="text-shadow: 1px 1px black;color: red;">';
                    cuerpoTabla += '<i class="fa fa-fw fa-trash text-danger fa-2x"></i>';
                    cuerpoTabla += '<br>';
                    cuerpoTabla += 'Eliminar';
                    cuerpoTabla += '</button>';
                    cuerpoTabla += '</form>';
                    cuerpoTabla += '<a href="' + servidor + 'admin/usuario/' + value['id'] + '/editar" class="btn-accion-tabla tooltipsC" title="Mostrar Detalles" style="text-shadow: 1px 1px black;color: orange ;">';
                    cuerpoTabla += '<i class="fas fa-search-plus text-warning fa-2x"></i>';
                    cuerpoTabla += '<br>';
                    cuerpoTabla += 'Detalles';
                    cuerpoTabla += '</a>';
                    cuerpoTabla += '</td>';
                    cuerpoTabla += '</tr>';

                    cuerpoTabla2 += '<tr>';
                    cuerpoTabla2 += '<td>' + value['roles'][0]['nombre'] + '</td>';
                    cuerpoTabla2 += '<td class="text-center">' + value['identificacion'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['apellidos'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['nombres'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['email'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['telefono'] + '</td>';
                    cuerpoTabla2 += '</tr>';
                }
            } else if (filtro == 'identificacion') {
                if (value['identificacion'].includes($('#identificacion').val())) {
                    cuerpoTabla += '<tr>';
                    cuerpoTabla += '<td class="text-center"><div class="imagenUsuarioTabla" ><img class="img-fluid" src="' + servidor + 'imagenes/usuarios/' + value['foto'] + '" alt=""></div></td>';
                    cuerpoTabla += '<td>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Rol:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1"><strong>' + value['roles'][0]['nombre'] + '</strong></div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Nombres y Apellidos:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1"><strong>' + value['nombres'] + ' ' + value['apellidos'] + '</strong></div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>N. de Identificaci&oacute;n:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['identificacion'] + '</div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Email:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['email'] + '</div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Tel&eacute;fono:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['telefono'] + '</div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '</td>';
                    cuerpoTabla += '<td style="display: flex;justify-content: center;align-items: flex-end;">';
                    cuerpoTabla += '<a href="' + servidor + 'admin/usuario/' + value['id'] + '/editar" class="btn-accion-tabla tooltipsC" title="Editar este registro" style="text-shadow: 1px 1px black;">';
                    cuerpoTabla += '<i class="fas fa-edit fa-2x"></i>';
                    cuerpoTabla += '<br>';
                    cuerpoTabla += 'Editar';
                    cuerpoTabla += '</a>';
                    cuerpoTabla += '<form action="' + servidor + 'admin/usuario/' + value['id'] + '" class="d-inline form-eliminar" method="POST">';
                    cuerpoTabla += '<input type="hidden" name="_token" value="' + token + '">';
                    cuerpoTabla += '<input type="hidden" name="_method" value="delete">';
                    cuerpoTabla += '<button type="submit" class="btn-accion-tabla eliminar tooltipsC" title="Eliminar este registro" style="text-shadow: 1px 1px black;color: red;">';
                    cuerpoTabla += '<i class="fa fa-fw fa-trash text-danger fa-2x"></i>';
                    cuerpoTabla += '<br>';
                    cuerpoTabla += 'Eliminar';
                    cuerpoTabla += '</button>';
                    cuerpoTabla += '</form>';
                    cuerpoTabla += '<a href="' + servidor + 'admin/usuario/' + value['id'] + '/editar" class="btn-accion-tabla tooltipsC" title="Mostrar Detalles" style="text-shadow: 1px 1px black;color: orange ;">';
                    cuerpoTabla += '<i class="fas fa-search-plus text-warning fa-2x"></i>';
                    cuerpoTabla += '<br>';
                    cuerpoTabla += 'Detalles';
                    cuerpoTabla += '</a>';
                    cuerpoTabla += '</td>';
                    cuerpoTabla += '</tr>';

                    cuerpoTabla2 += '<tr>';
                    cuerpoTabla2 += '<td>' + value['roles'][0]['nombre'] + '</td>';
                    cuerpoTabla2 += '<td class="text-center">' + value['identificacion'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['apellidos'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['nombres'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['email'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['telefono'] + '</td>';
                    cuerpoTabla2 += '</tr>';
                }
            } else if (filtro == 'apellido') {
                var cadena1 = value['apellidos'];
                cadena1 = cadena1.toUpperCase();
                var cadena2 = $('#apellido').val();
                cadena2 = cadena2.toUpperCase();
                if (cadena1.includes(cadena2)) {
                    cuerpoTabla += '<tr>';
                    cuerpoTabla += '<td class="text-center"><div class="imagenUsuarioTabla" ><img class="img-fluid" src="' + servidor + 'imagenes/usuarios/' + value['foto'] + '" alt=""></div></td>';
                    cuerpoTabla += '<td>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Rol:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1"><strong>' + value['roles'][0]['nombre'] + '</strong></div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Nombres y Apellidos:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1"><strong>' + value['nombres'] + ' ' + value['apellidos'] + '</strong></div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>N. de Identificaci&oacute;n:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['identificacion'] + '</div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Email:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['email'] + '</div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '<div class="row">';
                    cuerpoTabla += '<div class="col-lg-6 text-right pr-1"><strong>Tel&eacute;fono:</strong></div>';
                    cuerpoTabla += '<div class="col-lg-6 text-left pl-1">' + value['telefono'] + '</div>';
                    cuerpoTabla += '</div>';
                    cuerpoTabla += '</td>';
                    cuerpoTabla += '<td style="display: flex;justify-content: center;align-items: flex-end;">';
                    cuerpoTabla += '<a href="' + servidor + 'admin/usuario/' + value['id'] + '/editar" class="btn-accion-tabla tooltipsC" title="Editar este registro" style="text-shadow: 1px 1px black;">';
                    cuerpoTabla += '<i class="fas fa-edit fa-2x"></i>';
                    cuerpoTabla += '<br>';
                    cuerpoTabla += 'Editar';
                    cuerpoTabla += '</a>';
                    cuerpoTabla += '<form action="' + servidor + 'admin/usuario/' + value['id'] + '" class="d-inline form-eliminar" method="POST">';
                    cuerpoTabla += '<input type="hidden" name="_token" value="' + token + '">';
                    cuerpoTabla += '<input type="hidden" name="_method" value="delete">';
                    cuerpoTabla += '<button type="submit" class="btn-accion-tabla eliminar tooltipsC" title="Eliminar este registro" style="text-shadow: 1px 1px black;color: red;">';
                    cuerpoTabla += '<i class="fa fa-fw fa-trash text-danger fa-2x"></i>';
                    cuerpoTabla += '<br>';
                    cuerpoTabla += 'Eliminar';
                    cuerpoTabla += '</button>';
                    cuerpoTabla += '</form>';
                    cuerpoTabla += '<a href="' + servidor + 'admin/usuario/' + value['id'] + '/editar" class="btn-accion-tabla tooltipsC" title="Mostrar Detalles" style="text-shadow: 1px 1px black;color: orange ;">';
                    cuerpoTabla += '<i class="fas fa-search-plus text-warning fa-2x"></i>';
                    cuerpoTabla += '<br>';
                    cuerpoTabla += 'Detalles';
                    cuerpoTabla += '</a>';
                    cuerpoTabla += '</td>';
                    cuerpoTabla += '</tr>';

                    cuerpoTabla2 += '<tr>';
                    cuerpoTabla2 += '<td>' + value['roles'][0]['nombre'] + '</td>';
                    cuerpoTabla2 += '<td class="text-center">' + value['identificacion'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['apellidos'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['nombres'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['email'] + '</td>';
                    cuerpoTabla2 += '<td>' + value['telefono'] + '</td>';
                    cuerpoTabla2 += '</tr>';
                }
            }
        })
        $('#cuerpo_tabla_usuarios').html(cuerpoTabla);
        $('#cuerpo_tabla_usuarios2').html(cuerpoTabla2);
    }
});