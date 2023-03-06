/**
 *  공지사항
 */

const $aTag = $('.faq-wrap-A');
$(document).ready(function() {
	$('.faq-wrap-A').mouseover(function() {
		$(this).css('background-color', '#f3f3f3');
	});

	$('.faq-wrap-A').mouseout(function() {
		$(this).css('background-color', 'white');
	});
});

/*Atag 클릭이벤트*/

$(".faq-wrap-A").click(function() {
	let i = $(this).index();
	location.href=`${contextPath}/faqDetail.notice?i=${i}`;
});