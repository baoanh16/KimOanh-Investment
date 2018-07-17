$(document).ready(function() {

    $(".canhcam-gallery-2 .gallery-details .gallery-lists .item").lightGallery({
        thumbnail: true,
        // mode: 'lg-fade',
        addClass: 'canhcam-gallery-3 canhcam-video-fixed-size',
        counter: false,
        download: false,
        startClass: '',
        enableSwipe: false,
        enableDrag: false,
        speed: 500,
        thumbnail: true,
        animateThumb: false,
        showThumbByDefault: false,
    });

    $('.canhcam-gallery-2 .gallery-details .gallery-lists .item').each(function() {
        $(this).click(function() {
            $(this).find('.hidden a:first-child').trigger('click')
        })
    });

});