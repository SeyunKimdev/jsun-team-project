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
/*=========================================================================================================*/
const replyService = (function(){
	function write(reply, callback){
		$.ajax({
			url: contextPath + "/reply/writeOk.reply",
			data: reply,
			success: function(){
				if(callback) {callback();}
			}
		});
	}
	
	function list(callback) {
		$.ajax({
			url: contextPath + "/reply/listOk.reply",
			data: {boardId: boardId, page: page},
			dataType: "json",
			success: function(replies){
				if(callback){
					callback(replies);
				}
			}
		});
	}
	return {write: write, list: list};
})();
	
	
function reply(){

	
	
	
	
	text += `
				<div class="replyContainer">
					<div width="100%" class="replyWrap">
						<div class="replyProfileThumbnailWrap">
							<div class="replyProfileThumbnail">
								<span class="replyProfileThumbnailSpan"> <img
									src="https://class101.net/images/default-user.png"
									class="replyProfileThumbnailImg"></span></a>
							</div>
							<div class="replyNicknameDate">
								<div class="replyNicknameWrap">
									<div font-weight="600" color="#3a3a3a" class="replyNickname">그루브타는
										허수아비</div>
								</div>
								<div class="replyDate">2022. 6. 7.</div>
							</div>
						</div>
						<div class="replyContentWrap">
							<div class="replyContent">
								<pre>
												<div class="replyContentText">응원합니다. 좋은 과정과 결과를 남겨주시길 바랍니다.</div>
											</pre>
							</div>
						</div>
						<div marginleft="0" class="likeContainer">
							<div class="likeWrap">
								<div class="likeAndCount">
									<button type="button" class="likeButton" color="transparent">
										<span class="likeButtonSpan"> <img
											class="emptyHeartImg" src="${pageContext.request.contextPath}/static/images/emptyHeart.png"> <img
											class="heartImg" src="${pageContext.request.contextPath}/static/images/heart.png">
										</span>
									</button>
									<div color="#cacaca" class="likeCount">0</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			`;

}