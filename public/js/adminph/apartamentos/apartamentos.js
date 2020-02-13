$(document).ready(function() {
    $('#filtro_apartamentos_clase').on('change', function(event) {
        const url_t = $(this).attr('data_url');
        const url_v = $(this).attr('data_url2');
        const _token_s = $(this).attr('data_token');
        const _filtro_s = $(this).val();
        var cuerpoSelect = "";
        var data = {
            filtro: $(this).val(),
            _token: _token_s
        };
        $.ajax({
            url: url_t,
            type: 'POST',
            data: data,
            success: function(respuesta) {
                var cuerpoSelect = "";
                if (_filtro_s == 'todos') {
                    cuerpoSelect += '<option value="sin_filtro">Seleccione una categoria...</option>';
                    window.location.href = url_v;

                } else if (_filtro_s == 'torres') {
                    cuerpoSelect += '<option value="sin_filtro">Seleccione una torre</option>';
                    $.each(respuesta, function(key, value) {
                        cuerpoSelect += '<option value="' + value['id'] + '">' + value['nombre'] + '</option>';
                    });
                } else if (_filtro_s == 'propietarios') {
                    cuerpoSelect += '<option value="sin_filtro">Seleccione una propietario</option>';
                    $.each(respuesta, function(key, value) {
                        cuerpoSelect += '<option value="' + value['id'] + '">' + value['nombres'] + ' ' + value['apellidos'] + '</option>';
                    });
                } else {
                    cuerpoSelect += '<option value="sin_filtro">Seleccione un Apartamento</option>';
                    $.each(respuesta, function(key, value) {
                        cuerpoSelect += '<option value="' + value['id'] + '">' + value['torres']['nombre'] + ' -  Piso ' + value['piso'] + ' -  ' + value['numero'] + '</option>';
                    });
                }
                $('#filtro_apartamentos').html(cuerpoSelect);
            },
            error: function() {}
        });
    });
    $('#filtro_apartamentos').on('change', function(event) {
        const url_t = $(this).attr('data_url');
        const url_v = $('#filtro_apartamentos_clase').attr('data_url2');
        const filtro_ = $('#filtro_apartamentos_clase').val();
        const _token_s = $(this).attr('data_token');
        const _filtro_s = $(this).val();
        var cuerpoSelect = "";
        var cuerpoSelect2 = "";
        var data = {
            filtro: filtro_,
            id: $(this).val(),
            _token: _token_s
        };
        if (_filtro_s == 'sin_filtro') {
            swal({
                title: "Elija una opción!",
                text: "Debe elegir al menos una opcion para ejecutar esta acción!",
                icon: "warning",
                button: "Continuar!",
            });
        } else {
            $.ajax({
                url: url_t,
                type: 'POST',
                data: data,
                success: function(respuesta) {
                    cuerpoSelect = "";
                    cuerpoSelect2 = "";
                    $.each(respuesta['matrix'], function(key, value) {
                        cuerpoSelect += '<tr>';
                        cuerpoSelect += '<td class="text-center" style="white-space:nowrap;">' + value['torres']['nombre'] + '</td>';
                        cuerpoSelect += '<td class="text-center" style="white-space:nowrap;">' + value['piso'] + '</td>';
                        cuerpoSelect += '<td class="text-center" style="white-space:nowrap;">' + value['numero'] + '</td>';
                        if (value['propietarios'].length > 0) {
                            $.each(value['propietarios'], function(key, item) {
                                cuerpoSelect += '<td class="text-center" style="white-space:nowrap;">' + item['nombres'] + ' ' + item['apellidos'] + '</td>';
                            });
                        } else {
                            cuerpoSelect += '<td class="text-center" style="white-space:nowrap;">No Administrado</td>';
                        }
                        cuerpoSelect2 = cuerpoSelect;
                        cuerpoSelect += '<td class="text-center" style="white-space:nowrap;">';
                        cuerpoSelect += '<a href="' + respuesta['url'] + '/adminph/apartamentos-detalles/' + value['id'] + '/adminph-apartamentos" class="btn-accion-tabla detalles tooltipsC text-info" title="Detalles de este registro" style="text-shadow: 1px 1px black;">';
                        cuerpoSelect += '<i class="fas fa-eye text-info"></i>';
                        cuerpoSelect += 'Detalles';
                        cuerpoSelect += '</a>';
                        cuerpoSelect += '&nbsp;';
                        cuerpoSelect += '&nbsp;';
                        cuerpoSelect += '<a href="' + respuesta['url'] + '/adminph/apartamentos-editar/' + value['id'] + '/adminph-apartamentos" class="btn-accion-tabla detalles tooltipsC text-warning" title="Detalles de este registro" style="text-shadow: 1px 1px black;">';
                        cuerpoSelect += '<i class="fas fa-edit text-warning" ></i>';
                        cuerpoSelect += 'Editar';
                        cuerpoSelect += '</a>';
                        cuerpoSelect += '</td>';
                        cuerpoSelect += '</tr>';
                    });
                    $('#tabla_usuarios_contenido').html(cuerpoSelect);
                    $('#tabla_usuarios_exportar').html(cuerpoSelect2);
                },
                error: function() {}
            });
        }
    });

});