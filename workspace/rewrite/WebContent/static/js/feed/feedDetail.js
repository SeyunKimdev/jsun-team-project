/**
 * feedDetail.jsp
 */
/* 좋아요 클릭 이벤트 */

const $heart = $(".heart");
const $like = $(".feedLikeButton");

if(checkHeart != false){
	console.log("빨강");
	$heart.show();
	$heart.removeClass("active");
}else {
	console.log("백");
	$heart.hide();
	$heart.addClass("active");
}

	
$like.click(function(){
	if($heart.hasClass("active")){
		$heart.removeClass("active");
		$heart.show();
		likeService.likeUp(feedId,function(result){
			$(".feedLikeCount").text(result.likeCount);
		});
	}else {
		$heart.addClass("active");
		$heart.hide();
		likeService.likeDown(feedId,function(result){
			$(".feedLikeCount").text(result.likeCount);
		});
	}
	});

	getCount(feedId);
    function getCount(feedId){
        likeService.likeCount(feedId,function (result) {
			console.log(result);
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



	