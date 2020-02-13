$(document).ready(function() {
    $("#tabla-data1").on('submit', '.form-eliminar', function() {
        event.preventDefault();
        const form = $(this);
        swal({
            title: '¿Está seguro que desea eliminar el parqueadero?',
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
    $("#tabla-data1").on('submit', '.form-activar', function() {
        event.preventDefault();
        const form = $(this);
        swal({
            title: '¿Está seguro que desea modificar la activación del parqueadero?',
            text: "Puede luego volver a cambiar la opción",
            icon: 'info',
            buttons: {
                cancel: "Cancelar",
                confirm: "Aceptar"
            },
        }).then((value) => {
            if (value) {
                ajaxRequest2(form);
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
                    Sistema.notificaciones('El registro fue eliminado correctamente', 'Sistema', 'success');
                } else {
                    Sistema.notificaciones('El registro no pudo ser eliminado, hay recursos usandolo', 'Sistema', 'error');
                }
            },
            error: function() {

            }
        });
    }

    function ajaxRequest2(form) {
        $.ajax({
            url: form.attr('action'),
            type: 'POST',
            data: form.serialize(),
            success: function(respuesta) {
                console.log(respuesta);
                if (respuesta.mensaje == "ok") {
                    if (respuesta.tipoAct == 'activar') {
                        form.children(".btn-accion-tabla").removeClass('text-danger').addClass('text-success');
                        form.children(".btn-accion-tabla").html('<i class="far fa-check-circle text-success"></i> Activar');
                        form.parents('tr').children('.observacionP').html('');

                    } else {
                        form.children(".btn-accion-tabla").removeClass('text-success').addClass('text-danger');
                        form.children(".btn-accion-tabla").html('<i class="far fa-check-circle text-danger"></i> Desactivar');
                        form.parents('tr').children('.observacionP').html('Parqueadero Inactivo');

                    }
                    Sistema.notificaciones('El registro fue activado correctamente', 'Sistema', 'success');
                } else {
                    Sistema.notificaciones('El registro no pudo ser activado, hay recursos usandolo', 'Sistema', 'error');
                }
            },
            error: function() {

            }
        });
    }
});