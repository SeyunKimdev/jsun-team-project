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
let page = 1;
/*=======================================================================*/
/*모듈*/
/*=======================================================================*/
const replyService = (function(){
	function write(reply, callback){
		$.ajax({
			url: contextPath + "/reply/replyWriteOk.reply",
			data: reply,
			success: function(){
				if(callback) {callback();}
			}
		});
	}
	
	function list(callback) {
		$.ajax({
			url: contextPath + "/reply/replyListOk.reply",
			data: {feedId: feedId, page: page},
			dataType: "json",
			success: function(replies){
				if(callback){
					callback(replies);
				}
			}
		});
	}
	
	function update(reply, callback){
		$.ajax({
			url: contextPath + "/reply/replyUpdateOk.reply",
			data: reply,
			dataType: "json",
			success: function(reply){
				if(callback){
					callback(reply);
				}
			}
		});
	}
	
	function remove(replyId, callback) {
		$.ajax({
			url: contextPath + "/reply/replyDeleteOk.reply",
			data: {replyId: replyId},
			success: function(){
				if(callback) {
					callback();
				}
			}
		});
	}
	
	return {write: write, list: list, update: update, remove: remove};
})();
	
/*===========================================================================페이지 로드시==========*/
function elapsedTime(date) {
  const start = new Date(date);
  const end = new Date();

  const diff = (end - start) / 1000;
  
  const times = [
    { name: '년', milliSeconds: 60 * 60 * 24 * 365 },
    { name: '개월', milliSeconds: 60 * 60 * 24 * 30 },
    { name: '일', milliSeconds: 60 * 60 * 24 },
    { name: '시간', milliSeconds: 60 * 60 },
    { name: '분', milliSeconds: 60 },
  ];

  for (const value of times) {
    const betweenTime = Math.floor(diff / value.milliSeconds);

    if (betweenTime > 0) {
      return `${betweenTime}${value.name} 전`;
    }
  }
  return '방금 전';
}
/*====================================ajax 리스트 로드===========================*/
replyService.list(showReplyAll);

$(".replyListContainer").scroll(
	function() {
		if ($(".replyListContainer").scrollTop() == $(".replyListContainer").height() - $(".replyListContainer").height()) {
			page++;
			replyService.list(showReplyAll);
		}
	}
);

const $replyListBox = $(".replyListContainer");

function showReplyAll(replyMoreDTO){
	let replies = replyMoreDTO.replies;
	let text ="";
	
	if(replies.length == 0 && page == 1){
		text = `
		<li>
			<h4 class="title">
				댓글이 없습니다.
			</h4>
		</li>
		`
	}else {
	
	replies.forEach(reply => {
	text += `	
				<div class="replyContainer">
					<div width="100%" class="replyWrap">
						<div class="replyProfileThumbnailWrap">
							<div class="replyProfileThumbnail">
								<span class="replyProfileThumbnailSpan"> 
			`	
	text += `							
									<img src="https://class101.net/images/default-user.png" class="replyProfileThumbnailImg">
			`
	text += `					</span>
							</div>
							<div class="replyNicknameDate">
								<div class="replyNicknameWrap">
									<div font-weight="600" color="#3a3a3a" class="replyNickname">${reply.memberNickName}</div>
			`						
	text+= 	`						<div class="modify-button">
										<div>
											<button class="reply-update-button reply-button">수정</button>
										</div>
										<div>
											<button class="reply-delete-button reply-button" data-reply-id="${reply.replyId}">삭제</button>
										</div>
									</div>
		
			`;
	text+=	`				</div>
								<div class="replyDate">${elapsedTime(reply.replyRegisterDate == reply.replyUpdateDate ? reply.replyRegisterDate : reply.replyUpdateDate)}</div>
							</div>
						</div>
						<div class="replyContentWrap">
							<div class="replyContent">
								<pre>
									<div class="replyContentText">${reply.replyContent}</div>
								</pre>
							</div>
						</div>
						<div marginleft="0" class="likeContainer">
							<div class="likeWrap">
								<div class="likeAndCount">
									<button type="button" class="likeButton" color="transparent">
										<span class="likeButtonSpan"> 
											<img class="emptyHeartImg" src="${contextPath}/static/images/emptyHeart.png"> 
											<img class="heartImg" src="${contextPath}/static/images/heart.png">
										</span>
									</button>
									<div color="#cacaca" class="likeCount">0</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			`;
			
		});
	}
	$replyListBox.append(text);
}

$(".replyInputButton").on("click", write);

function write(){
	const $replyContent = $("textarea[name='replyContent']");
	let reply = new Object();
	reply.replyContent = $replyContent.val();
	reply.feedId = feedId;

	$replyContent.val("");
	replyService.write(reply, function(){
		page = 1;
		$replyListBox.children().remove();
		replyService.list(showReplyAll);
	});
}


$replyListBox.on("click","button.reply-delete-button",function(){
	let replyId = $(this).data("reply-id");
	
	replyService.remove(replyId, function(){
		$replyListBox.children().remove();
		page = 1;
		replyService.list(showReplyAll);
	});
});
