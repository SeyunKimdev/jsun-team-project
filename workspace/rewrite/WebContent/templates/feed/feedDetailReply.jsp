<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/static/images/favicon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/feed/feedDetailReply.css">
<title>피드 댓글</title>
</head>
<body>
	<section class="mainSection">
		<div class="mainContainer">
			<div class="mainTitle">
				<span><h4 class="replyText">댓글</h4>4개</span><span><button
						type="button" class="exitButton" color="transparent">
						<span class="exitButtonSpan"><svg
								xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								fill="none" viewBox="0 0 24 24">
							<path
									d="M18.5 4L12 10.5 5.5 4 4 5.5l6.5 6.5L4 18.5 5.5 20l6.5-6.5 6.5 6.5 1.5-1.5-6.5-6.5L20 5.5 18.5 4z"
									fill="#1a1a1a"></path></svg></span>
					</button> </span>
			</div>
			<div class="replyListContainer">
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
			</div>
			<div class="replyInputContainer">
				<form class="replyInputForm">
					<div class="replyInputWrap">
						<div class="replyInput">
							<textarea placeholder="댓글을 입력해주세요." name="content"
								class="replyInputTextarea" rows="1"
								style="overflow-x: hidden; overflow-wrap: break-word; height: 48px;"></textarea>
						</div>
					</div>
					<button type="submit"
						class="replyInputButton">
						<div>
							<span><svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									fill="none" viewBox="0 0 24 24">
									<path fill-rule="evenodd"
										d="M6 11h4a1 1 0 110 2H6v6l13-7L6 5v6zm.948 9.761C5.616 21.478 4 20.513 4 19V5c0-1.513 1.616-2.478 2.948-1.761l13 7c1.402.755 1.402 2.767 0 3.522l-13 7z"
										fill="#e5e5e5"></path></svg></span>
						</div>
					</button>
				</form>
			</div>
		</div>
		<div class="backgroundWrap">
			<div class="background"></div>
		</div>
	</section>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = `${pageContext.request.contextPath}`
</script>
<script src="${pageContext.request.contextPath}/static/js/feed/feedDetailReply.js"></script>
</html>