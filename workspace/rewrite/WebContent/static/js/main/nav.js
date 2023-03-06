/**
 * nav.jsp
 */

$(function(){
	$("#NavMenu").on("mouseover", function() {
		$("#sideNav").show();
		
		$("#sideNav").on("mouseover", function(){
			$("#sideNav").show();
			
				$("#sideMatch").on("mouseover", function(){
					$("#Depth2li1").show();
					
					$("#Depth2li1").on("mouseover", function(){
						$("#Depth2li1").show();
					})
				})
				
				$("#sideFeed").on("mouseover", function(){
					$("#Depth2li2").show();
					
					$("#Depth2li2").on("mouseover", function(){
						$("#Depth2li2").show();
					})
				})
				
				$("#sideAfter").on("mouseover", function(){
					$("#Depth2li3").show();
					
					$("#Depth2li3").on("mouseover", function(){
						$("#Depth2li3").show();
					})
				})
			})
			
		$("#sideNav").on("mouseout", function(){
			$(".secondDepthUl").hide();
		})
	})
		
	$("#NavMenu").on("mouseout", function() {
		$("#sideNav").hide();
	})			
})
