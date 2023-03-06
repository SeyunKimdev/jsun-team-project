<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/static/images/favicon.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/feed/feedDetail.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/header/newHeader.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/footer/newFooter.css">

<title>피드 상세보기</title>

</head>
<body>
	<div class="mainContainer">
		<div class="mainWrapper">
			<section class="feedDetailSection">
				<div class="feedDetailContainer">
					<div class="feedDetailWrapper">
						<div class="feedDetail">
							<div class="feedDetailHeader">
								<!-- 좋아요 버튼 -->
								<div style="display: flex;">
									<button type="button" class="feedLikeButton">
										<div class="feedLikeIcon">
											<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
												fill="none" viewBox="0 0 24 24" class="emptyHeart">
													<path fill-rule="evenodd"
													d="M20.5 9c0-2-1.5-3.9-3.7-3.9-2.3 0-3.8 1.63-4.8 3.33-1-1.7-2.5-3.33-4.8-3.33C5 5.1 3.5 6.867 3.5 9c0 4.62 4.949 7.667 8.5 9.623 3.551-1.956 8.5-5.003 8.5-9.623zm-19-.176C1.5 5.607 3.962 3 7 3c2.7 0 4 1 5 2.2C13 4 14.3 3 17 3c3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z"
													fill="#FFF"> </path> 
												</svg>
											<svg xmlns="http://www.w3.org/2000/svg" width="18"
												class="heart active" height="18" fill="none" viewBox="0 0 24 24">
	  											<path fill-rule="evenodd"
													d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z"
													fill="#fd3049"></path>
												</svg>
										</div>
										<span class="feedLikeCount"></span>
									</button>
									<!-- 댓글 버튼 -->
									<button type="button" class="feedReplyButton">
										<div class="feedReplyIcon">
											<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
												fill="none" viewBox="0 0 24 24">
											<path class="feedReplyIconColor" fill-rule="evenodd"
													d="M2.368 21.632l.594-5.347A9.967 9.967 0 012 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10a9.967 9.967 0 01-4.285-.962l-5.347.594zm2.264-2.264l3.452-.384.268.137A7.96 7.96 0 0012 20a8 8 0 100-16 8 8 0 00-8 8 7.96 7.96 0 00.878 3.648l.138.268-.384 3.452zM8 13a1 1 0 110-2 1 1 0 110 2zm4 0a1 1 0 110-2 1 1 0 110 2zm4 0a1 1 0 110-2 1 1 0 110 2z"
													fill="#3a3a3a"></path></svg>
										</div>
										<span class="feedReplyCount"><c:out value='${replyCount}'/></span>
									</button>
								<!-- 유저 프로필 버튼 -->
								<button type="button" class="userProfileButton">
									<span class="userProfileIcon"> <img
										class="userProfileIconImg"
										src="${pageContext.request.contextPath}/static/images/profile.png">
									</span>
								</button>
								<span class="buttonsMargin"></span>
								</div>
								<!-- 수정하기 버튼 if문 걸기 -->
								<div style="display: flex">
										<div style="display: flex;"> 
											<button type="button" class="updateButton" onclick="location.href='${pageContext.request.contextPath}/feedModify.feed?feedId=${feed.feedId}'">
												<span class="updateButtonText"> 수정 </span>
											</button>
											<button type="button" class="deleteButton">
												<span class="deleteButtonText"> 삭제 </span>
											</button>
										</div>
									<div style="margin-left: 30px;">
										<button type="button" icon-position="2" class=exitButton
											color="default"  onclick="location.href='${pageContext.request.contextPath}/feedListOk.feed?page=${page}&sort=${sort}&keyword=${keyword}'">
											<span class="exitButtonIcon"><svg
													xmlns="http://www.w3.org/2000/svg" width="15" height="24"
													fill="none" viewBox="0 0 24 24">
												<path
														d="M18.5 4L12 10.5 5.5 4 4 5.5l6.5 6.5L4 18.5 5.5 20l6.5-6.5 6.5 6.5 1.5-1.5-6.5-6.5L20 5.5 18.5 4z"
														fill="white"></path></svg></span>
										</button>
									</div>
								</div>
							</div>
							<!-- 피드 자체 컨테이너 -->
							<section class="feedMainSection">
								<div class="feedMainContainer">
									<div class="feedMainWrapper">
										<div class="feedMainWrap">
											<div class="feedMain"
												style="width: 405px;">
												<!-- 피드 이미지 컨테이너 -->
												<picture class="feedMainImageContainer">
													<source type="image/webp" sizes="(min-width: 1024px) 405px, 100vw" />
													<img sizes="(min-width: 1024px) 405px, 100vw" src="${pageContext.request.contextPath}/upload/${files[0].fileSystemName}"
														class="feedMainImage">
												</picture>
												<!-- 피드 내용 컨테이너 -->
												<div class="feedContentContainer">

													<div class="feedContentWrapper">
														<div class="feedMainContent">
														<c:out value="${feed.feedContent}"/>
														</div>
													</div>

												</div>
												<div class="feedContentBackground"></div>
											</div>


										</div>
									</div>

								</div>
							</section>
						</div>

					</div>
				</div>
			</section>
			<div class="backgroundImgWrap">
				<div class="backgroundImg" style="background-image : url('${pageContext.request.contextPath}/upload/${files[0].fileSystemName}');"></div>
			</div>
			
			<div class="delete-modal-box-layout">
				<div class="delete-modal-box">
					<div class="delete-modal">
						<div class="delete-title-box">
							<p class="delete-title">Are you sure you want to delete the feed?</p>
						</div>
						<div class="delete-button-box-layout">
							<div class="delete-button-box">
								<button class="delete-ok delete-button" onclick="location.href='${pageContext.request.contextPath}/feedDeleteOk.feed?feedId=${feed.feedId}'">Ok</button>
							</div>
							<div class="delete-button-box">
								<button class="delete-cancel delete-button">Cancel</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = `${pageContext.request.contextPath}`
	let $feedTag = `${feed.feedHashTag}`;
	let $replyAll = `${reply}`;
	let feedId = `${param.feedId}`;
	let memberId = "1";
</script>
<script src="${pageContext.request.contextPath}/static/js/feed/feedDetail.js"></script>
<script>
	const $replyButton = $(".feedReplyButton");
	
	$replyButton.click(function(){
		location.href=`${contextPath}/reply/replyList.reply?feedId=${feed.feedId}&page=${param.page}&sort=${param.sort}&keyword=${param.keyword}`;
	});
</script>
</html>