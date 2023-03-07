/**
 * 
 */

function showDetail() {
	sendMessage = JSON.parse(sendMessage);
	const $form = $(".mainContainerForm");
	let text = "";
		text += `
				<div class="mainContainerFormDiv">
					<div class="mainTitleContainer">
						<h2 md="Headline3" class="mainTitle">보낸 메세지</h2>
					</div>
					<div class="MemberProfile">
						<div class="MemberProfileContainer">
							<div class="MemberProfileWrapper">
								<div size="28" class="MemberProfileImageContainer">
									<span class="mainContainerFormDivDiv2DivDivDivSpan">
										<picture class="mainContainerFormDivDiv2DivDivDivSpanPicture">
											<img sizes=" 100vw" src="https://class101.net/images/default-user.png" class="MemberProfileImage">
										</picture>
									</span>
								</div>
								<div md="Body2" class="MemberProfileNickname">${sendMessage.memberNickname}</div>
							</div>
						</div>
					</div>
					<div class="MainMessageContainer">
						<span class="mainMessage">${sendMessage.messageId}</span>
					</div>
				</div>
			`;
		$form.append(text);
}
showDetail();