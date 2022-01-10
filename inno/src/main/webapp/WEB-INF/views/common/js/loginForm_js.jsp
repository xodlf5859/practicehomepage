<script>

$(document).ready(function (){

    var burger = $('.menu-trigger');

    burger.each(function(index){
        var $this = $(this);
        
        $this.on('click', function(e){
            e.preventDefault();
            $(this).toggleClass('active');
        })
    });

    if (jQuery.fn.placeholder) {
        jQuery("input[placeholder], textarea[placeholder]").placeholder();
    };
});
</script>