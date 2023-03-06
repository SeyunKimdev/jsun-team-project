/**
 * 
 */

function showMessageList() {
	receiveMessages = JSON.parse(receiveMessages);
	const $ul = $(".feedList");
	let text = "";
	receiveMessages.forEach((receiveMessage) => {
		text += `
			<li>
				<div class="feedWrap">
					<div class="feed">
						<div class="feedThumbnail">
							<!-- 이미지 넣는 곳 src -->
							<span class="feedThumbnailSpan" ratio="0.75">
								<picture ratio="0.75" class="feedPicture">
									<source class="feedPictureSource" type="image/webp" sizes="(min-width: 1024px) 300px, 50vw" srcset=" https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/375xauto 375w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/750xauto 750w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/960xauto 960w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/1440xauto 1440w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2048xauto 2048w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2880xauto 2880w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/autoxauto 5120w " />
									<img class="feedImage" sizes="(min-width: 1024px) 300px, 50vw" srcset="https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/375xauto 375w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/750xauto 750w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/960xauto 960w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/1440xauto 1440w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2048xauto 2048w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2880xauto 2880w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/autoxauto 5120w" src="https://cdn.class101.net/images/baf7ab7e-eba0-49ef-ab00-694a1574562d" alt="귀요미" />
								</picture>
							</span>
							<!-- 지역 이름 넣기 -->
							<div class="locationWrap">
								<div class="location" color="#FFF" backgroundcolor="#000">
									<div color="#FFF" class="locationText">${receiveMessage.profileLocation}</div>
							</div>
						</div>
					</div>	
					<div class="feedInfo">
						<div class="feedNickname">
							<!-- 닉네임 -->
							<p class="feedNicknameText">${receiveMessage.memberNickname}</p>
						</div>
					</div>
					<div class="feedInfoMargin"></div>
						<div class="statusWrap">
							<div class="status">
								<p class="statusText">${receiveMessage.profileMarried == y ? '기혼' : '미혼'}</p>
							</div>
						</div>
					</div>
				</div>
			</li>

		`;
	});
	$ul.append(text);
} 
showMessageList();
