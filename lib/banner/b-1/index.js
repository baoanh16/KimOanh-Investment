$(function() {
    $('.canhcam-banner-1 .list-items').each(function() {
        $('.canhcam-banner-1 .list-items').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: true,
            fade: false,
            infinite: false,
            dots: true,
            speed: 700,
            autoplay: true,
            autoplaySpeed: 2000,
            responsive: [{
                    breakpoint: 992,
                    settings: {

                    }
                },
                {
                    breakpoint: 480,
                    settings: {

                    }
                }
            ]
        })
    });

    
	$(".scroll").kAnimation({
        ClassName: 'animated',
        Animation: 'zoomIn',
        // Delay: 0,
        ScrollLoop: false,
        Type: 'Scroll'
    });
});