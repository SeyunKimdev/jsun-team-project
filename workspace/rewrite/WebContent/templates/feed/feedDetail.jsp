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
								<button type="button" class="feedLikeButton">
									<div class="feedLikeIcon">
										<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
											fill="none" viewBox="0 0 24 24" class="emptyHeart">
												<path fill-rule="evenodd"
												d="M20.5 9c0-2-1.5-3.9-3.7-3.9-2.3 0-3.8 1.63-4.8 3.33-1-1.7-2.5-3.33-4.8-3.33C5 5.1 3.5 6.867 3.5 9c0 4.62 4.949 7.667 8.5 9.623 3.551-1.956 8.5-5.003 8.5-9.623zm-19-.176C1.5 5.607 3.962 3 7 3c2.7 0 4 1 5 2.2C13 4 14.3 3 17 3c3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z"
												fill="#FFF"> </path> 
											</svg>
										<svg xmlns="http://www.w3.org/2000/svg" width="24"
											class="heart" height="24" fill="none" viewBox="0 0 24 24">
  											<path fill-rule="evenodd"
												d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z"
												fill="#fd3049"></path>
											</svg>
									</div>
									<span class="feedLikeCount">${feed.feedLikeCount}</span>
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
									<span class="feedReplyCount">5</span>
								</button>
								<!-- 유저 프로필 버튼 -->
								<button type="button" class="userProfileButton">
									<span class="userProfileIcon"> <img
										class="userProfileIconImg"
										src="${pageContext.request.contextPath}/static/images/profile.png">
									</span>
								</button>
								<span class="buttonsMargin"></span>
								<!-- 수정하기 버튼 -->
								<button type="button" class="updateButton">
									<span class="updateButtonText"> 수정 </span>
								</button>
								<button type="button" class="deleteButton">
									<span class="deleteButtonText"> 삭제 </span>
								</button>
								<button type="button" icon-position="2" class=exitButton
									color="default"
									data-element-name="cheer-up-story-view-controller-close-button">
									<span class="exitButtonIcon"><svg
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											fill="none" viewBox="0 0 24 24">
										<path
												d="M18.5 4L12 10.5 5.5 4 4 5.5l6.5 6.5L4 18.5 5.5 20l6.5-6.5 6.5 6.5 1.5-1.5-6.5-6.5L20 5.5 18.5 4z"
												fill="white"></path></svg></span>
								</button>
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
		</div>
	</div>
	<footer class="footContainer">
		<div class="footDiv">
			<div class="footDivDiv1">
				<div class="footDivDiv1Div1">
					<div class="footDivDiv1Div1Div1">
						<svg class="footDivDiv1Div1Div1Svg" width="100%" height="100%"
							viewBox="0 0 152 32">
                                <path fill="#000"
								d="M128.059 5C121.984 5 117.059 9.9247 117.059 16C117.059 22.0753 121.984 27 128.059 27C134.134 27 139.059 22.0753 139.059 16C139.059 9.9247 134.133 5 128.059 5ZM132.363 20.4781C131.212 21.6617 129.776 22.2535 128.058 22.2535C126.34 22.2535 124.904 21.6617 123.753 20.4781C122.6 19.2945 122.023 17.8117 122.023 16.0308C122.023 14.229 122.6 12.7297 123.753 11.5362C124.904 10.3427 126.34 9.7454 128.058 9.7454C129.776 9.7454 131.211 10.3427 132.363 11.5362C133.516 12.7308 134.093 14.229 134.093 16.0308C134.093 17.8128 133.516 19.2945 132.363 20.4781Z">
                                </path>
                                <path fill="#000"
								d="M140.159 5.44V10.4835H143.916V26.56H148.959V5.44H140.159Z"></path>
                                <path fill="#000"
								d="M106.059 5.44V10.4835H109.816V26.56H114.859V5.44H106.059Z"></path>
                                <path fill="#000"
								d="M51.741 5.44L42.9146 26.56H48.4938L49.9755 22.7144H58.8646L60.3463 26.56H65.8947L57.0683 5.44H51.741ZM51.741 18.2385L54.4206 11.303L57.131 18.2385H51.741Z">
                                </path>
                                <path fill="#000"
								d="M77.9936 14.0508L73.6255 13.0773C72.4947 12.8254 71.9282 12.2391 71.9282 11.3162C71.9282 10.709 72.19 10.2008 72.7136 9.7916C73.2372 9.3824 73.9181 9.1789 74.7574 9.1789C75.6374 9.1789 76.4228 9.4363 77.1147 9.9489C77.8055 10.4626 78.2455 11.1908 78.4347 12.1335L83.5255 11.0962C83.1273 9.1888 82.1527 7.6972 80.6028 6.617C79.0529 5.539 77.1246 5 74.8201 5C72.3264 5 70.3156 5.5973 68.7855 6.7908C67.2554 7.9854 66.492 9.598 66.492 11.6308C66.492 14.8362 68.3785 16.869 72.1482 17.7281L76.5482 18.6708C77.2819 18.8182 77.7901 19.0371 78.0728 19.3308C78.3566 19.6245 78.4974 20.0216 78.4974 20.5243C78.4974 21.1744 78.2202 21.698 77.6647 22.0962C77.1092 22.4944 76.3502 22.6935 75.3866 22.6935C73.1239 22.6935 71.7412 21.6562 71.2385 19.5827L65.8947 20.62C66.1675 22.6319 67.1575 24.1972 68.8647 25.3181C70.5719 26.439 72.6509 27 75.1028 27C77.5745 27 79.6381 26.4016 81.2947 25.2081C82.9491 24.0146 83.7774 22.3382 83.7774 20.18C83.7763 16.9526 81.8491 14.911 77.9936 14.0508Z">
                                </path>
                                <path fill="#000"
								d="M98.0763 14.0508L93.7082 13.0773C92.5774 12.8254 92.0109 12.2391 92.0109 11.3162C92.0109 10.709 92.2727 10.2008 92.7963 9.7916C93.3199 9.3824 94.0008 9.1789 94.8401 9.1789C95.7201 9.1789 96.5055 9.4363 97.1974 9.9489C97.8882 10.4626 98.3282 11.1908 98.5163 12.1335L103.608 11.0962C103.21 9.1888 102.235 7.6972 100.686 6.617C99.1345 5.539 97.2062 5 94.9017 5C92.408 5 90.3972 5.5973 88.8671 6.7908C87.337 7.9854 86.5736 9.598 86.5736 11.6308C86.5736 14.8362 88.459 16.869 92.2309 17.7281L96.6298 18.6708C97.3635 18.8182 97.8717 19.0371 98.1544 19.3308C98.4382 19.6245 98.579 20.0216 98.579 20.5243C98.579 21.1744 98.3018 21.698 97.7463 22.0962C97.1908 22.4944 96.4318 22.6935 95.4682 22.6935C93.2055 22.6935 91.8228 21.6562 91.3201 19.5827L85.9763 20.62C86.2491 22.6319 87.2391 24.1972 88.9463 25.3181C90.6535 26.439 92.7336 27 95.1855 27C97.6572 27 99.7208 26.4016 101.377 25.2081C103.032 24.0146 103.86 22.3382 103.86 20.18C103.859 16.9526 101.932 14.911 98.0763 14.0508Z">
                                </path>
                                <path fill="#000"
								d="M17.7246 21.1062C16.75 21.8927 15.5719 22.2843 14.1892 22.2843C12.5128 22.2843 11.0938 21.6826 9.9311 20.4781C8.7673 19.2736 8.1854 17.7809 8.1854 16C8.1854 14.2191 8.7673 12.7319 9.93 11.5373C11.0927 10.3438 12.5117 9.7465 14.1881 9.7465C15.5917 9.7465 16.7808 10.1282 17.7543 10.8927C18.4462 11.4361 18.9632 12.1709 19.3218 13.0773H24.78C24.2773 10.6254 23.0464 8.6674 21.0873 7.2C19.1271 5.7337 16.8281 5 14.1892 5C11.0663 5 8.4219 6.0637 6.2527 8.19C4.0835 10.3163 3 12.92 3 16C3 19.1009 4.0846 21.7101 6.2527 23.8265C8.4219 25.9407 11.0663 27 14.1892 27C16.9337 27 19.2701 26.2553 21.1973 24.7681C23.1256 23.2809 24.3301 21.2382 24.8119 18.64H19.4175C19.0325 19.6795 18.4704 20.5045 17.7246 21.1062Z">
                                </path>
                                <path fill="#000"
								d="M32.1808 5.44H26.98V26.56H40.7146L42.5824 22.0203H32.1808V5.44Z">
                                </path>
                            </svg>
					</div>
					<div class="footDivDiv1Div1Div2">
						<div class="footDivDiv1Div1Div2Div">
							REWRITE는 모든 사람이 사랑하는 사람과 함께 하며 <br> 살 수 있도록 세상을 바꾸고자 합니다.
						</div>
					</div>
					<div class="footDivDiv1Div1Div3">
						<div class="footDivDiv1Div1Div3Div">
							<div class="footDivDiv1Div1Div3DivDiv">
								<button class="footDivDiv1Div1Div3DivDivButton">
									<div class="footDivDiv1Div1Div3DivDivButtonDiv">
										<span class="footDivDiv1Div1Div3DivDivButtonDivSpan">
											<p class="footDivDiv1Div1Div3DivDivButtonDivSpanP">🇰🇷
												한국어</p>
										</span>
									</div>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="footDivDiv1Div2"></div>
				<div class="footDivDiv1Div3">
					<div class="footDivDiv1Div3Div">REWRITE</div>
					<a class="footDivDiv1Div3A" href="https://class101.net/">
						<div class="footDivDiv1Div3ADiv">홈</div>
					</a> <a class="footDivDiv1Div3A"
						href="https://class101.net/business/landing">
						<div class="footDivDiv1Div3ADiv">매칭하기</div>
					</a> <a class="footDivDiv1Div3A" href="https://jobs.class101.net/">
						<div class="footDivDiv1Div3ADiv">피드 둘러보기</div>
					</a> <a class="footDivDiv1Div3A"
						href="https://www.notion.so/class101/101-f32dc5e9bf564c6e98a2f72ddbf5e6f8">
						<div class="footDivDiv1Div3ADiv">이벤트 정보보기</div>
					</a>
				</div>
				<div class="footDivDiv1Div4">
					<div class="footDivDiv1Div4Div1">매칭 후기</div>
					<div class="footDivDiv1Div4Div2">
						<a class="footDivDiv1Div4Div2A">
							<div class="footDivDiv1Div4Div2ADiv">재혼 후기</div>
						</a>
					</div>
					<a class="footDivDiv1Div4A"
						href="https://creator.class101.net/center/apply">
						<div class="footDivDiv1Div4ADiv">실제 매칭 후기</div>
					</a> <a class="footDivDiv1Div4A"
						href="https://class101.net/creator/help">
						<div class="footDivDiv1Div4ADiv">공지사항</div>
					</a>
				</div>
				<div class="footDivDiv1Div5">
					<div class="footDivDiv1Div5Div1">
						<div class="footDivDiv1Div5Div1Div1">FAQ</div>
						<div class="footDivDiv1Div5Div1Div2">오전 10시 ~ 오후 6시 (주말, 공휴일
							제외)</div>
					</div>
					<div class="footDivDiv1Div5Div2">
						<button class="footDivDiv1Div5Div2Button">
							<span class="footDivDiv1Div5Div2ButtonSpan">자주 묻는 질문</span>
						</button>
						<div class="footDivDiv1Div5Div2Div">오전 10시 ~ 오후 6시 (주말, 공휴일
							제외)</div>
					</div>
				</div>
			</div>
			<div class="footDivDiv2">
				<div class="footDivDiv2Div1">
					<div class="footDivDiv2Div1Div">
						<div class="footDivDiv2Div1DivDiv">
							<a class="footDivDiv2Div1DivDivA" href="https://class101.net/">REWRITE
								Korea</a> <a class="footDivDiv2Div1DivDivA"
								href="https://class101.co/">REWRITE USA</a> <a
								class="footDivDiv2Div1DivDivA" href="https://class101.jp/">REWRITE
								Japan</a> <a class="footDivDiv2Div1DivDivA"
								href="https://www.instagram.com/class101_official/">Instagram</a>
							<a class="footDivDiv2Div1DivDivA" href="">Youtube</a> <a
								class="footDivDiv2Div1DivDivA" href="">Facebook</a> <a
								class="footDivDiv2Div1DivDivA" href="">Naverpost</a> <a
								class="footDivDiv2Div1DivDivA" href="">Naverblog</a> <a
								class="footDivDiv2Div1DivDivA" href="">Playstore</a> <a
								class="footDivDiv2Div1DivDivA" href="">Appstore</a>
						</div>
					</div>
				</div>
				<div class="footDivDiv2Div2">
					<div class="footDivDiv2Div2Div1">
						<div class="footDivDiv2Div2Div1Div">
							<a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">이용약관</a>
							<a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"><b>개인정보
									처리방침</b></a> <a class="footDivDiv2Div2Div1DivA" href=""
								rel="noreferrer">101프라임 이용약관</a> <a
								class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">기프트카드
								및 캐시 이용약관</a> <a class="footDivDiv2Div2Div1DivA" href=""
								rel="noreferrer">환불 정책</a> <a class="footDivDiv2Div2Div1DivA"
								href="" rel="noreferrer">사업자 정보 확인</a> <a
								class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">단체/기업
								교육 문의</a> <a class="footDivDiv2Div2Div1DivA" href=""
								rel="noreferrer">제휴/협력 문의</a> <a class="footDivDiv2Div2Div1DivA"
								href="" rel="noreferrer">PR 관련 문의</a> <a
								class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">지식재산권
								침해 신고 센터</a>
						</div>
					</div>
					<div class="footDivDiv2Div2Div2">주식회사 REWRITE | 대표 오태양 |
						서울특별시 강남구 테헤란로 302, 1-11층, 13층(역삼동, 위워크타워) | ask@101.inc | 전화번호:
						1800-2109 | 클라우드 호스팅: Amazon Web Services Korea LLC | 사업자등록번호 :
						457-81-00277 | 통신판매업신고 : 2022-서울강남-02525 | REWRITE는 통신판매중개자로서 중개하는
						거래에 대하여 책임을 부담하지 않습니다.</div>
				</div>
			</div>
			<span class="footDivSpan"> <a class="footDivSpanA"
				href="https://class101.onelink.me/AnwV/fxzfdt47">
					<div class="footDivSpanADiv">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
							width="18" height="18">
                                <path
								d="M4.033 21.26A1.046 1.046 0 014 21V3c0-.091.012-.178.033-.26l9.26 9.26-9.26 9.26zm.707.707l9.26-9.26 2.802 2.802L5.49 21.872a.986.986 0 01-.75.095zM16.802 8.491L14 11.293 4.741 2.034a.986.986 0 01.75.095l11.311 6.363zm.905.509l3.783 2.128a1 1 0 010 1.743L17.707 15l-3-3 3-3z">
                                </path>
                            </svg>
					</div> <span class="footDivSpanASpan">앱 다운로드</span>
			</a>
			</span>
		</div>
	</footer>
	</section>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = `${pageContext.request.contextPath}`
	let $feedTag = `${feed.feedHashTag}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/feed/feedDetail.js"></script>
</html>