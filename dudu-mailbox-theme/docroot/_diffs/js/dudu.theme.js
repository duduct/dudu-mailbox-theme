$(function() {
	$(".btn-group").each(function() {
		if ($(this).data('toggle') == "buttons")
			$(this).children('label').each(function() {
				var element = $(this);
				element.addClass("btn btn-default");
				var input = element.children("input");
				if (input.is(':checked')) {
					element.addClass('active');
				}
			});
	});
	resizeSidebar();
	$( window ).resize(function() {
		resizeSidebar();
	});
});

function resizeSidebar() {
	var windowHeight = $(window).height();
	var windowWidth = window.innerWidth
	|| document.documentElement.clientWidth
	|| document.body.clientWidth;
	var height = windowHeight - $(".main-content").offset().top - $('#footer').outerHeight() - 2;
	$('.main-content').css('min-height', height);
	$('.main-content').css('width', windowWidth - $('.w20').outerWidth() - 18);
}