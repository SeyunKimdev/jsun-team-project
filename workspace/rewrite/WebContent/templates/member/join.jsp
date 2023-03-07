<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>회원가입</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header/newHeader.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/join.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/footer/newFooter.css" />
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/static/images/favicon.png">
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
	<section class="mainSection">
		<div class="modal">
            <div class="warnModal">
                <div id="contentWrap"></div>
            </div>
        </div>
		<div class="mainContainer">
			<div class="joinContainer">
				<div class="joinTextWrap">
					<h3 class="joinText">회원가입</h3>
				</div>
				<div class="joinTextMargin"></div>
				<div class="joinFormWrap">
					<form action="${pageContext.request.contextPath}/joinOk.member" name="join" method="post" 
					class="joinForm" style="width: auto; height: auto;" autocomplete="off">
						<div class="joinFormDiv">
							<label>
								<div class="idWrap">
									<p class="idText">아이디</p>
									<div class="formTextMargin"></div>
									<div class="inputBoxWrap">
										<span> <input id="id" name="memberIdentification"
											type="text" placeholder="아이디를 입력해주세요" class="inputBox"
											value="" /> <img class="checkImg">
										</span>
									</div>
									<p class="help"></p>
								</div>
							</label>
							<div class="joinFormLabelMargin"></div>
							<label>
								<div class="passwordWrap">
									<p class="passwordText">비밀번호</p>
									<div class="formTextMargin"></div>
									<div class="passwordInputContainer">
										<div class="inputBoxWrap">
											<span> <input id="password"
												placeholder="비밀번호를 입력해주세요." name="memberPassword"
												type="password" class="inputBox" value="" /> <img
												class="checkImg">
											</span>
										</div>
										<div class="아래 마진탑 4px 주고 이거 지우기"></div>
										<div class="passwordInfoWrap">
											<p class="passwordInfo">영문 대·소문자/숫자/특수문자 중 2가지 이상 조합,
												8자~32자</p>
										</div>
										<p class="help"></p>
									</div>
								</div>
							</label>
							<div class="joinFormLabelMargin"></div>
							<label>
								<div class="passwordWrap">
									<p class="passwordText">비밀번호 확인</p>
									<div class="formTextMargin"></div>
									<div class="passwordInputBoxContainer">
										<div class="inputBoxWrap">
											<span> <input id="passwordCheck"
												placeholder="비밀번호를 한 번 더 입력해주세요." name="memberPassword"
												type="password" class="inputBox" value=""> <img
												class="checkImg">
											</span>
										</div>
										<p class="help"></p>
									</div>
								</div>
							</label>
							<div class="joinFormLabelMargin"></div>
							<label>
								<div class="nicknameWrap">
									<p class="nicknameText">닉네임</p>
									<div class="formTextMargin"></div>
									<div class="inputBoxWrap">
										<span> <input id="nickname" name="memberNickname"
											type="text" placeholder="닉네임을 입력해주세요" class="inputBox"
											value=""> <img class="checkImg">
										</span>
									</div>
									<p class="help"></p>
								</div>
							</label>
							<div class="joinFormLabelMargin"></div>
							<label>
								<div class="nameWrap">
									<p class="nameText">이름</p>
									<div class="formTextMargin"></div>
									<div class="inputBoxWrap">
										<span> <input id="name" name="memberName" type="text"
											placeholder="이름을 입력해주세요" class="inputBox" value=""> <img
											class="checkImg">
										</span>
									</div>
									<p class="help"></p>
								</div>
							</label>
							<div class="joinFormLabelMargin"></div>
							<label>
								<div class="phoneWrap">
									<p class="phoneText">휴대폰 번호</p>
									<div class="formTextMargin"></div>
									<div class="inputBoxWrap phoneCheckWrap">
										<span class="phoneInputBoxWrap"> <input id="phone"
											name="memberPhone" type="text" placeholder="휴대폰 번호를 입력하세요."
											class="inputBox"> <img class="checkImg">
										</span>
										<button type="button" class="getPhoneCheck">
											<span class="getPhoneCheckText">인증번호 받기</span>
										</button>
									</div>
									<p class="help"></p>
									<div class="inputBoxWrap setPhoneCheckWrap">
										<div class="formTextMargin"></div>
										<span class="phoneInputBoxWrap"> <input
											id="certificationNumber" type="text"
											placeholder="인증 번호를 입력하세요." class="inputBox" value="">
											<img class="checkImg" src="">
										</span>
										<button type="button" class="setPhoneCheck">
											<span class="setPhoneCheckText">인증번호 입력</span>
										</button>
									</div>
									<p class="help"></p>
									<div class="phoneCheckMargin"></div>
								</div>
							</label>
							<div class="joinFormLabelMargin"></div>
							<label>
								<div class="emailWrap">
									<p class="emailText">이메일</p>
									<div class="formTextMargin"></div>
									<div class="inputBoxWrap">
										<span> <input id="email" name="memberEmail" type="text"
											placeholder="example@google.com" class="inputBox" value="">
											<img class="checkImg">
										</span>
									</div>
									<p class="help"></p>
								</div>
							</label>
							<div class="joinFormLabelMargin"></div>
							<label>
								<div class="birthWrap">
									<p class="birthText">생년월일</p>
									<div class="formTextMargin"></div>
									<div class="inputBoxWrap">
										<span> <input id="birth" name="memberBirth" type="text"
											placeholder="예) 2000.01.01" class="inputBox" value="">
											<img class="checkImg">
										</span>
									</div>
									<p class="help"></p>
								</div>
							</label>
							<div class="joinFormLabelMargin"></div>
							<label>
								<fieldset class="genderWrap">
									<legend class="genderText">성별</legend>
									<div class="formTextMargin"></div>
									<div class="checkWrap">
										<label class="checkLabel"> <input type="radio"
											name="memberGender" value="m" class="manCheck"
											checked="checked"> <span class="genderCheckbox">
												<img src="${pageContext.request.contextPath}/static/images/checked.png" width="15px" class="genderCheckImg">
										</span>
											<p class="pText">남자</p>
										</label>
										<div class="checkLabelMargin"></div>
										<label class="checkLabel"> <input type="radio"
											name="memberGender" value="w" class="womanCheck">
											<span class="checkbox"> <img src="${pageContext.request.contextPath}/static/images/check.png"
												width="15px" class="genderCheckImg">
										</span>
											<p class="pText">여자</p>
										</label>
									</div>
								</fieldset>
							</label>
							<div class="formBottomMargin"></div>
							<button type="button" class="nextButton" onclick="send()"
								style="color: rgb(255, 255, 255); - -system-on-color: #ffffff;">
								<div class="submitbutton">
									<span class="submitbuttonText">다음</span>
									<div class="submitbuttonDivDiv2"></div>
								</div>
							</button>
						</div>
					</form>
					<div class="formLine"></div>
					<div class="kakaoButtonWrap">
						<button class="kakaoButton"
							style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;">
							<div class="kakaoBeginWrap">
								<div class="kakaoBegin"></div>
								<span class="kakaoLogo"> <svg viewBox="0 0 24 24"
										class="kakaoLogoSvg">
                                                    						<path
											fill-rule="evenodd" clip-rule="evenodd"
											d="M11.9997 2.5C6.24348 2.5 1 6.32322 1 11.0393c0 2.9316 1.90428 5.5179 4.80469 7.0555l-1.22042 4.4795c-.10756.3967.34284.7126.68935.4828l5.34918-3.5482c.4516.044.9106.0691 1.3769.0691C18.0755 19.578 23 15.7548 23 11.0393 23 6.32322 18.0755 2.5 11.9997 2.5Z"
											class="kakaoLogoSvgPath"></path></svg></span> <span
									class="kakaoBeginTextWrap">
									<p class="kakaoBeginText">카카오로 3초 만에 시작하기</p>
								</span>
								<div class="kakaoBeginText"></div>
							</div>
						</button>
					</div>
				</div>
				<div class="kakaoButtonBottomMargin"></div>
				<div class="alreadyExistSection">
					<a href="${pageContext.request.contextPath}/login.member">
						<div class="alreadyExistWrap">
							<h6 class="alreadyExistText">이미 계정이 있으신가요?</h6>
							<div class="alreadyExistSpace"></div>
							<h6 class="loginText">로그인</h6>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	<footer class="footContainer">
		<div class="footDiv">
			<div class="footDivDiv1">
				<div class="footDivDiv1Div1">
					<div class="footDivDiv1Div1Div1">
						<div class="logoDiv">
							<img src="${pageContext.request.contextPath}/static/images/favicon.png" class="footerLogo" />
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
	let contextPath = `${pageContext.request.contextPath}`
</script>
<script src="${pageContext.request.contextPath}/static/js/header/header.js"> </script>
<script src="${pageContext.request.contextPath}/static/js/member/join.js"> </script>
</html>










