<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/feed/feed.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/ranking/ranking.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/footer/newFooter.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/header/newHeader.css">
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/static/images/favicon.png">
<title>새 메인 테스트</title>
</head>

<body>
	<section class="sectionContainer">
		<header class="headContainer">
			<div class="headDiv">
				<div class="headDivDiv">
					<div class="headDivDivDiv">
						<a href="https://class101.net/classic">
							<div class="headDivDivDivADiv1">
								<span class="headDivDivDivADiv1Span"> <img
									class="logoImg" src="${pageContext.request.contextPath}/static/images/rewrite.png" />
								</span>
							</div>
						</a>
						<div class="headDivDivDivDiv1"></div>
						<div class="headDivDivDivDiv2">
							<div class="headDivDivDivDiv2Div1">
								<a href="https://class101.net/ko">
									<h4 class="headDivDivDivDiv2Div1AH4">매칭</h4>
								</a>
								<div class="headDivDivDivDiv2Div1Div"></div>
								<a href="https://class101.net/store">
									<h4 class="headDivDivDivDiv2Div1AH4">피드</h4>
								</a>
							</div>
							<div class="headDivDivDivDiv2Div2"></div>
							<div class="headDivDivDivDiv2Div3">
								<div class="headDivDivDivDiv2Div3Div">
									<div class="headDivDivDivDiv2Div3DivDiv">
										<div class="headDivDivDivDiv2Div3DivDivDiv">
											<div class="headDivDivDivDiv2Div3DivDivDivDiv">
												<div class="headDivDivDivDiv2Div3DivDivDivDivDiv">
													<form action="">
														<input class="headInput" type="text"
															placeholder="원하는 이상형을 검색해보세요" />
													</form>
													<span class="headDivDivDivDiv2Div3DivDivDivDivDivSpan">
														<svg xmlns="http://www.w3.org/2000/svg"
															viewBox="0 0 24 24"
															class="headDivDivDivDiv2Div3DivDivDivDivDivSpanSvg">
                                                                <path
																d="M16.105 17.66A8.997 8.997 0 0 1 10.5 19.6c-5.02 0-9.1-4.08-9.1-9.1s4.08-9.1 9.1-9.1 9.1 4.08 9.1 9.1c0 2.05-.67 3.985-1.94 5.605l5.48 5.485-1.555 1.555-5.485-5.48.005-.005ZM10.5 3.6a6.907 6.907 0 0 0-6.9 6.9c0 3.805 3.095 6.9 6.9 6.9s6.9-3.095 6.9-6.9-3.095-6.9-6.9-6.9Z"></path>
                                                            </svg>
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div style="display: none" class="headDivDivDivDiv3">
							<div class="headDivDivDivDiv3Div">
								<div class="headDivDivDivDiv3DivDiv">
									<div class="headDivDivDivDiv3DivDivDiv">
										<div class="headDivDivDivDivDivDivDivDiv"></div>
										<a
											href="https://class101.net/classic/login?redirect=%2Fclassic%3F">
											<p class="headDivDivDivDiv3DivDivDivDiv2AP">로그인</p>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="headDivDivDivDiv4">
							<div class="headDivDivDivDiv4Div">
								<div class="headDivDivDivDiv4DivDiv">
									<div class="headDivDivDivDivDivDivDivDiv"></div>
									<div class="headDivDivDivDivDivDivDivDiv"></div>
									<div id="mypageLogo" class="headDivDivDivDiv4DivDivDiv2">
										<div class="headDivDivDivDiv4DivDivDiv2Div">
											<div class="headDivDivDivDiv4DivDivDiv2DivDiv1">
												<div class="headDivDivDivDiv4DivDivDiv2DivDiv1Div">
													<picture
														class="headDivDivDivDiv4DivDivDiv2DivDiv1DivPicture">
													<source
														srcset="
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/640xauto.webp   640w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/750xauto.webp   750w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/828xauto.webp   828w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1080xauto.webp 1080w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1200xauto.webp 1200w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1920xauto.webp 1920w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/2048xauto.webp 2048w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/3840xauto.webp 3840w
                                                                " />
													<img
														class="headDivDivDivDiv4DivDivDiv2DivDiv1DivPictureImg"
														src="https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/2048xauto.webp"
														alt="profile"
														srcset="
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/640xauto   640w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/750xauto   750w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/828xauto   828w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1080xauto 1080w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1200xauto 1200w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1920xauto 1920w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/2048xauto 2048w,
                                                                    https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/3840xauto 3840w
                                                                " />
													</picture>
												</div>
											</div>
											<img id="arrowImg" src="${pageContext.request.contextPath}/static/images/down.png" class="Arrows" alt="아래" />
										</div>
										<div id="mypageCont" class="myProContainer">
											<div class="myProWrapper">
												<div class="mpDiv">
													<a href="">
														<div class="mpDivDiv">
															<div class="mpDivDivDiv1">
																<div class="mpDivDivDiv1Div">
																	<div class="mpDivDivDiv1DivDiv">
																		<picture class="mpDivDivDiv1DivDivPicture">
																		<source
																			srcset="
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/640xauto.webp   640w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/750xauto.webp   750w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/828xauto.webp   828w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1080xauto.webp 1080w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1200xauto.webp 1200w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1920xauto.webp 1920w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/2048xauto.webp 2048w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/3840xauto.webp 3840w
                                                                                    " />
																		<img class="mpDivDivDiv1DivDivPictureImg"
																			src="https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e"
																			alt="profile"
																			srcset="
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/640xauto   640w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/750xauto   750w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/828xauto   828w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1080xauto 1080w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1200xauto 1200w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1920xauto 1920w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/2048xauto 2048w,
                                                                                        https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/3840xauto 3840w
                                                                                    " />
																		</picture>
																	</div>
																</div>
															</div>
															<div class="mpDivDivDiv2">
																<p class="mpDivDivDiv2P">Classmate</p>
																<button class="mpDivDivDiv2Button">
																	<div class="mpDivDivDiv2ButtonDiv">
																		<span class="mpDivDivDiv2ButtonDivSpan1"></span>
																		<div class="mpDivDivDiv2ButtonDivDiv"></div>
																		<span class="mpDivDivDiv2ButtonDivSpan2">마이페이지</span>
																	</div>
																</button>
															</div>
														</div>
													</a>
													<div class="mpDivDiv2"></div>
													<div class="mpDivDiv3">
														<div class="mpDivDiv3Div1">
															<a href="${pageContext.request.contextPath}/logout.member" class="mpDivDiv3Div1P">로그아웃</a>
														</div>
														<div class="mpDivDiv3Div2"></div>
														<div class="mpDivDiv3Div3">
															<button class="mpDivDiv3Div3Button">
																<div class="mpDivDiv3Div3ButtonDiv">
																	<span class="mpDivDiv3Div3ButtonDivSpan">
																		<p class="mpDivDiv3Div3ButtonDivSpanP">🇰🇷 한국어</p>
																	</span>
																</div>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<nav class="navContainer1">
			<div class="navDiv">
				<div class="navDivDiv">
					<div class="navDivDivDiv">
						<div id="NavMenu" class="navDivDivDivDiv1">
							<div class="navDivDivDivDiv1Div">
								<div class="navDivDivDivDiv1DivDiv1">
									<span class="navDivDivDivDiv1DivDiv1Span"> <span
										class="navDivDivDivDiv1DivDiv1SpanSpan">전체 카테고리</span>
									</span>
								</div>
								<div class="navDivDivDivDiv1DivDiv2"></div>
								<span class="navDivDivDivDiv1DivSpan"> <svg
										class="navDivDivDivDiv1DivSpanSvg"
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                            <path
											class="navDivDivDivDiv1DivSpanSvgPath"
											d="m16.95 9.397-4.75 7c-.1.15-.3.15-.4 0l-4.75-7c-.1-.15 0-.4.2-.4h9.5c.2 0 .3.25.2.4Z">
                                            </path>
                                        </svg>
								</span>
							</div>
							<!-- 사이드메뉴용 -->
							<div id="sideNav" class="navSide">
								<ul>
									<li id="sideMatch" class="navSideLi">매칭</li>
									<li id="sideFeed" class="navSideLi">피드</li>
									<li id="sideAfter" class="navSideLi">후기</li>
									<li class="navSideLi">랭킹</li>
									<li class="navSideLi">이벤트</li>
								</ul>
								<!-- 두번째 사이드 -->
								<ul id="Depth2li1" class="secondDepthUl">
									<li class="sideSecondLi">내 매칭</li>
								</ul>
								<ul id="Depth2li2" class="secondDepthUl">
									<li class="sideSecondLi">내 피드</li>
								</ul>
								<ul id="Depth2li3" class="secondDepthUl">
									<li class="sideSecondLi">내 후기</li>
								</ul>
							</div>
						</div>
						<div class="navDivDivDivDiv2">
							<a href="">
								<div class="navDivDivDivDiv2ADiv">
									<span class="navDivDivDivDiv2ADivSpan"> <span
										class="navDivDivDivDiv2ADivSpanSpan">공지사항</span>
									</span>
								</div>
							</a>
							<div class="navDivDivDivDiv2Div"></div>
							<a href="">
								<div class="navDivDivDivDiv2ADiv">
									<span class="navDivDivDivDiv2ADivSpan"> <span
										class="navDivDivDivDiv2ADivSpanSpan">FAQ</span>
									</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<!-- 반응형 용 -->
		<nav class="navContainer2">
			<div class="nav2Div">
				<div class="nav2DivDiv">
					<div class="nav2DivDivDiv">
						<a href="">
							<div class="nav2DivDivDivADiv">
								<span class="nav2DivDivDivADivSpan"> <span
									class="nav2DivDivDivADivSpanSpan">공지사항</span>
								</span>
							</div>
						</a>
						<div class="nav2DivDivDivDiv"></div>
						<a href="">
							<div class="nav2DivDivDivADiv">
								<span class="nav2DivDivDivADivSpan"> <span
									class="nav2DivDivDivADivSpanSpan">FAQ</span>
								</span>
							</div>
						</a>
					</div>
				</div>
			</div>
		</nav>
	</section>
	<!-- 메인 페이지 -->
	<div class="mainContainer">
		<div class="mainWrapper">
			<div class="mainDiv" style="height: auto; overflow: auto;">
				<div class="mainDivDiv1">
					<div bgcolor="#000000" class="mainDivDiv1Div">
						<div class="mainDivDiv1DivDiv1"></div>
						<div class="mainDivDiv1DivDiv2">
							<img backgroundcolor="#000000" class="mainDivDiv1DivDiv2Img"
								src="https://cdn.class101.net/images/69ac96c1-9d60-4316-9f1b-79311e667b78/tiny.jpg">
						</div>
						<div class="mainDivDiv1DivDiv3"></div>
						<div class="mainDivDiv1DivDiv4">
							<div class="mainDivDiv1DivDiv4Div">
								<div class="mainDivDiv1DivDiv4DivDiv1">
									<div class="mainDivDiv1DivDiv4DivDiv1Div">
										<div class="mainDivDiv1DivDiv4DivDiv1DivDiv1"></div>
										<div class="mainDivDiv1DivDiv4DivDiv1DivDiv2"></div>
										<div class="mainDivDiv1DivDiv4DivDiv1DivDiv3">
											<div class="mainDivDiv1DivDiv4DivDiv1DivDiv3Div1">
												<img> <img>
											</div>
										</div>
									</div>
								</div>
								<div class="mainDivDiv1DivDiv4DivDiv2">
									<a class="mainDivDiv1DivDiv4DivDiv2A" href="">
										<p class="mainDivDiv1DivDiv4DivDiv2AP1">내 취향을 담은 나만의 이상형
											찾기</p>
										<p class="mainDivDiv1DivDiv4DivDiv2AP2">지금 당신에게 딱 맞는 이성을
											찾으세요</p>
									</a>
									<div class="mainDivDiv1DivDiv4DivDiv2Div">
										<span class="mainDivDiv1DivDiv4DivDiv2DivSpan"> <span
											class="mainDivDiv1DivDiv4DivDiv2DivSpanSpan1">01</span> <span
											class="mainDivDiv1DivDiv4DivDiv2DivSpanSpan2">02</span>
										</span>
										<div backgroundcolor="rgba(255, 255, 255, 0.3)" height="1"
											class="mainDivDiv1DivDiv4DivDiv2DivDiv1">
											<div barcolor="#fff"
												class="mainDivDiv1DivDiv4DivDiv2DivDiv1Div"></div>
										</div>
										<button class="mainDivDiv1DivDiv4DivDiv2DivButton"
											color="transparent" icon-position="2">
											<span class="mainDivDiv1DivDiv4DivDiv2DivButtonSpan1">
												<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
													width="24" height="24" fill="none">
                                                        <path
														fill-rule="evenodd"
														d="M15.5 5.5l-6 6.5 6 6.5L14 20l-7.5-8L14 4l1.5 1.5z"
														fill="white"></path>
                                                    </svg>
											</span>
										</button>
										<button class="mainDivDiv1DivDiv4DivDiv2DivButton"
											color="transparent" icon-position="2">
											<span class="mainDivDiv1DivDiv4DivDiv2DivButtonSpan2">
												<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
													width="24" height="24" fill="none">
                                                        <path
														fill-rule="evenodd"
														d="M8.5 18.5l6-6.5-6-6.5L10 4l7.5 8-7.5 8-1.5-1.5z"
														fill="white"></path>
                                                    </svg>
											</span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="mainDivDiv2"></div>
				<div class="mainDivDiv"></div>
				<div class="mainDivDiv">
					<div class="mainDivDivDiv"></div>
				</div>
				<div class="mainDivDiv">
					<section class="mainDivDivSect">
						<div class="mainDivDivSectionDiv1">
							<a href="">
								<div class="mainDivDivSectionDiv1ADiv">
									<h2 class="mainDivDivSectionDiv1ADivH2" font-weigt="bold"
										color="#1a1a1a">이상형 매칭</h2>
								</div>
							</a> <span class="mainDivDivSectionDiv1Span"> <a
								class="mainDivDivSectionDiv1SpanA" href=""> <span
									class="mainDivDivSectionDiv1SpanASpan">전체 리스트 보기</span>
							</a>
							</span>
						</div>
						<ul class="feedList">
							<li>
								<div class="feedWrap">
									<div class="feed">
										<div class="feedThumbnail">
											<span class="feedThumbnailSpan" ratio="0.75"> <picture
													ratio="0.75" class="feedPicture">
												<source class="feedPictureSource" type="image/webp"
													sizes="(min-width: 1024px) 300px, 50vw"
													srcset="
                                      https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/375xauto 375w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/750xauto 750w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/960xauto 960w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/1440xauto 1440w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2048xauto 2048w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2880xauto 2880w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/autoxauto 5120w
                                    " />
												<img class="feedImage"
													sizes="(min-width: 1024px) 300px, 50vw"
													srcset="
                                      https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/375xauto 375w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/750xauto 750w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/960xauto 960w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/1440xauto 1440w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2048xauto 2048w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2880xauto 2880w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/autoxauto 5120w
                                    "
													src="https://cdn.class101.net/images/baf7ab7e-eba0-49ef-ab00-694a1574562d"
													alt="귀요미" /> </picture>
												<div class="likeButtonWrap">
													<button type="button" icon-position="2" class="likeButton"
														color="transparent">
														<span class="likeButtonSpan"> <img
															class="emptyHeartImg"
															src="${pageContext.request.contextPath}/static/images/emptyHeart.png">
															<img class="heartImg"
															src="${pageContext.request.contextPath}/static/images/heart.png">
														</span>
													</button>
												</div>
												<div class="locationWrap">
													<div class="location" color="#FFF" backgroundcolor="#000">
														<div color="#FFF" class="locationText">서울</div>
													</div>
												</div>
										</div>
										<div class="feedInfo">
											<div class="feedNickname">
												<p class="feedNicknameText">귀요미</p>
											</div>
											<div class="feedInfoMargin"></div>
											<div class="statusWrap">
												<div class="status">
													<p class="statusText">미혼</p>
												</div>
											</div>
										</div>
							</li>
						</ul>
				</div>
				<div class="mainDivDiv">
					<div class="mainDivDiv6Div">
						<section class="mainDivDivSection">
							<div class="mainDivDivSectionDiv1">
								<div class="mainDivDivSectionDiv1Div">
									<h2 font-weight="bold" class="mainDivDivSectionDiv1DivH2">피드(FEED)</h2>
								</div>
								<span class="mainDivDivSectionDiv1Span"> <a
									class="mainDivDivSectionDiv1SpanA" href=""> <span
										class="mainDivDivSectionDiv1SpanASpan">전체 리스트 보기</span>
								</a>
								</span>
							</div>
							<div class="feedListWrapper">
								<ul class="feedList">
									<li>
										<div class="feedWrap">
											<div class="feed">
												<div class="feedThumbnail">
													<span class="feedThumbnailSpan" ratio="0.75"><picture
															ratio="0.75" class="feedPicture">
														<source class="feedPictureSource" type="image/webp"
															sizes="(min-width: 1024px) 300px, 50vw"
															srcset="
                                      https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/375xauto 375w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/750xauto 750w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/960xauto 960w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/1440xauto 1440w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2048xauto 2048w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2880xauto 2880w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/autoxauto 5120w
                                    " />
														<img class="feedImage"
															sizes="(min-width: 1024px) 300px, 50vw"
															srcset="
                                      https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/375xauto 375w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/750xauto 750w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/960xauto 960w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/1440xauto 1440w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2048xauto 2048w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2880xauto 2880w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/autoxauto 5120w
                                    "
															src="https://cdn.class101.net/images/baf7ab7e-eba0-49ef-ab00-694a1574562d"
															alt="귀요미" /></picture>
														<div class="likeButtonWrap">
															<button type="button" icon-position="2"
																class="likeButton" color="transparent">
																<span class="likeButtonSpan"> <img
																	class="emptyHeartImg"
																	src="${pageContext.request.contextPath}/static/images/emptyHeart.png">
																	<img class="heartImg"
																	src="${pageContext.request.contextPath}/static/images/heart.png">
																</span>
															</button>
														</div>
														<div class="locationWrap">
															<div class="location" color="#FFF" backgroundcolor="#000">
																<div color="#FFF" class="locationText">서울</div>
															</div>
														</div>
												</div>
												<div class="feedInfo">
													<div class="feedNickname">
														<p class="feedNicknameText">귀요미</p>
													</div>
													<div class="feedHashTagWrap">
														<strong style="color: skyblue">#여행</strong> <strong
															style="color: skyblue">#일상</strong> <strong
															style="color: skyblue">#ootd</strong>
													</div>
													<div class="likeCountWrap">
														<div>
															<div class="likeCount">
																<div class="infoHeart">
																	<svg xmlns="http://www.w3.org/2000/svg" width="12"
																		height="12" fill="none" viewBox="0 0 24 24">
                                        <path fill-rule="evenodd"
																			d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z"
																			fill="#d7d7d7"></path>
                                      </svg>
																</div>
																4884
															</div>
														</div>
													</div>
												</div>
												<div class="feedInfoMargin"></div>
												<div class="statusWrap">
													<div class="status">
														<p class="statusText">미혼</p>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="feedWrap">
											<div class="feed">
												<div class="feedThumbnail">
													<span class="feedThumbnailSpan" ratio="0.75"><picture
															ratio="0.75" class="feedPicture">
														<source class="feedPictureSource" type="image/webp"
															sizes="(min-width: 1024px) 300px, 50vw"
															srcset="
                                      https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/375xauto 375w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/750xauto 750w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/960xauto 960w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/1440xauto 1440w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2048xauto 2048w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2880xauto 2880w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/autoxauto 5120w
                                    " />
														<img class="feedImage"
															sizes="(min-width: 1024px) 300px, 50vw"
															srcset="
                                      https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/375xauto 375w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/750xauto 750w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/960xauto 960w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/1440xauto 1440w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2048xauto 2048w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/2880xauto 2880w,https://cdn.class101.net/images/a787a840-b0c1-4ea5-b8f2-d280c954fc4e/autoxauto 5120w
                                    "
															src="https://cdn.class101.net/images/baf7ab7e-eba0-49ef-ab00-694a1574562d"
															alt="귀요미" /></picture>
														<div class="likeButtonWrap">
															<button type="button" icon-position="2"
																class="likeButton" color="transparent">
																<span class="likeButtonSpan"> <img
																	class="emptyHeartImg"
																	src="${pageContext.request.contextPath}/static/images/emptyHeart.png">
																	<img class="heartImg"
																	src="${pageContext.request.contextPath}/static/images/heart.png">
																</span>
															</button>
														</div>
														<div class="locationWrap">
															<div class="location" color="#FFF" backgroundcolor="#000">
																<div color="#FFF" class="locationText">서울</div>
															</div>
														</div>
												</div>
												<div class="feedInfo">
													<div class="feedNickname">
														<p class="feedNicknameText">귀요미</p>
													</div>
													<div class="feedHashTagWrap">
														<strong style="color: skyblue">#여행</strong> <strong
															style="color: skyblue">#일상</strong> <strong
															style="color: skyblue">#ootd</strong>
													</div>
													<div class="likeCountWrap">
														<div>
															<div class="likeCount">
																<div class="infoHeart">
																	<svg xmlns="http://www.w3.org/2000/svg" width="12"
																		height="12" fill="none" viewBox="0 0 24 24">
                                        <path fill-rule="evenodd"
																			d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z"
																			fill="#d7d7d7"></path>
                                      </svg>
																</div>
																4884
															</div>
														</div>
													</div>
												</div>
												<div class="feedInfoMargin"></div>
												<div class="statusWrap">
													<div class="status">
														<p class="statusText">미혼</p>
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
					</div>
				</div>
				<div class="mainDivDiv">
					<section class="mainDivDivSection">
						<div class="mainDivDivSectionDiv1">
							<a href="">
								<div class="mainDivDivSectionDiv1Div">
									<h2 class="mainDivDivSectionDiv1DivH2">이번주 TOP5 랭킹</h2>
								</div>
							</a> <span class="mainDivDivSectionDiv1Span"> <a
								class="mainDivDivSectionDiv1SpanA" href=""> <span
									class="mainDivDivSectionDiv1SpanASpan">전체 리스트 보기</span>
							</a>
							</span>
						</div>
						<div class="RankMainContainer">
							<ul class="RankMainUl1">
								<li class="RankMainUl1Li1">
									<div class="RankMainUl1Li1Div1">
										<div class="RankMainUl1Li1Div1Div1">
											<a draggable="false"
												href="/store/products/6356877318ccb70015ce8b53"
												class="RankMainUl1Li1Div1Div1A1">
												<div class="RankMainUl1Li1Div1Div1A1Div1">
													<div class="RankMainUl1Li1Div1Div1A1Div1Div1">
														<div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
															<div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1">
																<div
																	class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1">
																	<div
																		class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
																		style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;">
																		<picture
																			class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1">
																		<source type="image/webp"
																			srcset="
                                                                                    http://www.koreaitjob.co.kr/renewal2021/img/tch/teacher007.png
                                                                                " />
																		<img draggable="false" alt=""
																			srcset="
                                                                                    http://www.koreaitjob.co.kr/renewal2021/img/tch/teacher007.png
                                                                                "
																			src="https://cdn.class101.net/images/1717abc9-3a80-4e86-8a1d-4f47d147e4c5"
																			loading="lazy"
																			class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1Img1" />
																		</picture>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div1Div2">
														<div class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"></div>
														<h1 class="RankMainUl1Li1Div1Div1A1Div1Div2H1">1</h1>
													</div>
													<span class="RankMainUl1Li1Div1Div1A1Div1Span1"><svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
															class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1">
                                                            <path
																d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
																class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1Path1">
                                                            </path>
                                                        </svg></span>
													<div class="RankMainUl1Li1Div1Div1A1Div1Div3">
														<span class="RankMainUl1Li1Div1Div1A1Div1Div3Span1">기혼</span>
													</div>
												</div>
												<div class="RankMainUl1Li1Div1Div1A1Div2">
													<div class="RankMainUl1Li1Div1Div1A1Div2Div1">
														<p class="RankMainUl1Li1Div1Div1A1Div2Div1P1">벅벅코딩</p>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div3">
														<p class="RankMainUl1Li1Div1Div1A1Div2Div3P1">한동석</p>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div5">
														<div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
															<span class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"><svg
																	xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
																	class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1">
                                                                    <path
																		d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
																		class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1">
                                                                    </path>
                                                                </svg></span>
															<div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"></div>
															<p class="RankMainUl1Li1Div1Div1A1Div2Div5Div1P1">
																546742</p>
														</div>
													</div>
												</div>
												<div class="RankMainUl1Li1Div1Div1A1Div3">
													<p class="RankMainUl1Li1Div1Div1A1Div3P1">200,000,000원</p>
												</div>
											</a>
										</div>
									</div>
								</li>
								<!-- 두번째 -->
								<li class="RankMainUl1Li1Second">
									<div class="RankMainUl1Li1Div1">
										<div class="RankMainUl1Li1Div1Div1">
											<a draggable="false"
												href="/store/products/6356877318ccb70015ce8b53"
												class="RankMainUl1Li1Div1Div1A1">
												<div class="RankMainUl1Li1Div1Div1A1Div1">
													<div class="RankMainUl1Li1Div1Div1A1Div1Div1">
														<div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
															<div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1">
																<div
																	class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1">
																	<div
																		class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
																		style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;">
																		<picture
																			class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1">
																		<source type="image/webp"
																			srcset="
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/640xauto.webp   640w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/750xauto.webp   750w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/828xauto.webp   828w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/1080xauto.webp 1080w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/1200xauto.webp 1200w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/1920xauto.webp 1920w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/2048xauto.webp 2048w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/3840xauto.webp 3840w
                                                                                " />
																		<img draggable="false" alt=""
																			srcset="
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/640xauto   640w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/750xauto   750w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/828xauto   828w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/1080xauto 1080w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/1200xauto 1200w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/1920xauto 1920w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/2048xauto 2048w,
                                                                                    https://cdn.class101.net/images/39152083-1757-4194-98ef-d6c1f69e6dcb/3840xauto 3840w
                                                                                "
																			src="https://cdn.class101.net/images/1717abc9-3a80-4e86-8a1d-4f47d147e4c5"
																			loading="lazy"
																			class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1Img1" />
																		</picture>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div1Div2">
														<div class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"></div>
														<h1 class="RankMainUl1Li1Div1Div1A1Div1Div2H1">2</h1>
													</div>
													<span class="RankMainUl1Li1Div1Div1A1Div1Span1"><svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
															class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1">
                                                            <path
																d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
																class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1Path1">
                                                            </path>
                                                        </svg></span>
													<div class="RankMainUl1Li1Div1Div1A1Div1Div3">
														<span class="RankMainUl1Li1Div1Div1A1Div1Div3Span1">미혼</span>
													</div>
												</div>
												<div class="RankMainUl1Li1Div1Div1A1Div2">
													<div class="RankMainUl1Li1Div1Div1A1Div2Div1">
														<p class="RankMainUl1Li1Div1Div1A1Div2Div1P1">플로어리스트</p>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div3">
														<p class="RankMainUl1Li1Div1Div1A1Div2Div3P1">김은정</p>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div5">
														<div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
															<span class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"><svg
																	xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
																	class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1">
                                                                    <path
																		d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
																		class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1">
                                                                    </path>
                                                                </svg></span>
															<div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"></div>
															<p class="RankMainUl1Li1Div1Div1A1Div2Div5Div1P1">300
															</p>
														</div>
													</div>
												</div>
												<div class="RankMainUl1Li1Div1Div1A1Div3">
													<p class="RankMainUl1Li1Div1Div1A1Div3P1">250원</p>
												</div>
											</a>
										</div>
									</div>
								</li>
								<!--3번째  -->
								<li class="RankMainUl1Li1Second">
									<div class="RankMainUl1Li1Div1">
										<div class="RankMainUl1Li1Div1Div1">
											<a draggable="false"
												href="/store/products/6356877318ccb70015ce8b53"
												class="RankMainUl1Li1Div1Div1A1">
												<div class="RankMainUl1Li1Div1Div1A1Div1">
													<div class="RankMainUl1Li1Div1Div1A1Div1Div1">
														<div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
															<div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1">
																<div
																	class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1">
																	<div
																		class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
																		style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;">
																		<picture
																			class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1">
																		<source type="image/webp"
																			srcset="
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/640xauto.webp   640w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/750xauto.webp   750w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/828xauto.webp   828w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/1080xauto.webp 1080w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/1200xauto.webp 1200w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/1920xauto.webp 1920w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/2048xauto.webp 2048w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/3840xauto.webp 3840w
                                                                                " />
																		<img draggable="false" alt=""
																			srcset="
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/640xauto   640w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/750xauto   750w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/828xauto   828w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/1080xauto 1080w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/1200xauto 1200w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/1920xauto 1920w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/2048xauto 2048w,
                                                                                    https://cdn.class101.net/images/0e5e0572-c32f-48d0-bd2c-17ee9042823f/3840xauto 3840w
                                                                                "
																			src="https://cdn.class101.net/images/1717abc9-3a80-4e86-8a1d-4f47d147e4c5"
																			loading="lazy"
																			class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1Img1" />
																		</picture>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div1Div2">
														<div class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"></div>
														<h1 class="RankMainUl1Li1Div1Div1A1Div1Div2H1">3</h1>
													</div>
													<span class="RankMainUl1Li1Div1Div1A1Div1Span1"><svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
															class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1">
                                                            <path
																d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
																class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1Path1">
                                                            </path>
                                                        </svg></span>
													<div class="RankMainUl1Li1Div1Div1A1Div1Div3">
														<span class="RankMainUl1Li1Div1Div1A1Div1Div3Span1">미혼</span>
													</div>
												</div>
												<div class="RankMainUl1Li1Div1Div1A1Div2">
													<div class="RankMainUl1Li1Div1Div1A1Div2Div1">
														<p class="RankMainUl1Li1Div1Div1A1Div2Div1P1">Coder</p>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div3">
														<p class="RankMainUl1Li1Div1Div1A1Div2Div3P1">이영준</p>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div5">
														<div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
															<span class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"><svg
																	xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
																	class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1">
                                                                    <path
																		d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
																		class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1">
                                                                    </path>
                                                                </svg></span>
															<div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"></div>
															<p class="RankMainUl1Li1Div1Div1A1Div2Div5Div1P1">200
															</p>
														</div>
													</div>
												</div>
												<div class="RankMainUl1Li1Div1Div1A1Div3">
													<p class="RankMainUl1Li1Div1Div1A1Div3P1">200원</p>
												</div>
											</a>
										</div>
									</div>
								</li>
								<!-- 4번째 -->
								<li class="RankMainUl1Li1Second">
									<div class="RankMainUl1Li1Div1">
										<div class="RankMainUl1Li1Div1Div1">
											<a draggable="false"
												href="/store/products/6356877318ccb70015ce8b53"
												class="RankMainUl1Li1Div1Div1A1">
												<div class="RankMainUl1Li1Div1Div1A1Div1">
													<div class="RankMainUl1Li1Div1Div1A1Div1Div1">
														<div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
															<div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1">
																<div
																	class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1">
																	<div
																		class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
																		style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;">
																		<picture
																			class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1">
																		<source type="image/webp"
																			srcset="
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/640xauto.webp   640w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/750xauto.webp   750w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/828xauto.webp   828w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/1080xauto.webp 1080w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/1200xauto.webp 1200w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/1920xauto.webp 1920w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/2048xauto.webp 2048w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/3840xauto.webp 3840w
                                                                                " />
																		<img draggable="false" alt=""
																			srcset="
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/640xauto   640w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/750xauto   750w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/828xauto   828w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/1080xauto 1080w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/1200xauto 1200w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/1920xauto 1920w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/2048xauto 2048w,
                                                                                    https://cdn.class101.net/images/d443d6ad-a277-46d8-b0fa-8e434d3da0f7/3840xauto 3840w
                                                                                "
																			src="https://cdn.class101.net/images/1717abc9-3a80-4e86-8a1d-4f47d147e4c5"
																			loading="lazy"
																			class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1Img1" />
																		</picture>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div1Div2">
														<div class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"></div>
														<h1 class="RankMainUl1Li1Div1Div1A1Div1Div2H1">4</h1>
													</div>
													<span class="RankMainUl1Li1Div1Div1A1Div1Span1"><svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
															class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1">
                                                            <path
																d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
																class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1Path1">
                                                            </path>
                                                        </svg></span>
													<div class="RankMainUl1Li1Div1Div1A1Div1Div3">
														<span class="RankMainUl1Li1Div1Div1A1Div1Div3Span1">돌싱</span>
													</div>
												</div>
												<div class="RankMainUl1Li1Div1Div1A1Div2">
													<div class="RankMainUl1Li1Div1Div1A1Div2Div1">
														<p class="RankMainUl1Li1Div1Div1A1Div2Div1P1">사기꾼</p>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div3">
														<p class="RankMainUl1Li1Div1Div1A1Div2Div3P1">문재현</p>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div5">
														<div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
															<span class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"><svg
																	xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
																	class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1">
                                                                    <path
																		d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
																		class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1">
                                                                    </path>
                                                                </svg></span>
															<div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"></div>
															<p class="RankMainUl1Li1Div1Div1A1Div2Div5Div1P1">150
															</p>
														</div>
													</div>
												</div>
												<div class="RankMainUl1Li1Div1Div1A1Div3">
													<p class="RankMainUl1Li1Div1Div1A1Div3P1">150원</p>
												</div>
											</a>
										</div>
									</div>
								</li>
								<!-- 5번째 -->
								<li class="RankMainUl1Li1Second">
									<div class="RankMainUl1Li1Div1">
										<div class="RankMainUl1Li1Div1Div1">
											<a draggable="false"
												href="/store/products/6356877318ccb70015ce8b53"
												class="RankMainUl1Li1Div1Div1A1">
												<div class="RankMainUl1Li1Div1Div1A1Div1">
													<div class="RankMainUl1Li1Div1Div1A1Div1Div1">
														<div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
															<div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1">
																<div
																	class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1">
																	<div
																		class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
																		style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;">
																		<picture
																			class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1">
																		<source type="image/webp"
																			srcset="
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/640xauto.webp   640w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/750xauto.webp   750w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/828xauto.webp   828w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/1080xauto.webp 1080w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/1200xauto.webp 1200w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/1920xauto.webp 1920w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/2048xauto.webp 2048w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/3840xauto.webp 3840w
                                                                                " />
																		<img draggable="false" alt=""
																			srcset="
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/640xauto   640w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/750xauto   750w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/828xauto   828w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/1080xauto 1080w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/1200xauto 1200w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/1920xauto 1920w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/2048xauto 2048w,
                                                                                    https://cdn.class101.net/images/bc60239e-34f7-4266-beac-18d6ea00e3e0/3840xauto 3840w
                                                                                "
																			src="https://cdn.class101.net/images/1717abc9-3a80-4e86-8a1d-4f47d147e4c5"
																			loading="lazy"
																			class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1Img1" />
																		</picture>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div1Div2">
														<div class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"></div>
														<h1 class="RankMainUl1Li1Div1Div1A1Div1Div2H1">5</h1>
													</div>
													<span class="RankMainUl1Li1Div1Div1A1Div1Span1"><svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
															class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1">
                                                            <path
																d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
																class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1Path1">
                                                            </path>
                                                        </svg></span>
													<div class="RankMainUl1Li1Div1Div1A1Div1Div3">
														<span class="RankMainUl1Li1Div1Div1A1Div1Div3Span1">돌싱</span>
													</div>
												</div>
												<div class="RankMainUl1Li1Div1Div1A1Div2">
													<div class="RankMainUl1Li1Div1Div1A1Div2Div1">
														<p class="RankMainUl1Li1Div1Div1A1Div2Div1P1">패션디자이너</p>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div3">
														<p class="RankMainUl1Li1Div1Div1A1Div2Div3P1">정지욱</p>
													</div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
													<div class="RankMainUl1Li1Div1Div1A1Div2Div5">
														<div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
															<span class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"><svg
																	xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
																	class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1">
                                                                    <path
																		d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
																		class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1">
                                                                    </path>
                                                                </svg></span>
															<div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"></div>
															<p class="RankMainUl1Li1Div1Div1A1Div2Div5Div1P1">100
															</p>
														</div>
													</div>
												</div>
												<div class="RankMainUl1Li1Div1Div1A1Div3">
													<p class="RankMainUl1Li1Div1Div1A1Div3P1">100원</p>
												</div>
											</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
				</div>
				<div class="mainDivDiv">
					<section class="mainDivDivSection">
						<div class="mainDivDivSectionDiv1">
							<a href="">
								<div class="mainDivDivSectionDiv1ADiv">
									<h2 class="mainDivDivSectionDiv1ADivH2" font-weight="bold">무료
										코인 이벤트</h2>
								</div>
							</a> <span class="mainDivDivSectionDiv1Span"> <a
								class="mainDivDivSectionDiv1SpanA" href=""> <span
									class="mainDivDivSectionDiv1SpanASpan">이벤트 보기</span>
							</a>
							</span>
						</div>
						<div class="mainDivDivSectionDiv2">
							<div class="mainDivDivSectionDiv2Div">
								<div class="mainDivDivSectionDiv2DivDiv">
									<div style="width: 276px; margin-right: 24px;"
										class="mainDivDivSectionDiv2DivDivDiv">
										<div class="mainDivDivSectionDiv2DivDivDivDiv">
											<a class="mainDivDivSectionDiv2DivDivDivDivA" href="">
												<div class="mainDivDivSectionDiv2DivDivDivDivADiv">
													<div class="mainDivDivSectionDiv2DivDivDivDivADivDiv1">
														<span
															class="mainDivDivSectionDiv2DivDivDivDivADivDiv1Span">
															<picture ratio="0.75"
																class="mainDivDivSectionDiv2DivDivDivDivADivDiv1SpanPicture">
															<source type="image/webp"
																sizes="(min-width: 1024px) 300px, 50vw"
																srcset="https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/375xauto.webp 375w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/750xauto.webp 750w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/960xauto.webp 960w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/1440xauto.webp 1440w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/2048xauto.webp 2048w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/2880xauto.webp 2880w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/autoxauto.webp 5120w">
															<img sizes="(min-width: 1024px) 300px, 50vw"
																srcset="https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/375xauto 375w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/750xauto 750w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/960xauto 960w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/1440xauto 1440w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/2048xauto 2048w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/2880xauto 2880w,https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/autoxauto 5120w">
															</picture>
															<div
																class="mainDivDivSectionDiv2DivDivDivDivADivDiv1SpanDiv">
																<button
																	class="mainDivDivSectionDiv2DivDivDivDivADivDiv1SpanDivButton">
																	<span
																		class="mainDivDivSectionDiv2DivDivDivDivADivDiv1SpanDivButtonSpan">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			viewBox="0 0 24 24" widht="24" height="24">
                                                                            <path
																				fill="#FFF"
																				d="M20.5 9c0-2-1.5-3.9-3.7-3.9-2.3 0-3.8 1.63-4.8 3.33-1-1.7-2.5-3.33-4.8-3.33C5 5.1 3.5 6.867 3.5 9c0 4.62 4.949 7.667 8.5 9.623 3.551-1.956 8.5-5.003 8.5-9.623zm-19-.176C1.5 5.607 3.962 3 7 3c2.7 0 4 1 5 2.2C13 4 14.3 3 17 3c3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z">
                                                                            </path>
                                                                        </svg>
																	</span>
																</button>
															</div>
														</span>
													</div>
													<div class="mainDivDivSectionDiv2DivDivDivDivADivDiv2">
														<div class="mainDivDivSectionDiv2DivDivDivDivADivDiv2Div1">
															<p class="mainDivDivSectionDiv2DivDivDivDivADivDiv2Div1P">
																가토주니</p>
														</div>
														<div
															class="mainDivDivSectionDiv2DivDivDivDivADivDiv2Div1Div2">
															1평에서 100평 건물주 신화! 청와대까지 입성한 가토주니의
															<생크림 꽃케이크 클래스>
														</div>
														<div
															class="mainDivDivSectionDiv2DivDivDivDivADivDiv2Div1Div3">
															<div
																class="mainDivDivSectionDiv2DivDivDivDivADivDiv2Div1Div3Div">
																<div
																	class="mainDivDivSectionDiv2DivDivDivDivADivDiv2Div1Div3DivDiv">
																	<div
																		class="mainDivDivSectionDiv2DivDivDivDivADivDiv2Div1Div3DivDivDiv">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			viewBox="0 0 24 24" widht="12" height="12">
                                                                            <path
																				d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z"
																				fill="#d7d7d7"></path>
                                                                        </svg>
																	</div>
																	1590
																</div>
																<div
																	class="mainDivDivSectionDiv2DivDivDivDivADivDiv2Div1Div3DivDiv">
																	<div
																		class="mainDivDivSectionDiv2DivDivDivDivADivDiv2Div1Div3DivDivDiv">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			viewBox="0 0 24 24" widht="12" height="12">
                                                                            <path
																				d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z"
																				fill="#d7d7d7"></path>
                                                                        </svg>
																	</div>
																	93%
																</div>
															</div>
														</div>
													</div>
													<div class="mainDivDivSectionDiv2DivDivDivDivADivDiv3"></div>
													<div class="mainDivDivSectionDiv2DivDivDivDivADivDiv4">
														<div class="mainDivDivSectionDiv2DivDivDivDivADivDiv4Div">
															<p class="mainDivDivSectionDiv2DivDivDivDivADivDiv4DivP1">
																16 %</p>
															<div
																class="mainDivDivSectionDiv2DivDivDivDivADivDiv4DivDiv">
															</div>
															<p class="mainDivDivSectionDiv2DivDivDivDivADivDiv4DivP2">
																월 66,000원</p>
															<div
																class="mainDivDivSectionDiv2DivDivDivDivADivDiv4DivDiv">
															</div>
															<div
																class="mainDivDivSectionDiv2DivDivDivDivADivDiv4DivDiv2">
															</div>
														</div>
														<p class="mainDivDivSectionDiv2DivDivDivDivADivDiv4P">
															( 5 개월)</p>
													</div>
													<div class="mainDivDivSectionDiv2DivDivDivDivADivDiv5"></div>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<footer class="footContainer">
		<div class="footDiv">
			<div class="footDivDiv1">
				<div class="footDivDiv1Div1">
					<div class="footDivDiv1Div1Div1">
						<div class="logoDiv">
							<img
								src="${pageContext.request.contextPath}/static/images/favicon.png"
								class="footerLogo" />
						</div>
					</div>
					<div class="footDivDiv1Div1Div2">
						<div class="footDivDiv1Div1Div2Div">
							REWRITE는 모든 사람이 사랑하는 사람과 함께 하며 <br /> 살 수 있도록 세상을 바꾸고자 합니다.
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
								rel="noreferrer">REWRITE프라임 이용약관</a> <a
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
						서울특별시 강남구 테헤란로 302, 1-11층, 13층(역삼동, 위워크타워) | ask@RE.inc | 전화번호:
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
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = `${pageContext.request.contextPath}`
</script>
<script
	src="${pageContext.request.contextPath}/static/js/header/header.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main/nav.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/main/banner.js"></script>
<script src="${pageContext.request.contextPath}/static/js/feed/feed.js"></script>
</html>