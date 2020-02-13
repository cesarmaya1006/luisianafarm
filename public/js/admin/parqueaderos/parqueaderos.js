$(document).ready(function() {
    var totalCarros = 0;

    //------------------------------------------------------------------------------
    $('#totalCarros').html('Total Parq: ' + (parseInt($('#sin_asig_carro').val())));
    //------------------------------------------------------------------------------
    $('#totalMotos').html('Total Parq: ' + (parseInt($('#sin_asig_motos').val())));
    //------------------------------------------------------------------------------
    $('.input_carros').on('change', function(event) {
        $('#totalCarros').html('Total Parq: ' + (parseInt($('#sin_asig_carro').val())));
    });
    //------------------------------------------------------------------------------
    $('.input_motos').on('change', function(event) {
        $('#totalMotos').html('Total Parq: ' + (parseInt($('#sin_asig_motos').val())));
    });

    //------------------------------------------------------------------------------
    $("#caja_conf_rapida").on('submit', '.form-config_rapida', function() {
        event.preventDefault();
        const form = $(this);
        const cat_par_car = (parseInt($('#sin_asig_carro').val()));
        const cat_par_mot = (parseInt($('#sin_asig_motos').val()));
        const total_parq = cat_par_car + cat_par_mot;
        if (total_parq == 0) {
            swal({
                title: "Valores en ceros!",
                text: "Debe incluir al menos 1 parqueadero en esta acción!",
                icon: "error",
                button: "Continuar!",
            });
        } else {
            swal({
                title: '¿Está seguro que desea ajustar la configuración rápida?',
                text: "Esta acción borrará la confguración actual y no se puede deshacer!",
                icon: 'warning',
                buttons: {
                    cancel: "Cancelar",
                    confirm: "Aceptar"
                },
            }).then((value) => {
                if (value) {
                    continuarSubmmit(form);;
                }
            });
        }
    });
    //------------------------------------------------------------------------------
    $("#list-parqueaderos-config").on('submit', '.form-eliminar-parqueadero', function() {
        event.preventDefault();
        const form = $(this);
        swal({
            title: '¿Está seguro que desea eliminar el parqueadero de la base de datos?',
            text: "Esta acción no se puede deshacer!",
            icon: 'warning',
            buttons: {
                cancel: "Cancelar",
                confirm: "Aceptar"
            },
        }).then((value) => {
            if (value) {
                ajaxRequestP(form);
            }
        });
    });
    //------------------------------------------------------------------------------

    function continuarSubmmit(form) {
        form.trigger('submit');
    }
    //------------------------------------------------------------------------------
    function ajaxRequestP(form) {
        $.ajax({
            url: form.attr('action'),
            type: 'POST',
            data: form.serialize(),
            success: function(respuesta) {
                if (respuesta.mensaje == "ok") {
                    form.parents('tr').remove();
                    Sistema.notificaciones('El parqueadero fue eliminado correctamente', 'Sistema', 'success');
                } else {
                    Sistema.notificaciones('El parqueadero no pudo ser eliminado, hay recursos usandolo', 'Sistema', 'error');
                }
            },
            error: function() {

            }
        });
    }
});