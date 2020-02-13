$(document).ready(function() {
    $('#cantidadTorres').on('change', function(event) {
        if ($('#cantidadTorres').val() == 1) {
            $('#botonAgregarT').html('Agregar una torre');
        } else {
            $('#botonAgregarT').html('Agregar ' + $('#cantidadTorres').val() + ' torres');
        }
    });

});