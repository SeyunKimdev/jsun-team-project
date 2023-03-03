/**
 *  header.jsp
 */


$(function(){
	let num = 0;
	$("#mypageLogo").click(function(){
		if(num == 0) {
			$("#mypageCont").show();
			$("#arrowImg").attr("src", contextPath + "/static/images/up.png");
			num = 1;
		} else {
			$("#mypageCont").hide();
			$("#arrowImg").attr("src", contextPath + "/static/images/down.png");
			num = 0;
		}
	});
	
});