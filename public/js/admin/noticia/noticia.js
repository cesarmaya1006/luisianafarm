$(document).ready(function() {
    $("#eliminar_noticias").on('submit', '.form-eliminar', function() {
        event.preventDefault();
        const form = $(this);
        swal({
            title: '¿Está seguro que desea eliminar esta noticia?',
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

    $('.eliminar_galeria').on('click', function(event) {
        event.preventDefault();
        const url = $(this).attr('href');
        swal({
            title: '¿Está seguro que desea eliminar la foto?',
            text: "Esta acción no se puede deshacer!",
            icon: 'warning',
            buttons: {
                cancel: "Cancelar",
                confirm: "Aceptar"
            },
        }).then((value) => {
            if (value) {
                window.location.href = url;
            }
        });
    })

    $('.eliminar_documento').on('click', function(event) {
        event.preventDefault();
        const url = $(this).attr('href');
        swal({
            title: '¿Está seguro que desea eliminar el documento?',
            text: "Esta acción no se puede deshacer!",
            icon: 'warning',
            buttons: {
                cancel: "Cancelar",
                confirm: "Aceptar"
            },
        }).then((value) => {
            if (value) {
                window.location.href = url;
            }
        });
    })
    if ($('#tipo').val() == 'noticia_principal') {
        $('#resumenNoticia').css("visibility", "visible");
        $('#resumen').attr('rows', '3');
    } else {
        $('#resumenNoticia').css("visibility", "hidden");
        $('#resumen').attr('rows', '1');
    }
    $('#tipo').on('change', function() {
        if ($('#tipo').val() == 'noticia_principal') {
            $('#resumenNoticia').css("visibility", "visible");
            $('#resumen').attr('rows', '3');
        } else {
            $('#resumen').html("noticia corta");
            $('#resumenNoticia').css("visibility", "hidden");
            $('#resumen').attr('rows', '1');
        }
    });

    function ajaxRequest(form) {
        $.ajax({
            url: form.attr('action'),
            type: 'POST',
            data: form.serialize(),
            success: function(respuesta) {
                if (respuesta.mensaje == "ok") {
                    form.parents('.cajaNoticia').remove();
                    Sistema.notificaciones('El registro fue eliminado correctamente', 'Sistema', 'success');
                } else {
                    Sistema.notificaciones('El registro no pudo ser eliminado, hay recursos usandolo', 'Sistema', 'error');
                }
            },
            error: function() {

            }
        });
    }
});