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
	var windowHeight = $(window).height();
	var windowWidth = $('body').innerWidth();
	var height = windowHeight - $(".w20").offset().top - $('#footer').outerHeight();
	$('.w20').css('min-height', height);
	$('.main-content').css('width', windowWidth - $('.w20').outerWidth() - 10);
	
	$( window ).resize(function() {
		var windowHeight = $(window).height();
		var windowWidth = $('body').innerWidth();
		var height = windowHeight - $(".w20").offset().top - $('#footer').outerHeight();
		$('.w20').css('min-height', height);
		
		$('.main-content').css('width', windowWidth - $('.w20').outerWidth() - 10);
	});
});