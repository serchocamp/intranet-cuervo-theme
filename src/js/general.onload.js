/* Inicializacion del carrusel */
$(document).ready(function(){
    $('.owl-carousel').owlCarousel({
        loop:true,
        margin:25,
        dots:false,
        navText: [ '<i class="fas fa-chevron-left"></i>' , '<i class="fas fa-chevron-right"></i>' ],
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:3,
                nav:false
            },
            1000:{
                items:5,
                nav:true,
                loop:false
            }
        }
    })
});

/* Inicializacion de popvers */
$(document).ready(function(){
  $('.info').popover();
});


/* NUESTRAS MARCAS */
$(document).ready(function(){

    /* Obtiene la url actual para definir que opcion del select esta activa*/
    var href = document.location.href;
    var paginaNombre = href.substr(href.lastIndexOf('/') + 1);
    $('#selectMarca option').each(function () {
        var paginaSelect = $(this).val();
        if ( paginaSelect == paginaNombre ) {
            $(this).attr('selected' , 'selected');
        }
    });

    /* Cambia de página de acuerdo a la opción del select */
    $('#selectMarca').on('change', function (e) {
        e.preventDefault();
        var pagina = $(this).val();
        $( location ).attr("href", pagina);
    });

    /* Activa el tab dependiendo de al imagen seleccionada */
    $('#imagen-tabs img').on('click', function (e) {
        var mostrar = $(this).data('target');
        /* Cambia el estado active de als imagenes de acuerdo al que se le da click*/
        $('#imagen-tabs img').removeClass('active');
        $(this).addClass('active');
        /* Oculta tabs que no estan activos */
        $('.tab-pane').removeClass('active show');        
        /* Muestra tab seleccionado*/
        $('#' + mostrar).tab('show');
    })
});

/* SOMOS JOSE CUERVO */
/* Funcion para activar los tabs por medio de un select */
$(document).ready(function(){

    /* Cambia el tab seleccionado dependiendo de la opción selccionada*/
    $('#selectSeccion').on('change', function (e) {
        e.preventDefault();
        var id = $(this).val();
        $('.tab-pane').removeClass('active show');
        $('#' + id).tab('show');             
    });
});

/* CLASIFICADOS FUNCIONALIDADES*/
$(document).ready(function(){

    $('.info').on('click', function (e) {
      var contenedor = $(this).parents(".clasificado-parent");
      contenedor.find(".aviso-detalles").slideDown();
    })  

    $('.cerrarAviso').on('click', function (e) {
      $(this).parent().slideUp();
    })
    
});