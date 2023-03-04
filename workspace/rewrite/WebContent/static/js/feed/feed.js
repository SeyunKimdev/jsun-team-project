/**
 * feed.jsp
 */

HTMLCollection.prototype.forEach = Array.prototype.forEach;

const sortButton = document.getElementsByClassName("sortButton");
const sortText = document.getElementsByClassName("sortText");
const likeButton = document.querySelectorAll(".likeButton");
const heartImg = document.querySelector(".heartImg");
const emptyHeartImg = document.querySelector(".emptyHeartImg");
let temp = 0;

// 최신순, 인기순 버튼 누르면 폰트 변경
$(".sortButton").each((i, e) => {
	$(e).on("click", function(){
		$($(".sortText")[i]).css("fontWeight", 'bold');
	
		if(temp == i){
			return;
		}
		
		$($(".sortText")[temp]).css("fontWeight", 'normal');
		
		temp = i;
	});
});


/* 좋아요 클릭 이벤트 */
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