<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/mypage/edit.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header/newHeader.css">
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/static/images/favicon.png">
        <title>프로필 수정</title>
    </head>

    <body>
        <section class="sectionContainer">
            <header class="headContainer">
                <div class="headDiv">
                    <div class="headDivDiv">
                        <div class="headDivDivDiv">
                            <a href="https://class101.net/classic">
                                <div class="headDivDivDivADiv1">
                                    <span class="headDivDivDivADiv1Span">
                                        <img class="logoImg" src="${pageContext.request.contextPath}/static/images/rewrite.png" />
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
                                                            <input
                                                                class="headInput"
                                                                type="text"
                                                                placeholder="원하는 이상형을 검색해보세요"
                                                            />
                                                        </form>
                                                        <span class="headDivDivDivDiv2Div3DivDivDivDivDivSpan">
                                                            <svg
                                                                xmlns="http://www.w3.org/2000/svg"
                                                                viewBox="0 0 24 24"
                                                                class="headDivDivDivDiv2Div3DivDivDivDivDivSpanSvg">
                                                                <path
                                                                    d="M16.105 17.66A8.997 8.997 0 0 1 10.5 19.6c-5.02 0-9.1-4.08-9.1-9.1s4.08-9.1 9.1-9.1 9.1 4.08 9.1 9.1c0 2.05-.67 3.985-1.94 5.605l5.48 5.485-1.555 1.555-5.485-5.48.005-.005ZM10.5 3.6a6.907 6.907 0 0 0-6.9 6.9c0 3.805 3.095 6.9 6.9 6.9s6.9-3.095 6.9-6.9-3.095-6.9-6.9-6.9Z"
                                                                ></path>
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
                                            <a href="https://class101.net/classic/login?redirect=%2Fclassic%3F">
                                                <p class="headDivDivDivDiv3DivDivDivDiv2AP">
                                                    로그인
                                                </p>
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
                                                        <picture class="headDivDivDivDiv4DivDivDiv2DivDiv1DivPicture">
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
                                                                "
                                                            />
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
                                                                "
                                                            />
                                                        </picture>
                                                    </div>
                                                </div>
                                                <img
                                                    id="arrowImg"
                                                    src="${pageContext.request.contextPath}/static/images/down.png"
                                                    class="Arrows"
                                                    alt="아래"
                                                />
                                            </div>
                                            <div id="mypageCont" class="myProContainer">
                                                <div class="myProWrapper">
                                                    <div class="mpDiv">
                                                        <a href="${pageContext.request.contextPath}/mypageOk.mypage?memberId=${mypage.memberId}">
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
                                                                                    "
                                                                                />
                                                                                <img
                                                                                    class="mpDivDivDiv1DivDivPictureImg"
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
                                                                                    "
                                                                                />
                                                                            </picture>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="mpDivDivDiv2">
                                                                    <p class="mpDivDivDiv2P">
                                                                        ${mypage.memberNickname}
                                                                    </p>
                                                                    <button type="button" class="mpDivDivDiv2Button">
                                                                    	<span class="mpDivDivDiv2ButtonDivSpan2">
                                                                    		마이페이지
                                                                    	</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mpDivDiv2"></div>
                                                        <div class="mpDivDiv3">
                                                            <div class="mpDivDiv3Div1">
                                                                <p class="mpDivDiv3Div1P">
                                                                    로그아웃
                                                                </p>
                                                            </div>
                                                            <div class="mpDivDiv3Div2"></div>
                                                            <div class="mpDivDiv3Div3">
                                                                <button class="mpDivDiv3Div3Button">
                                                                    <div class="mpDivDiv3Div3ButtonDiv">
                                                                        <span class="mpDivDiv3Div3ButtonDivSpan">
                                                                            <p class="mpDivDiv3Div3ButtonDivSpanP">
                                                                                🇰🇷 한국어
                                                                            </p>
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
        <div class="editContainer">
            <div class="editDiv">
                <div class="editDivDiv1"></div>
                <div class="editDivDiv2">
                    <label class="editDivDiv2Label">
                        <input type="file" accept="image/*">
                        <div>
                            <span class="inputDeleter">X</span>
                        </div>
                        <!-- 프로필 이미지 위치 -->
                        <div size="88" class="profileImage">
                            <div size="88" class="editDivDiv2LabelDivDiv1">
                                <span class="editDivDiv2LabelDivDiv1Span">
                                    <picture class="editDivDiv2LabelDivDiv1SpanPicture">
                                        <img class="editInputImage" src="${pageContext.request.contextPath}/static/images/favicon.png">
                                    </picture>
                                </span>
                            </div>
                            <div class="editDivDiv2LabelDivDiv2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                    viewBox="0 0 24 24">
                                    <path fill="#FFF" fill-rule="evenodd"
                                        d="M4 21a1 1 0 01-1-1v-4a1 1 0 01.293-.707l11-11a3.83 3.83 0 015.414 0 3.83 3.83 0 010 5.414l-11 11A1 1 0 018 21H4zm1-2h2.586l.707-.707-2.586-2.586-.707.707V19z">
                                    </path>
                                </svg>
                            </div>
                        </div>
                    </label>
                </div>
                <!-- 수정용 폼 -->
                <form class="editForm" action="">
                    <div class="editInputForm">
                        <div class="editDivFormDivDiv">
                            <label class="editDivFormDivDivLabel" for="">비밀번호</label>
                            <div class="editDivFormDivDivDiv">
                                <input name="memberPassword" class="editDivFormDivDivDivInput" type="password"
                                    placeholder="영어, 숫자, 특수문자 포함 10~20자">
                            </div>
                            <p class="editText"></p>
                        </div>
                    </div>
                    <div class="editInputForm">
                        <div class="editDivFormDivDiv">
                            <label class="editDivFormDivDivLabel" for="">닉네임</label>
                            <div class="editDivFormDivDivDiv">
                                <input name="memberNickname" class="editDivFormDivDivDivInput" type="text"
                                    placeholder="영어, 한글, 특수문자, 숫자 포함 2~20자">
                            </div>
                            <p class="editText"></p>
                        </div>
                    </div>
                    <div class="editInputForm">
                        <div class="editDivFormDivDiv">
                            <label class="editDivFormDivDivLabel" for="">이메일</label>
                                <div class="editDivFormDivDivDiv">
                                    <input name="memberEmail" class="editDivFormDivDivDivInput" type="text" placeholder="${mypage.memberEmail}">
                                </div>
                                <p class="editText"></p>
                        </div>
                    </div>
                        <div class="editInputForm">
                            <div class="editDivFormDivDiv">
                                <label class="editDivFormDivDivLabel" for="">지역</label>
                                <div class="editDivFormDivDivDiv">
                                    <input name="profileLocation" class="editDivFormDivDivDivInput" type="text" placeholder="${mypage.profileLocation}">
                                </div>
                                <p class="editText"></p>
                            </div>
                        </div>
                        <div class="editInputForm">
                            <div class="editDivFormDivDiv">
                                <label class="editDivFormDivDivLabel" for="">직업</label>
                                <div class="editDivFormDivDivDiv">
                                    <input name="profileJob" class="editDivFormDivDivDivInput" type="text" placeholder="${mypage.profileJob}">
                                </div>
                                <p class="editText"></p>
                            </div>
                        </div>
                        <div class="editInputForm">
                            <div class="editDivFormDivDiv">
                                <label class="editDivFormDivDivLabel" for="">신장</label>
                                <div class="editDivFormDivDivDiv">
                                    <input name="profileHeight" class="editDivFormDivDivDivInput" type="text" placeholder="${mypage.profileHeight}">
                                </div>
                                <p class="editText"></p>
                            </div>
                        </div>
                        <div class="editInputForm">
                            <div class="editDivFormDivDiv">
                                <label class="editDivFormDivDivLabel" for="">
                                    <div class="checks etrans">
                                        <input type="radio" value="back" name="profileMarried" id="ex_chk1">
                                        <label for="ex_chk1">
                                            돌싱
                                        </label>
                                        <input type="radio" value="n" name="profileMarried" id="ex_chk2">
                                        <label for="ex_chk2">
                                            미혼
                                        </label>
                                        <input type="radio" value="y" name="profileMarried" id="ex_chk3">
                                        <label for="ex_chk3">
                                            기혼
                                        </label>
                                    </div>
                                    결혼여부
                                </label>
                            </div>
                        </div>
                        <div class="editInputForm">
                            <div class="editDivFormDivDiv">
                                <label class="editDivFormDivDivLabel" for="">
                                    <div class="checks etrans">
                                        <input type="radio" value="none" name="profileChild" id="ex_chk4">
                                        <label for="ex_chk4">
                                            없음
                                        </label>
                                        <input type="radio" value="one" name="profileChild" id="ex_chk5">
                                        <label for="ex_chk5">
                                            1명
                                        </label>
                                        <input type="radio" value="upTwo" name="profileChild" id="ex_chk6">
                                        <label for="ex_chk6">
                                            2명이상
                                        </label>
                                    </div>
                                    자녀
                                </label>
                            </div>
                        </div>
                        <div class="editInputForm">
                            <div class="editDivFormDivDiv">
                                <label class="editDivFormDivDivLabel" for="">
                                    <span class="labelSpan">MBTI</span>
                                    
                                    <select name="profileMbti" class="selectBox">
                                        <option value="ISTJ">ISTJ</option>
                                    <option value="ISTP">ISTP</option>
                                    <option value="INFJ">INFJ</option>
                                    <option value="INTJ">INTJ</option>
                                    <option value="ISFJ">ISFJ</option>
                                    <option value="ISFP">ISFP</option>
                                    <option value="INFP">INFP</option>
                                    <option value="INTP">INTP</option>
                                    <option value="ESTJ">ESTJ</option>
                                    <option value="ESFP">ESFP</option>
                                    <option value="ENFP">ENFP</option>
                                    <option value="ENTP">ENTP</option>
                                    <option value="ESFJ">ESFJ</option>
                                    <option value="ESTP">ESTP</option>
                                    <option value="ENFJ">ENFJ</option>
                                    <option value="ENTJ">ENTJ</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                        <div class="editInputForm">
                            <div class="editDivFormDivDiv">
                                <label class="editDivFormDivDivLabel" for="">
                                    <span class="labelSpan">취미</span>
                                    <select name="profileHobby" class="selectBox">
                                        <option value="sports">레저 · 스포츠</option>
                                    <option value="make">공예 · 공작</option>
                                    <option value="art">문화 · 예술</option>
                                    <option value="social">사회 · 인문</option>
                                    <option value="collect">수집</option>
                                    <option value="selfApproval">자기계발</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                        <div class="editInputForm">
                            <div class="editDivFormDivDiv">
                                <label class="editDivFormDivDivLabel" for="">
                                    <span class="labelSpan">연봉</span>
                                    <select name="profileSalary" class="selectBox">
                                        <option value="900">월 1000 이하</option>
                                    	<option value="1000">월 1000 ~ 3000</option>
                                    	<option value="3000">월 3000 ~ 5000</option>
                                    	<option value="5000">월 5000 ~ 7000</option>
                                    	<option value="7000">월 7000 ~ 9000</option>
                                    	<option value="10000">월 1억 이상</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                        <div class="editInputForm">
                            <div>
                                <hr class="editDivFormDivDivHr">
                            </div>
                        </div>
                        <!-- 수정버튼 -->
                        <div class="updateForm">
                            <button class="editDivFormDiv2Button" disabled>
                                <span class="editDivFormDiv2ButtonSpan">수정하기</span>
                            </button>
                        </div>
                </form>
            </div>
            <div class="editDiv2"></div>
	        <div class="editDiv">
	            <div class="editDivDiv">
	                <button class="withdrawalButton">
	                    <span class="editDivFormDivDivButtonSpan">회원탈퇴</span>
	                </button>
	            </div>
	        </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script>
    	let contextPath = "${pageContext.request.contextPath}"
    	let memberId = `${mypage.memberId}`;
    	let mypage = `${mypage}`;
    </script>
    <script src="${pageContext.request.contextPath}/static/js/header/header.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/mypage/edit.js"></script>
    </html>