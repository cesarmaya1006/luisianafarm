$(document).ready(function() {

    $("#tabla-data").on('submit', '.form-eliminar', function() {
        event.preventDefault();
        const form = $(this);
        swal({
            title: '¿Está seguro que desea eliminar el registro?',
            text: "Esta acción no se puede deshacer!",
            icon: 'warning',
            buttons: {
                cancel: "Cancelar",
                confirm: "Aceptar"
            },
        }).then((value) => {
            if (value) {
                form.trigger('submit');
            }
        });
    });

    function ajaxRequest(form) {
        $.ajax({
            url: form.attr('action'),
            type: 'POST',
            data: form.serialize(),
            success: function(respuesta) {
                console.log(respuesta);
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



    $('#foto_principal').on('change', function(event) {
        $('#img_principal_noticia').width('540');
        $('#img_principal_noticia').height('300');
    });
    $('#cierre_lun_vie').on('change', function(event) {
        if ($('#cierre_lun_vie').val() < $('#apertu_lun_vie').val()) {
            alert('El cierre no puede ser menor a la apertura');
            $('#cierre_lun_vie').val($('#apertu_lun_vie').val());
        }
    });
    $('#cierre_sab').on('change', function(event) {
        if ($('#cierre_sab').val() < $('#apertu_sab').val()) {
            alert('El cierre no puede ser menor a la apertura');
            $('#cierre_sab').val($('#apertu_sab').val());
        }
    });
    $('#cierre_dom').on('change', function(event) {
        if ($('#cierre_dom').val() < $('#apertu_dom').val()) {
            alert('El cierre no puede ser menor a la apertura');
            $('#cierre_dom').val($('#apertu_dom').val());
        }
    });
    $('#cierre_fes').on('change', function(event) {
        if ($('#cierre_fes').val() < $('#apertu_fes').val()) {
            alert('El cierre no puede ser menor a la apertura');
            $('#cierre_fes').val($('#apertu_fes').val());
        }
    });
    $('.categorias').click(function(event) {
        var cantCategorias = $('#general').attr('dat_cant');
        var existe = 0;
        var cate = "";
        if ($(this).is(':checked')) {
            if ($(this).attr('id') != 'general') {
                $('#general').prop("checked", false);
            } else {
                $('.categorias').prop("checked", false);
                $('#general').prop("checked", true);
            }
        } else {
            existe = 0;
            for (let index = 2; index <= cantCategorias; index++) {
                cate = '#categoria-' + index;
                if ($(cate).is(':checked')) {
                    existe = existe + 1;
                }
            }
            if (existe == 0) {
                $('#general').prop("checked", true);
            }
        }
    });
    $('#lun-vier').click(function(event) {
        if ($(this).is(':checked')) {
            $('#apertu_lun_vie').val('08:00:00');
            $('#cierre_lun_vie').val('16:00:00');
        } else {
            $('#apertu_lun_vie').val('');
            $('#cierre_lun_vie').val('');
        }
    });
    $('#sabados').click(function(event) {
        if ($(this).is(':checked')) {
            $('#apertu_sab').val('08:00:00');
            $('#cierre_sab').val('13:00:00');
        } else {
            $('#apertu_sab').val('');
            $('#cierre_sab').val('');
        }
    });
    $('#domingos').click(function(event) {
        if ($(this).is(':checked')) {
            $('#apertu_dom').val('09:00:00');
            $('#cierre_dom').val('13:00:00');
        } else {
            $('#apertu_dom').val('');
            $('#cierre_dom').val('');
        }
    });
    $('#festivos').click(function(event) {
        if ($(this).is(':checked')) {
            $('#apertu_fes').val('09:00:00');
            $('#cierre_fes').val('13:00:00');
        } else {
            $('#apertu_fes').val('');
            $('#cierre_fes').val('');
        }
    });

});