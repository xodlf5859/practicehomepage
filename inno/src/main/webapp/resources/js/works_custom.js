$(document).ready(function(){

	 var burger = $('.menu-trigger');

    burger.each(function(index){
        var $this = $(this);
        
        $this.on('click', function(e){
            e.preventDefault();
            $(this).toggleClass('active');

			var $hidden = $('.hidden_menu');
		
		if ( $hidden.hasClass('active') ) {
			showMenu();
		}
		else {
			hideMenu();
		}
		
		$hidden.toggleClass('active');
        })

		
    });
	
	function hideMenu() {
		$('.hidden_menu').removeClass('active');
		$('.list1').addClass('active');
	}
	
	function showMenu() {
		$('.hidden_menu').addClass('active');
		$('.list1').removeClass('active');
	}

/*-------------------------------------------------------*/

	$('a').click(function(e) {
		var $clickedA = $(this);
		var href = $clickedA.attr("href");
		
		if ( href == "#" ) {
			e.preventDefault();
		}
		
		// e.preventDefault();
	});

/*-------------------------------------------------------*/

  $(".port_list").click(function(){
	  $(".port_list").siblings().removeClass("appear");
	  $(".port_list").siblings().addClass("disappear"); 
		setTimeout(() => {
			$(this).siblings().removeClass("disappear");
	  		$(this).siblings().addClass("appear");
		}, 100);
  });

//   $(".port_list").click(function(){
// 	if($(".port_list").siblings().hasClass("appear")){
		
// 	}  else {
// 		$(".port_list").siblings().removeClass("appear");
// 	  $(".port_list").siblings().addClass("disappear"); 
// 		setTimeout(() => {
// 			$(this).siblings().removeClass("disappear");
// 	  		$(this).siblings().addClass("appear");
// 		}, 100);
// 	}
	
//   });

/*-------------------------------------------------------*/

  $(".list_menu ul li").click(function(){
	  $(".list_menu ul li span").removeClass("active");
	  $(this).children().addClass("active");
  });

});