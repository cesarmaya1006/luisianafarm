$(document).ready(function() {
    $('.foto-galeria').on('click', function(event) {
        var _url = $(this).attr("data-url");
        var _data_id = $(this).attr("data_foto");
        var n = _url.search("/galeria_modal");
        var servidor = _url.substr(0, n);
        var respuesta_html = '';
        $.ajax({
            url: _url,
            type: 'GET',
            success: function(respuesta) {
                respuesta_html = '';
                $.each(respuesta, function(index, item) {
                    if (item['id'] == _data_id) {
                        respuesta_html += '<div class="carousel-item active">';
                    } else {
                        respuesta_html += '<div class="carousel-item">';
                    }
                    respuesta_html += '<img src="' + servidor + '/imagenes/galeria/' + item['foto'] + '" class="img-fluid"   style="width:800px; height:auto;margin:auto;">';
                    respuesta_html += '<div class="carousel-caption d-none d-md-block" style="background-color: rgba(0, 0, 0, 0.5); text-shadow: 1px 1px black">';
                    if (item['titulo'] != null) {
                        respuesta_html += '<h5>' + item['titulo'] + '</h5>';
                    }
                    if (item['parrafo'] != null) {
                        respuesta_html += '<p>' + item['parrafo'] + '</p>';
                    }
                    respuesta_html += '</div>';
                    respuesta_html += '</div>';
                });
                $('#fotos_noticia_galeria').html(respuesta_html);
                $("#exampleModal").modal("show");
            },
            error: function() {
                console.log(respuesta);
            }
        });

    });
});