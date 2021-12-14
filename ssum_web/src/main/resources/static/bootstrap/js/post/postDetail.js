var commonUtil;



$(document).ready(function () {
    commonUtil = commonUtil.prototype;

	//탭 제어
	$('.text-tab').click(function(){

	   $('.text-tab').removeClass('current');
	   $(this).addClass('current');

	});

	//paging tab제어
	$('.pagination').click(function(){
        $('.pagination').removeClass('select');
        $(this).addClass('select');

	});
});