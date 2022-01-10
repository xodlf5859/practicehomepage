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

});