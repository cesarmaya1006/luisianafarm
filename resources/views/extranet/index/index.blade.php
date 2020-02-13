<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <!-- Required meta tags -->
    @include("extranet.plantilla.head")
    <link rel="stylesheet" href="{{asset('css/extranet/index.css')}}">
</head>

<body>
    @foreach ($parametros as $parametro)
    <div class="cuerpo" style="background-image: url('{{asset('imagenes/sistema/'.$parametro->fondo_conjunto)}}');">
        <div class="pantallaPrincipal">
            <div class="container contenido-principal">
                <div class="logoPrincipal" @animacion1>
                    <img class="img-fluid" src="{{asset('imagenes/sistema/'.$parametro->logo_conjunto)}}">
                </div>
                <div class="sloganPrincipal">
                    <h3>{{ strtoupper ($parametro->nombre_conjunto) }}</h3>
                    <p class="sloganPrincipal">{{ $parametro->slogan_conjunto }}</p>
                </div>
                <div class="menuPrincipal">
                    @include("extranet.plantilla.menu")
                </div>
            </div>
        </div>
    </div>
    @include("extranet.plantilla.footer")
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    @include("extranet.plantilla.scripts")
    @endforeach
</body>

</html>
