function CCFooter7() {
	$('.canhcam-footer-7 .validator input').on('change keypress', function (e) {
		$('.canhcam-footer-7 .validator-core input').val($(this).val())
	})
	$('.canhcam-footer-7 .validator button').on('click', function (e) {
		if (e.isDefaultPrevented()) {
			alert($(this).find('input').attr('data-error'))
		} else {
			alert('Đăng ký thành công!')
			$('.canhcam-footer-7 .validator-core button').trigger('click')
			$('.canhcam-footer-7 .validator input').val('');
			return false
		}
		return false
	})
};

$(function() {
    CCFooter7();
})

$(window).resize(function() {})
