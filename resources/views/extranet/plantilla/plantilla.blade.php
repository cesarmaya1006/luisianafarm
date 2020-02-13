<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <!-- Required meta tags -->
    @include("extranet.plantilla.head")
    <!-- -------------------------------------- -->
    <!-- Estilos proios de la pagina -->
    @yield ('estilosHojas')
</head>

<body>
    @foreach ($parametros as $parametro)
    @include("extranet.plantilla.footer")
    <div class="container barraMenu" class="sticky-top">
        <div class="logoTituloPrincipal">
            <div class="logoMenu">
                <img class="img-fluid" src="{{asset('imagenes/sistema/'.$parametro->logo_conjunto)}}">
            </div>
            <div class="tituloMenu">
                <h2>{{ strtoupper ($parametro->nombre_conjunto) }}</h2>
            </div>
        </div>
        <div class="menuPrincipal">
            <div class="container menuPrincipal2">
                @include("extranet.plantilla.menu")
            </div>
        </div>
    </div>
    @yield('cuerpo_pagina')
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    @include("extranet.plantilla.scripts")
    @endforeach
    @yield('scripts_pagina')
</body>

</html>
