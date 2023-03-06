<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/static/images/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/review/boardReviewDetail.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/header/newHeader.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/footer/newFooter.css" />
<title>매칭 리뷰</title>
</head>
<body>
	<!-- Header -->
	<section class="sectionContainer">
		<header class="headContainer">
			<div class="headDiv">
				<div class="headDivDiv">
					<div class="headDivDivDiv">
						<a href="https://class101.net/classic">
							<div class="headDivDivDivADiv1">
								<span class="headDivDivDivADiv1Span"> <img
									class="logoImg"
									src="${pageContext.request.contextPath}/static/images/rewrite.png" />
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
											<img id="arrowImg"
												src="${pageContext.request.contextPath}/static/images/down.png"
												class="Arrows" alt="아래" />
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
															<p class="mpDivDiv3Div1P">로그아웃</p>
														</div>
														<div class="mpDivDiv3Div2"></div>
														<div class="mpDivDiv3Div3">
															<button class="mpDivDiv3Div3Button">
																<div class="mpDivDiv3Div3ButtonDiv">
																	<span class="mpDivDiv3Div3ButtonDivSpan">
																		<p class="mpDivDiv3Div3ButtonDivSpanP">
																			🇰🇷 한국어</p>
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
	<!-- 본문 -->

	<div class="mainContainer">
		<div class="mainContainerDiv">
			<div class="mainContainerDivDiv">
				<div class="reviewDetail_Title_Wrapper">
					<h3 class="reveiwDetail_Title">Review 게시판</h3>
				</div>
				<!-- 전체 리뷰 본문 -->
				<div class="mainContainerDivDivDiv12">
					<div class="mainContainerDivDivDiv12Div"
						style="height: auto; overflow: auto">
						<div class="mainContainerDivDivDiv12DivDiv">
							<ul smcolumn="1" class="mainContainerDivDivDiv12DivDivUl">
								<!-- li 태그로 DB로 쏴줄 곳 -->
								<li smcolumn="1" lgcolumn="1" class="review_main_li">
									<!-- 리뷰 작성자 표시란 -->
									<div top="0" right="0" bottom="10" left="0"
										class="review_Member_Status">
										<div top="0" right="0" bottom="0" left="0"
											class="mainContainerDivDivDiv12DivDivUlLiADivDiv">
											<!-- 리뷰 작성자 프로필 사진 -->
											<span size="40" class="review_Member_Profile"><img
												src="https://class101.net/images/default-user.png"
												class="review_Member_Profile_Img" /></span>
											<!-- 여기까지 수정함 -->
											<div top="0" right="0" bottom="0" left="10"
												class="mainContainerDivDivDiv12DivDivUlLiADivDivDiv">
												<!-- 맴버별 별점 -->
												<div class="review_Score_Wrapper">
													<svg xmlns="http://www.w3.org/2000/svg" width="16"
														height="16" fill="none" viewBox="0 0 24 24"
														class="review_Star_SVG">
                                                            <path
															fill-rule="evenodd"
															d="M7.673 19.972c-1.03.542-1.706.051-1.51-1.096l.827-4.819-3.501-3.413c-.834-.813-.575-1.607.577-1.774l4.837-.703 2.165-4.384c.515-1.044 1.35-1.044 1.865 0l2.164 4.384 4.838.703c1.152.167 1.41.961.577 1.774l-3.501 3.413.826 4.819c.196 1.147-.478 1.638-1.509 1.096L12 17.697l-4.327 2.275z"
															fill="#ff5600" class="review_Star_Path"></path>
                                                        </svg>
													<h5 class="review_Member_Score">4.5</h5>
												</div>
												<!-- 맴버 이름과 등록시간. -->
												<div md="Caption1" color="#a2a2a2"
													class="review_Member_Text">
													<p class="review_Member_Name">이름: 오태양</p>
													<p class="review_Member_Date">등록 시간: 2023-03-03</p>
												</div>
											</div>
										</div>
									</div>
									<div md="Caption1" font-weight="600"
										class="review_Member_Profile_Title">
										RE Write 매칭 후기 - Title</div>
									<div md="Caption1" font-weight="600"
										class="mainContainerDivDivDiv12DivDivUlLiADiv3"></div>
									<div md="Body2" class="reveiw_Member_Profile_Content">
										처음에는 막연하게 연해하고싶다라는 생각만 했었어요 하지만 이 사이트를 통해서 상대방의 장단점과 나에게 어떤
										사람이 더 좋을지 생각해볼 수 있는 계기가 되었습니다!! 피드 정리도 아주 깔끔하게 돼있어서 보기 너무 좋았어요
										- Content</div>
									<div top="0" right="0" bottom="8" left="0"
										class="mainContainerDivDivDiv12DivDivUlLiADiv6"></div>
									<!-- 사진 올라가는 곳 -->
									<div class="reviewDetail_Pic">
										<img
											src="https://cdn.class101.net/images/9dba0edf-e8f1-4ce8-b1fa-be964ffb5517/375xauto.webp"
											alt="" class="reviewDetail_Img" />
									</div>

									<div top="0" right="0" bottom="16" left="0"
										class="mainContainerDivDivDiv12DivDivUlLiADiv8"></div>
									<div class="mainContainerDivDivDiv12DivDivUlLiDiv">
										<!-- 도움이 되요 버튼 -->
										<button type="button" icon-position="0" class="like_Btn"
											color="default" fill="false">
											<span class="like_Svg_Span"><svg
													xmlns="http://www.w3.org/2000/svg" width="11" height="11"
													fill="#1B1C1D" viewBox="0 0 24 24"
													class="mainContainerDivDivDiv12DivDivUlLiDivButtonSpanSvg">
                                                        <path
														fill-rule="evenodd" class="like_Svg"
														d="M13.139 10l.844-5.066a2 2 0 00-1.279-2.205l-.419-.155-2.604 7.205V20h8.8l1.467-8.836A1 1 0 0018.961 10h-5.822zm-5.458-.571L11.089 0l2.308.853a4 4 0 012.559 4.41L15.5 8h3.461a3 3 0 012.96 3.491l-1.573 9.477C20.25 21.566 19.779 22 19.23 22H7.681V9.429z"></path>
                                                        <path
														d="M3.135 9.429C2.503 9.429 2 9.989 2 10.68v10.069C2 21.427 2.508 22 3.135 22h2.273V9.429H3.135z"
														class="like_Svg"></path>
                                                    </svg>
												<div md="Caption1" font-weight="500"
													class="mainContainerDivDivDiv12DivDivUlLiDivButtonSpanSvgDiv">
													좋아요!</div></span>
										</button>
									</div>
									<div class="mainContainerDivDivDiv12DivDivUlLiDiv2"></div>
								</li>
							</ul>
						</div>
					</div>
					<div class="mainContainerDivDiv3"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer  -->
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
								href="https://class101.co/">REWRITE
								USA</a> <a class="footDivDiv2Div1DivDivA"
								href="https://class101.jp/">REWRITE
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
								rel="noreferrer">101프라임
								이용약관</a> <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">기프트카드
								및 캐시 이용약관</a> <a class="footDivDiv2Div2Div1DivA" href=""
								rel="noreferrer">환불 정책</a>
							<a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">사업자
								정보 확인</a> <a class="footDivDiv2Div2Div1DivA" href=""
								rel="noreferrer">단체/기업
								교육 문의</a> <a class="footDivDiv2Div2Div1DivA" href=""
								rel="noreferrer">제휴/협력
								문의</a> <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">PR
								관련 문의</a> <a class="footDivDiv2Div2Div1DivA" href=""
								rel="noreferrer">지식재산권
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
								d="M4.033 21.26A1.046 1.046 0 014 21V3c0-.091.012-.178.033-.26l9.26 9.26-9.26 9.26zm.707.707l9.26-9.26 2.802 2.802L5.49 21.872a.986.986 0 01-.75.095zM16.802 8.491L14 11.293 4.741 2.034a.986.986 0 01.75.095l11.311 6.363zm.905.509l3.783 2.128a1 1 0 010 1.743L17.707 15l-3-3 3-3z"></path>
                            </svg>
					</div> <span class="footDivSpanASpan">앱 다운로드</span>
			</a>
			</span>
		</div>
	</footer>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = `${pageContext.request.contextPath}`;
</script>
<script
	src="${pageContext.request.contextPath}/static/js/header/header.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/review/boardReview.js"></script>
</html>
