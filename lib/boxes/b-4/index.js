$(document).ready(function() {
    $('.slide-for').slick({
        asNavFor: '.slide-nav',

    });
    $('.slide-nav').slick({
        asNavFor: '.slide-for',
        slidesToShow: 4,
        focusOnSelect: true,
        infinite: true,
    })
})