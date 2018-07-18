$(function() {
    $(window).bind('scroll', function() {
        var currentTop = $(window).scrollTop() - $('.canhcam-header-7').height() + $('.canhcam-nav-2').height();
        var elems = $('.scrollspy');
        elems.each(function(index) {
            var elemTop = $(this).offset().top;
            var elemBottom = elemTop + $(this).height();
            if (currentTop >= elemTop && currentTop <= elemBottom) {
                var id = $(this).attr('id');
                var navElem = $('a[href="#' + id + '"]');
                navElem.parent().addClass('active').siblings().removeClass('active');
            }
        })
    });
    $('.canhcam-nav-2 .nav-item').click(function() {
        $('.canhcam-nav-2 .nav-item').removeClass('active');
        $(this).addClass('active');
    })

    $(".canhcam-nav-2 .nav-item a[href*='#']:not([href='#])").click(function() {
        var heightFixed = ($('.canhcam-header-7').height() + $('.canhcam-nav-2').height()) + 'px';
        let target = $(this).attr("href");
        $('html,body').stop().animate({
            scrollTop: $(target).offset().top - 166
        }, 1000);
        event.preventDefault();
    });
});