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
				<h4 class="replyText">댓글<span class="replyCount"></span>개</h4>
				<span>
					<button
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
				<!-- 댓글 뽑는 곳  -->
			
			</div>
			<div class="replyInputContainer">
				<div class="replyInputForm">
					<div class="reply-write-button-box">
						<button class="reply-write-button">댓글 작성</button>
					</div>	
					<div class="reply-input-wrap" style="display:none;">
						<div class="replyInputWrap">
							<div class="replyInput">
								<textarea placeholder="댓글을 입력해주세요." name="replyContent"
									class="replyInputTextarea write-area" rows="1"
									style="overflow-x: hidden; overflow-wrap: break-word; height: 48px;"></textarea>
							</div>
						</div>
						<div class="replyButtons">
							<button class="replyInputButton">
								<div>
									<span><svg
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											fill="none" viewBox="0 0 24 24">
											<path fill-rule="evenodd"
												d="M6 11h4a1 1 0 110 2H6v6l13-7L6 5v6zm.948 9.761C5.616 21.478 4 20.513 4 19V5c0-1.513 1.616-2.478 2.948-1.761l13 7c1.402.755 1.402 2.767 0 3.522l-13 7z"
												fill="#e5e5e5"></path></svg></span>
								</div>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="backgroundWrap">
			<div class="background"></div>
		</div>
	</section>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = `${pageContext.request.contextPath}`;
	let memberId = "${sessionScope.memberId}";
	let replys = `${replys}`;
	let feedId = `${param.feedId}`;
	let feedPage = `${param.page}`;
	let keyword = `${param.keyword}`;
	let sort = `${param.sort}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/feed/feedDetailReply.js"></script>
</html>