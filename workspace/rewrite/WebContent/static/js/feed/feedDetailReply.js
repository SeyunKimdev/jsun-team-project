/**
 * feedDetailReply.jsp
 */

/* 좋아요 클릭 이벤트 */
const likeButton = document.querySelectorAll(".likeButton");
const heartImg = document.querySelector(".heartImg");
const emptyHeartImg = document.querySelector(".emptyHeartImg");

$(".likeButton").each((i, e) => {
	   $(e).on("click", function() {
	        var checkHeart = $($('.heartImg')[i]).css("display");
	        if(checkHeart == "none"){
	            $($('.heartImg')[i]).css("display", "block");
	            $($('.emptyHeartImg')[i]).css("display", "none");
	        } else {
	        	$($('.heartImg')[i]).css("display", "none");
	        	$($('.emptyHeartImg')[i]).css("display", "block");
	        }
	   })
	});
