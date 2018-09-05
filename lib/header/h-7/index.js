function CCHeader7() {
	$('.canhcam-header-7 .navbar-toggler').on("click", function () {
		$('.canhcam-header-7').toggleClass('expand')
	});
	$('.canhcam-header-7 .btnsearch .btn').on("click", function () {
		$('.canhcam-header-7 .search').toggleClass('active')
		$('.canhcam-header-7 .btnsearch').toggleClass('active')
	});
	$('.canhcam-header-7 .closebnt').on("click", function () {
		$('.canhcam-header-7').toggleClass('expand')
	});
};

function getMapto() {
	if ($(window).width() <= CANHCAM_APP.CHANGE_GRID_SM) {
		$('[k-menu-map-to]').each(function () {
			var getTo = $(this).attr('k-menu-map-to')
			$(getTo).html($(this).clone().removeAttr('k-menu-map-to').show())
			$(this).hide()
		})
	} else {
		$('[k-menu-map-to]').each(function () {
			var getTo = $(this).attr('k-menu-map-to')
			$(getTo).html('')
			$(this).show()
		})
	}
}

function cutLink(){
	var pagePath=window.location.pathname;
	var position = pagePath.indexOf('/',2);
	var result = pagePath.substring(0,position);
	if(result == '/du-an'){
		$('.Module-141 ul.navbar-nav li.nav-item:nth-child(2)').addClass('active');
	} else if (result == '/tin-tuc'){
		$('.Module-141 ul.navbar-nav li.nav-item:nth-child(3)').addClass('active');
	} else if(result == '/thu-vien'){
		$('.Module-141 ul.navbar-nav li.nav-item:nth-child(4)').addClass('active');
	}
}




$(function () {
	cutLink();
	CCHeader7();
	getMapto()
})


$(window).resize(function () {
	getMapto()
	$('.canhcam-header-7').removeClass('expand')
	$('.canhcam-header-7 .search').removeClass('active')
	$('.canhcam-header-7 .btnsearch').removeClass('active')
})
