$(document).ready(function () {
    $('#nav-button').on('click', function () {
        $('#working-area').toggleClass('active');
    });
	var foundActive = $('.nav-sidebar').find('a[href="' + window.location.pathname + '"]').parent().toggleClass('active');
	if (foundActive === undefined || foundActive.length < 1) {
		$('#overview').toggleClass('active');
	}
});