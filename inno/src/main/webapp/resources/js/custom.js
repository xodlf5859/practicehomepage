$(document).ready(function(){

	

    var speed = 1000;
	var ease = 'easeOutExpo';
	var $wrap_div = $('.wrap>div');

	match_height();
	$(window).on('resize',match_height);

	function match_height(){
		var ht = $(window).height();
		$wrap_div.height(ht);
	};	

	$wrap_div.on("mousewheel",function(event,delta){    
//		event.preventDefault();	

		//마우스 휠을 올렸을때	
		if (delta > 0) {  
			console.log('up');
			var prev_target = $(this).prev().offset().top;
			$('html,body').stop().animate({'scrollTop':prev_target},speed,ease);
			 
		//마우스 휠을 내렸을때	 
		}else if (delta < 0) {  
			console.log('down');		
			var next_target = $(this).next().offset().top;
			$('html,body').stop().animate({'scrollTop':next_target},speed,ease);
		}          
     });

/*-------------------------------------------------------*/

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