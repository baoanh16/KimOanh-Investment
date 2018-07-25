$(document).ready(function() {
    $('.news-slide').owlCarousel({
        items: 1,
        loop: false,
        URLhashListener: true,
        autoplayHoverPause: true,
        startPosition: 'URLHash',
        animateIn: 'fadeIn',
        dots: false,
    });
    $('.slide-nav').owlCarousel({
        loop: false,
        dots: false,
        margin: 10,
        loop: true,
        navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
        nav: true,
        responsive: {
            0: {
                items: 1,
            },
            480: {
                items: 2,
            },
            768: {
                items: 3,
            },
            992: {
                items: 4,
            }
        }
    });
})