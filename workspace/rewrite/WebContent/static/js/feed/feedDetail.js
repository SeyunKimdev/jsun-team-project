/**
 * feedDetail.jsp
 */

/* 좋아요 모듈*/

let likeService = (function(){

	function likeUp(feedId, callback){
		$.ajax({
			url: contextPath + "/like/feedLikeUp.like",
			data: {feedId : feedId, memberId : memberId},
			dataType: "json",
			success: function(check){
				if(callback){
					callback(check);
				}
			}
		});
	};
	
	function likeDown(feedId, callback){
		$.ajax({
			url: contextPath + "/like/feedLikeDown.like",
			data: {feedId : feedId, memberId : memberId},
			dataType: "json",
			success: function(check){
				if(callback){
					callback(check);
				}
			}
		});
	}
	
	function likeCount(feedId, callback){
		$.ajax({
			url: contextPath + "/like/feedLikeCount.like",
			data: {feedId : feedId},
			dataType: "json",
			success: function(count){
				if(callback){
					callback(count.likeCount);
				}
			}
		});
		
	}

	return {likeUp : likeUp, likeDown : likeDown, likeCount : likeCount};

})();	

/* 좋아요 클릭 이벤트 */

const $heart = $(".heart");
const $like = $(".feedLikeButton");

$like.click(function(){
	if($heart.hasClass("active")){
		$heart.removeClass("active");
		$heart.show();
		likeService.likeUp(feedId);
		likeService.likeCount(feedId,function (result) {
            $(".feedLikeCount").text(result);
        });
	}else {
		$heart.addClass("active");
		$heart.hide();
		likeService.likeDown(feedId);
		likeService.likeCount(feedId,function (result) {
            $(".feedLikeCount").text(result);
        });
	}
});

	getCount(feedId);
    function getCount(feedId){
        likeService.likeCount(feedId,function (result) {
            $(".feedLikeCount").text(result);
        });
    }



	showTag();
	function showTag(){
		let text = "";
		$feedTag = $feedTag.trim();
		let tags = $feedTag.split(" ");
		const $tagbox = $(".feedMain .feedContentContainer");	
		
		
		$(tags).each((i, tag) =>{
			text+=`<div class="hashTagContainer" color="#FFF" backgroundcolor="rgba(0, 0, 0, 0.56)">
						<div color="#FFF" class="hashTagContent"></div>
					</div>`;
		});
		$tagbox.prepend(text);
		
		$(".hashTagContent").each((i, e) => {
			$(e).text(tags[i]);
		});		
		
	}
	
	
/* 나가기 버튼*/
const $deleteModalButton = $(".deleteButton");
const $deleteModalExitButton = $(".delete-cancel");
const $deleteModalBox = $(".delete-modal-box");


$deleteModalButton.click(function(){
	$deleteModalBox.fadeIn();
});

$deleteModalExitButton.click(function(){
	$deleteModalBox.fadeOut();
});



	