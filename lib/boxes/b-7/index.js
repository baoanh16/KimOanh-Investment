$(document).ready(function() {
    $('.canhcam-boxes-7 .project-slide').owlCarousel({
        items: 1,
        loop: false,
        // margin:10,
        URLhashListener: true,
        autoplayHoverPause: true,
        startPosition: 'URLHash',
        animateIn: 'fadeIn',
        dots: false,
    });
    $('.canhcam-boxes-7 .project-nav').owlCarousel({
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
            }
        }
    });
})