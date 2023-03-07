/**
 * feed.jsp
 */
globalThis.checkHeart;
HTMLCollection.prototype.forEach = Array.prototype.forEach;
const sortButton = document.getElementsByClassName("sortButton");
const sortText = document.getElementsByClassName("sortText");
const likeButton = document.querySelectorAll(".likeButton");
const heartImg = document.querySelector(".heartImg");
const emptyHeartImg = document.querySelector(".emptyHeartImg");
let temp = 0;
const $sortButton = $(".sortButton");

// 최신순, 인기순 버튼 누르면 폰트 변경
$sortButton.click(function(){
	let i = $sortButton.index($(this));
	location.href=`${contextPath}/feedListOk.feed?sort=${i == 0 ? 'recent' : 'popular'}&keyword=${keyword}`;
});

/*피드 목록 가져오기*/	

const $feedUl = $(".feedListWrapper .feedList");	

showFeedList();
function showFeedList(){
	feeds = JSON.parse(feeds);
	files = JSON.parse(files);
	
	let text = "";
	
	feeds.forEach( feed => {
		text += `<li>
					<div class="feedWrap">
						<div class="feed">
							<div class="feedThumbnail">
				`;				/*이미지 넣는 곳 src*/
		text +=	`				<span class="feedThumbnailSpan" ratio="0.75">
									<picture ratio="0.75" class="feedPicture">
										
				`
				if(files[feed.feedId]){
					text +=	`<source class="feedPictureSource" type="image/webp" sizes="(min-width: 1024px) 300px, 50vw" />
					<a class="detail" href="javascript:location.href='${contextPath}/feedDetailOk.feed?feedId=${feed.feedId}&page=${page}&sort=${sort}&keyword=${keyword}&check=${globalThis.checkHeart}'">
					<img class="feedImage" sizes="(min-width: 1024px) 300px, 50vw" src="${contextPath}/upload/${files[feed.feedId].fileSystemName}"/>
					</a>
				`
				}else{
					text +=	`<source class="feedPictureSource" type="image/webp" sizes="(min-width: 1024px) 300px, 50vw" /images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/375xauto 375w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/750xauto 750w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/960xauto 960w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/1440xauto 1440w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2048xauto 2048w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2880xauto 2880w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/autoxauto 5120w " />
					<a class="detail" href="javascript:location.href='${contextPath}/feedDetailOk.feed?feedId=${feed.feedId}&page=${page}&sort=${sort}&keyword=${keyword == null ? null : keyword}'">
					<img class="feedImage" sizes="(min-width: 1024px) 300px, 50vw" srcset="https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/375xauto 375w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/750xauto 750w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/960xauto 960w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/1440xauto 1440w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2048xauto 2048w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2880xauto 2880w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/autoxauto 5120w"
				 			src="${contextPath}/upload/${files[feed.feedId].fileSystemName}"/>
				 	</a>		
				`
				}		
		text+=	`					</picture>
								</span>
				`;				/*좋아요 버튼*/
		text += `				
								<div class="likeButtonWrap">
									<button type="button" icon-position="2" class="likeButton" color="transparent" this.onclick=null;>
										<span class="likeButtonSpan" id="${feed.feedId}">
											<img class="emptyHeartImg active" like="false" src="${contextPath}/static/images/emptyHeart.png">
											<img class="heartImg" src="${contextPath}/static/images/heart.png">
										</span>
									</button>
								</div>
				`;				/*지역 이름 넣기*/
		text +=	`				
								<div class="locationWrap">
									<div class="location" color="#FFF" backgroundcolor="#000">
										<div color="#FFF" class="locationText">${feed.profileLocation}</div>
									</div>
								</div>
							</div>	
				`;				
		text +=	`			<div class="feedInfo">
								<div class="feedNickname">
									
									<p class="feedNicknameText">${feed.memberNickname}</p>
								</div>
								<div class="feedHashTagWrap">
									<strong style="color: skyblue">${feed.feedHashTag}</strong> 
								</div>
								<div class="likeCountWrap">
									<div>
										<div class="likeCount">
											<div class="infoHeart">
												<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="none" viewBox="0 0 24 24">
			                                        <path fill-rule="evenodd" d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z" fill="#d7d7d7">
													</path>
	                                      		</svg>
											</div>
											<span class="count">${feed.feedLikeCount}</span>
										</div>
									</div>
								</div>
							</div>
							<div class="feedInfoMargin"></div>
							<div class="statusWrap">
								<div class="status">
					`;
					
			text+= `<p class="statusText">${feed.profileMarried == 'y' ? '기혼' : '미혼'}</p>`;
			
			text +=	`		
								</div>
							</div>
						</div>
					</div>
				</li>
					`;
					
	});			
	 
	$feedUl.append(text);
}


$feedUl.on("click","button.likeButton",function(){
	let i = $feedUl.find(".likeButton").index($(this));
	let replyId = $($(".likeButtonSpan")[i]).attr("id");
		if($($(".emptyHeartImg")[i]).hasClass("active")){
			$($(".emptyHeartImg")[i]).hide();
			$($(".heartImg")[i]).show();
			$($(".emptyHeartImg")[i]).removeClass("active");
			checkHeart = true;
			console.log(checkHeart);
			likeService.likeUp(replyId,function(result){
				$($("span.count")[i]).text(result.likeCount);
			});
			
		}else {
			$($(".emptyHeartImg")[i]).show();
			$($(".heartImg")[i]).hide();
			$($(".emptyHeartImg")[i]).addClass("active");
			checkHeart= false;
			console.log(checkHeart);
			likeService.likeDown(replyId,function(result){
				$($("span.count")[i]).text(result.likeCount);
			});
		}
		console.log(globalThis.checkHeart);
});

