$(function() {
	resizeSidebar();
	resizePanel();
	$(window).resize(function() {
		resizeSidebar();
		//resizePanel();
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

function resizePanel() {
	$(".row", "#thongTinCongVan").each(function(){
		var height = 0;
		$(".dudu-panel", this).each(function(){
			height = Math.max(height, $(this).height());
		});
		$(".dudu-panel", this).each(function(){
			$(this).css("min-height", height);
		});
	});
}