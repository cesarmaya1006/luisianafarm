$(document).ready(function() {
    $('.form-eliminar').on('click', function(event) {
        event.preventDefault();
        const url = $(this).attr("action");
        const formulario = $(this);
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
                formulario.trigger('submit');
            }
        });
    })

    /*$("#form-eliminar").on('submit', '.form-eliminar', function() {
        event.preventDefault();
        const form = $(this);
        swal({
            title: '¿Está seguro que desea eliminar la imagen?',
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
    });*/

});