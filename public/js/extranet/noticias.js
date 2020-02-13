$(document).ready(function() {
    $('.vintalight__photo').on('click', function(event) {
        var _url = $(this).attr("data-url");
        var _data_foto = $(this).attr("data_foto");
        var n = _url.search("/modal_noticias");
        var servidor = _url.substr(0, n);
        var respuesta_html = '';
        $.ajax({
            url: _url,
            type: 'GET',
            success: function(respuesta) {
                respuesta_html = '';
                $.each(respuesta, function(index, item) {
                    if (item['id'] == _data_foto) {
                        respuesta_html += '<div class="carousel-item text-center active" style="background-color: black;">';
                    } else {
                        respuesta_html += '<div class="carousel-item text-center" style="background-color: black;">';
                    }
                    respuesta_html += '<img src="' + servidor + '/imagenes/noticias/' + item['url'] + '" class="img-fluid"   style="width:450px; height:auto;margin:auto;">';
                    respuesta_html += '</div>';
                });
                $('#fotos_noticia_galeria').html(respuesta_html);
                $("#modalGaleria").modal("show");
            },
            error: function() {
                console.log(respuesta);
            }
        });

    });
});