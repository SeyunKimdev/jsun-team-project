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
	href="${pageContext.request.contextPath}/static/css/feed/feed.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/header/newHeader.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/footer/newFooter.css">
<title>피드 게시판</title>


</head>
<body>
	<section class="sectionContainer">
		<header class="headContainer">
			<div class="headDiv">
				<div class="headDivDiv">
					<div class="headDivDivDiv">
							<div class="headDivDivDivADiv1">
								<span class="headDivDivDivADiv1Span"> <img
									class="logoImg"
									src="${pageContext.request.contextPath}/static/images/rewrite.png" />
								</span>
							</div>
						<div class="headDivDivDivDiv1"></div>
						<div class="headDivDivDivDiv2">
							<div class="headDivDivDivDiv2Div1">
									<h4 class="headDivDivDivDiv2Div1AH4">매칭</h4>
								<div class="headDivDivDivDiv2Div1Div"></div>
									<h4 class="headDivDivDivDiv2Div1AH4">피드</h4>
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
															placeholder="원하는 이상형을 검색해보세요">
													</form>
													<span class="headDivDivDivDiv2Div3DivDivDivDivDivSpan">
														<svg xmlns="http://www.w3.org/2000/svg"
															viewBox="0 0 24 24"
															class="headDivDivDivDiv2Div3DivDivDivDivDivSpanSvg">
                                                                <path
																d="M16.105 17.66A8.997 8.997 0 0 1 10.5 19.6c-5.02 0-9.1-4.08-9.1-9.1s4.08-9.1 9.1-9.1 9.1 4.08 9.1 9.1c0 2.05-.67 3.985-1.94 5.605l5.48 5.485-1.555 1.555-5.485-5.48.005-.005ZM10.5 3.6a6.907 6.907 0 0 0-6.9 6.9c0 3.805 3.095 6.9 6.9 6.9s6.9-3.095 6.9-6.9-3.095-6.9-6.9-6.9Z">
                                                                </path>
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
									<a href=""> <span class="headDivDivDivDiv4DivDivSpan">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
												class="headDivDivDivDiv4DivDivSpanSvg">
                                                    <path
													class="headDivDivDivDiv4DivDivSpanSvgPath"
													d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z">
                                                    </path>
                                                </svg>
									</span>
									</a>
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
											<img id="arrowImg"
												src="${pageContext.request.contextPath}/static/images/down.png"
												class="Arrows" alt="아래">
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
																			srcset="https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/640xauto.webp 640w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/750xauto.webp 750w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/828xauto.webp 828w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1080xauto.webp 1080w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1200xauto.webp 1200w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1920xauto.webp 1920w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/2048xauto.webp 2048w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/3840xauto.webp 3840w">
																		<img class="mpDivDivDiv1DivDivPictureImg"
																			src="https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e"
																			alt="profile"
																			srcset="https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/640xauto 640w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/750xauto 750w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/828xauto 828w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1080xauto 1080w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1200xauto 1200w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/1920xauto 1920w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/2048xauto 2048w,https://cdn.class101.net/images/f109cbe1-b6da-4347-a369-d5a47bcdce5e/3840xauto 3840w">
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
															<p class="mpDivDiv3Div1P">로그아웃</p>
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
	</section>
	<div class="feedMainContainer">
		<section class="feedMainSection">
			<div class="feedMainWrapper">
				<div class="mainHeader">
					<section class="mainHeaderSection">
						<button type="button" class="recentButton sortButton">
							<span><div class="recentButtonText sortText">최신순</div> <svg
									xmlns="http://www.w3.org/2000/svg" width="14" height="14"
									fill="none" viewBox="0 0 24 24">
                      <path fill-rule="evenodd" d="M17 10l-5 5-5-5h10z"
										fill="#1B1C1D"></path></svg></span>
						</button>
						<button type="button" class="popularButton sortButton">
							<span>
								<div class="popularButtonText sortText">인기순</div> <svg
									xmlns="http://www.w3.org/2000/svg" width="14" height="14"
									fill="none" viewBox="0 0 24 24">
                      <path fill-rule="evenodd" d="M17 10l-5 5-5-5h10z"
										fill="#1B1C1D"></path></svg>
							</span>
						</button>
					</section>
					<div class="feedWriteWrap">
						<button type="button" class="writeButton">
							<h4 class="writeButtonText">작성하기</h4>
						</button>
					</div>
				</div>
				<div class="mainHeaderMargin"></div>
				<div class="mainList">
					<h4 class="feedTitle">피드</h4>
					<div class="feedListMargin"></div>
					<div class="feedListContainer">
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
						<section class="mainPageSection">
							<div>
								<button type="button" icon-position="2" disabled=""
									class="pagePrevButton" color="default">
									<span class="pagePrevButtonSpan"><svg
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											fill="none" viewBox="0 0 24 24">
                          <path fill-rule="evenodd"
												d="M15.5 5.5l-6 6.5 6 6.5L14 20l-7.5-8L14 4l1.5 1.5z"
												fill="#efefef"></path></svg></span>
								</button>
								<button type="button" icon-position="0" class="pageCountButton"
									color="orange" fill="false">
									<span class="pageCountButtonSpan">1</span>
								</button>
								<button type="button" icon-position="2" class="pageNextButton"
									color="default">
									<span class="pageNextButtonSpan"><svg
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											fill="none" viewBox="0 0 24 24">
													<path fill-rule="evenodd"
												d="M8.5 18.5l6-6.5-6-6.5L10 4l7.5 8-7.5 8-1.5-1.5z"
												fill="#efefef"></path></svg></span>
								</button>
							</div>
						</section>
					</div>
				</div>
			</div>
		</section>
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
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = `${pageContext.request.contextPath}`
</script>
<script
	src="${pageContext.request.contextPath}/static/js/header/header.js"></script>
<script src="${pageContext.request.contextPath}/static/js/feed/feed.js"></script>
</html>
