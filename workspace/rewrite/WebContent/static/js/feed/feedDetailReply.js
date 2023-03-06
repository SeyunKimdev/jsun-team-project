/**
 * feedDetailReply.jsp
 */

const $writeButton = $(".reply-write-button");
const $exitButton = $(".exitButton");
$writeButton.click(function(){
	$replyText.val("");
	$(".reply-input-wrap").fadeIn();
	$(".reply-write-button-box").hide();
});

$exitButton.click(function(){
	
	location.href=`${contextPath}/feedDetailOk.feed?feedId=${feedId}&page=${feedPage}&sort=${sort}&keyword=${keyword}`;
});

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
	
	function count(feedId, callback){
		$.ajax({
			url: contextPath + "/reply/replyCountOk.reply",
			data: {feedId: feedId},
			success: function(result){
				if(callback){
					callback(result)
				}
			}
		});
	}
	
	return {write: write, list: list, update: update, remove: remove, count : count};
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
			/*if(reply.memberId == memberId){*/
	text+= 	`						<div class="modify-button">
										<div class="update-cancel">
											<button class="reply-update-cancel-button reply-button">수정 취소</button>
										</div>
										<div>
											<button class="reply-update-button reply-button">수정</button>
										</div>
										<div>
											<button class="reply-delete-button reply-button" data-reply-id="${reply.replyId}">삭제</button>
										</div>
									</div>
		
			`;
			/*}*/
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
							<div class="reply-modify-box">
								<div class="reply-modify-layout">
									<textarea id="${reply.replyId}" placeholder="댓글을 입력해주세요." name="replyContent"
										class="reply-modify-textarea write-area" rows="1"
										style="overflow-x: hidden; overflow-wrap: break-word; height: 48px;"></textarea>
								</div>
								<div>
									<button class="reply-input-button-box update-done">
										<div>
											<span>
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
													<path fill-rule="evenodd" d="M6 11h4a1 1 0 110 2H6v6l13-7L6 5v6zm.948 9.761C5.616 21.478 4 20.513 4 19V5c0-1.513 1.616-2.478 2.948-1.761l13 7c1.402.755 1.402 2.767 0 3.522l-13 7z" fill="#e5e5e5"></path>
												</svg>
											</span>
										</div>
									</button>
								</div>
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
const $replyText = $(".write-area");
function write(){
	let reply = new Object();
	reply.replyContent = $replyText.val();
	reply.feedId = feedId;

	replyService.write(reply, function(){
		page = 1;
		$replyListBox.children().remove();
		$(".reply-input-wrap").fadeOut();
		$(".reply-write-button-box").show();
		replyService.list(showReplyAll);
		count(feedId);
	});

}


$replyListBox.on("click","button.reply-delete-button",function(){
	let replyId = $(this).data("reply-id");
	
	replyService.remove(replyId, function(){
		$replyListBox.children().remove();
		page = 1;
		replyService.list(showReplyAll);
		count(feedId);
	});
	
});


$replyListBox.on("click", ".update-done", function(){
	let reply = new Object();
	let i = $replyListBox.find(".update-done").index($(this));
	let $textarea = $replyListBox.find("textarea").eq(i); 
	reply.replyId = $textarea.attr("id");
	reply.replyContent = $textarea.val();
	replyService.update(reply, function(reply){
		$($(".reply-update-button")[i]).show();
		$($(".update-cancel")[i]).hide();
		$($(".reply-modify-box")[i]).hide();
		$replyListBox.find(".replyContentText").eq(i).text(reply.replyContent);
		$replyListBox.find(".replyDate").eq(i).text(elapsedTime(reply.replyUpdateDate));
		$($(".replyContent")[i]).show();
	});
});

$replyListBox.on("click",".reply-update-button",function(){
	let i = $replyListBox.find(".reply-update-button").index($(this));
	const $updateButton = $($(".reply-update-button")[i]);
	const $updateCancelButton = $($(".reply-update-cancel-button")[i]);
		$updateButton.click(function(){
			$($(".update-cancel")[i]).show();
			$updateButton.hide();
			$($(".reply-modify-box")[i]).show();
			$($("textarea[name='replyContent']")[i]).val($($(".replyContentText")[i]).text());
			$($(".replyContent")[i]).hide();
		});
		
		$updateCancelButton.click(function(){
			$($(".update-cancel")[i]).hide();
			$updateButton.show();
			$($(".replyContent")[i]).show();
			$($(".reply-modify-box")[i]).hide();
		});
		
		
});

count(feedId);

const $relplyCount = $(".replyCount");

function count(feedId){
	replyService.count(feedId,function(result){
		result = JSON.parse(result);
		$relplyCount.text(result.count);
	});
}	
