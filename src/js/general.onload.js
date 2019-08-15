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


    $('#selectSeccion').on('change', function (e) {
        e.preventDefault();
        var id = $(this).val();
        var ocultar = $( '.tab-pane' ).find( 'show' );
        var idOcultar = ocultar.eq(0).attr('id');

        console.log(ocultar);


        alert(ocultar);
        $('#' + id).tab('show');       
      

    });

});