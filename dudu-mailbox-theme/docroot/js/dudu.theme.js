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
});