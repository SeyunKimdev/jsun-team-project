/**
 *  header.jsp
 */


$(function(){
	let num = 0;
	$("#mypageLogo").click(function(){
		if(num == 0) {
			$("#mypageCont").show();
			$("#arrowImg").attr("src", "up.png");
			num = 1;
		} else {
			$("#mypageCont").hide();
			$("#arrowImg").attr("src", "down.png");
			num = 0;
		}
	});
	
});