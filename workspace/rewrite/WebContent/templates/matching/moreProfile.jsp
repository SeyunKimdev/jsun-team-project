<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>프로필 - 더보기</title>
        <link
            rel="icon"
            type="image/png"
            sizes="32x32"
            href="${pageContext.request.contextPath}/static/images/favicon.png"
        />
        <link
            rel="stylesheet"
            type="text/css"
            href="${pageContext.request.contextPath}/static/css/matching/moreProfile.css"
        />
        <link
            rel="stylesheet"
            type="text/css"
            href="${pageContext.request.contextPath}/static/css/footer/newFooter.css"
        />
        <link
            rel="stylesheet"
            type="text/css"
            href="${pageContext.request.contextPath}/static/css/header/newHeader.css"
        />
    </head>
    <body style="background-color: white">
        <!-- Header -->
        <section class="sectionContainer">
            <header class="headContainer">
                <div class="headDiv">
                    <div class="headDivDiv">
                        <div class="headDivDivDiv">
                            <a href="https://class101.net/classic">
                                <div class="headDivDivDivADiv1">
                                    <span class="headDivDivDivADiv1Span">
                                        <img
                                            class="logoImg"
                                            src="${pageContext.request.contextPath}/static/images/rewrite.png"
                                        />
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
                                                    <div
                                                        class="headDivDivDivDiv2Div3DivDivDivDivDiv"
                                                    >
                                                        <form action="">
                                                            <input
                                                                class="headInput"
                                                                type="text"
                                                                placeholder="원하는 이상형을 검색해보세요"
                                                            />
                                                        </form>
                                                        <span
                                                            class="headDivDivDivDiv2Div3DivDivDivDivDivSpan"
                                                        >
                                                            <svg
                                                                xmlns="http://www.w3.org/2000/svg"
                                                                viewBox="0 0 24 24"
                                                                class="headDivDivDivDiv2Div3DivDivDivDivDivSpanSvg"
                                                            >
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
                                            <a
                                                href="https://class101.net/classic/login?redirect=%2Fclassic%3F"
                                            >
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
                                                    <div
                                                        class="headDivDivDivDiv4DivDivDiv2DivDiv1Div"
                                                    >
                                                        <picture
                                                            class="headDivDivDivDiv4DivDivDiv2DivDiv1DivPicture"
                                                        >
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
                                                        <a href="">
                                                            <div class="mpDivDiv">
                                                                <div class="mpDivDivDiv1">
                                                                    <div class="mpDivDivDiv1Div">
                                                                        <div
                                                                            class="mpDivDivDiv1DivDiv"
                                                                        >
                                                                            <picture
                                                                                class="mpDivDivDiv1DivDivPicture"
                                                                            >
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
                                                                        Classmate
                                                                    </p>
                                                                    <button
                                                                        class="mpDivDivDiv2Button"
                                                                    >
                                                                        <div
                                                                            class="mpDivDivDiv2ButtonDiv"
                                                                        >
                                                                            <span
                                                                                class="mpDivDivDiv2ButtonDivSpan1"
                                                                            ></span>
                                                                            <div
                                                                                class="mpDivDivDiv2ButtonDivDiv"
                                                                            ></div>
                                                                            <span
                                                                                class="mpDivDivDiv2ButtonDivSpan2"
                                                                                >마이페이지</span
                                                                            >
                                                                        </div>
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
                                                                    <div
                                                                        class="mpDivDiv3Div3ButtonDiv"
                                                                    >
                                                                        <span
                                                                            class="mpDivDiv3Div3ButtonDivSpan"
                                                                        >
                                                                            <p
                                                                                class="mpDivDiv3Div3ButtonDivSpanP"
                                                                            >
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
        <div class="matchingWholeContainer">
            <!-- 윗부분 -->
            <div class="matchingTopContainer">
                <div class="matchingTop">
                    <div class="matchingTopDiv1">
                        <div class="matchingTopDiv1Div1">
                            <div class="matchingTopDiv1Div1Div1">
                                <div class="matchingTopDiv1Div1Div1Div1">
                                    <div class="matchingTopDiv1Div1Div1Div1Div1">
                                        <div class="matchingTopDiv1Div1Div1Div1Div1Div1">
                                            <div class="matchingTopDiv1Div1Div1Div1Div1Div1Div1">
                                                <picture class="member-Profile-Pic">
                                                    <source
                                                        type="image/webp"
                                                        srcset="
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/640xauto.webp   640w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/750xauto.webp   750w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/828xauto.webp   828w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/1080xauto.webp 1080w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/1200xauto.webp 1200w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/1920xauto.webp 1920w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/2048xauto.webp 2048w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/3840xauto.webp 3840w
                                                        " />
                                                    <img
                                                        srcset="
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/640xauto   640w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/750xauto   750w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/828xauto   828w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/1080xauto 1080w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/1200xauto 1200w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/1920xauto 1920w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/2048xauto 2048w,
                                                            https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb/3840xauto 3840w
                                                        "
                                                        src="https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb"
                                                        loading="lazy"
                                                        class="member-Profile-img"
                                                /></picture>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="matchingTopDiv1Div1Div2">
                                <img
                                    class="profile-background"
                                    src="https://cdn.class101.net/images/fc30f587-561a-475a-a4e2-7582e36172cb"
                                    style="
                                        filter: blur(8px);
                                        width: 100%;
                                        height: 100%;
                                        object-fit: cover;
                                    "
                                />
                            </div>
                        </div>
                        <div class="matchingTopDiv1Div2"></div>
                    </div>
                </div>
                <div class="matchingBottom">
                    <div class="matchingBottomDiv1">
                        <div class="matchingBottomDiv1Div1">
                            <div class="matchingBottomDiv1Div1Div1">
                                <p class="matching_Age">10대</p>
                                <div class="matchingBottomDiv1Div1Div1Div1">
                                    <div class="matchingBottomDiv1Div1Div1Div1Div1"></div>
                                </div>
                                <p class="matching_name">오 태 양</p>
                            </div>
                            <div class="matchingBottomDiv1Div1Div2"></div>
                            <div class="matchingBottomDiv1Div1Div3">
                                <div class="matchingBottomDiv1Div1Div3Div1">
                                    <h1 class="matching_Content">
                                        통통 튀는 매력이 포인트 입니다 :)
                                    </h1>
                                </div>
                                <div class="likeButton-wrap">
                                    <button class="likeBtn">
                                        <div class="matchingBottomDiv1Div1Div5Div1Button1Div1">
                                            <span
                                                class="matchingBottomDiv1Div1Div5Div1Button1Div1Span1"
                                            >
                                                <span class="likeButton">
                                                    <svg
                                                        xmlns="http://www.w3.org/2000/svg"
                                                        width="18"
                                                        height="18"
                                                        fill="none"
                                                        viewBox="0 0 24 24"
                                                        class="mainContainerDiv2DivDivDivDivButtonSpanButtonSpanSvg"
                                                    >
                                                        <path
                                                            class="mainContainerDiv2DivDivDivDivButtonSpanButtonSpanPath"
                                                            fill-rule="evenodd"
                                                            d="M20.5 9c0-2-1.5-3.9-3.7-3.9-2.3 0-3.8 1.63-4.8 3.33-1-1.7-2.5-3.33-4.8-3.33C5 5.1 3.5 6.867 3.5 9c0 4.62 4.949 7.667 8.5 9.623 3.551-1.956 8.5-5.003 8.5-9.623zm-19-.176C1.5 5.607 3.962 3 7 3c2.7 0 4 1 5 2.2C13 4 14.3 3 17 3c3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z"
                                                            fill="#FFF"
                                                        ></path>
                                                    </svg>
                                                    <svg
                                                        xmlns="http://www.w3.org/2000/svg"
                                                        width="24"
                                                        class="heart"
                                                        height="24"
                                                        fill="none"
                                                        viewBox="0 0 24 24"
                                                    >
                                                        <path
                                                            fill-rule="evenodd"
                                                            d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z"
                                                            fill="#fd3049"
                                                        ></path>
                                                    </svg>
                                                </span>
                                            </span>
                                        </div>
                                    </button>
                                    <div class="matchingBottomDiv1Div1Div5Div1Div1"></div>
                                    <p class="like_Count">13518</p>
                                </div>
                            </div>

                            <div class="matchingBottomDiv1Div1Div4"></div>
                        </div>
                        <div class="matchingBottomDiv1Div2"></div>
                        <div class="matchingBottomDiv1Div3">
                            <div class="matchingBottomDiv1Div3Div1"></div>
                        </div>
                    </div>
                    <div class="matchingBottomDiv2"></div>
                    <!-- 정보 창 -->
                    <div class="profileContainer">
                        <div class="profileWrapper">
                            <div class="profileDiv1">
                                <div class="profileDiv1Div2">
                                    <dl class="profile-key">
                                        <dt>닉네임</dt>
                                        <dd style="display: block">
                                            <span class="profile_input" id="memberNickName"
                                                >아무개</span
                                            >
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <div class="profileDiv2">
                                <dl class="profile-key">
                                    <dt>생년월일</dt>
                                    <dd>
                                        <span class="profile_input" id="memberBirth"
                                            >2000년 00월 00일</span
                                        >
                                    </dd>
                                </dl>
                                <dl class="profile-key">
                                    <dt>지역</dt>
                                    <dd>
                                        <span class="profile_input" id="memberLocation"
                                            >광진구 성수동</span
                                        >
                                    </dd>
                                </dl>
                                <dl class="profile-key">
                                    <dt>이메일</dt>
                                    <dd>
                                        <span class="profile_input" id="memberEmail"
                                            >0000@naver.com</span
                                        >
                                    </dd>
                                </dl>
                                <dl class="profile-key">
                                    <dt>기혼여부</dt>
                                    <dd>
                                        <span class="profile_input" id="memberStatus">미혼</span>
                                    </dd>
                                </dl>
                                <dl class="profile-key">
                                    <dt>직업</dt>
                                    <dd>
                                        <span class="profile_input" id="memberJob">직장인</span>
                                    </dd>
                                </dl>
                                <dl class="profile-key">
                                    <dt>연봉</dt>
                                    <dd>
                                        <span class="profile_input" id="memberSalary"
                                            >월 2000~3000</span
                                        >
                                    </dd>
                                </dl>
                                <dl class="profile-key">
                                    <dt>취미</dt>
                                    <dd>
                                        <span class="profile_input" id="memberHobby"
                                            >레저 · 스포츠</span
                                        >
                                    </dd>
                                </dl>
                                <dl class="profile-key">
                                    <dt>MBTI</dt>
                                    <dd>
                                        <span class="profile_input" id="memberMbti">ENFP</span>
                                    </dd>
                                </dl>
                                <dl class="profile-key">
                                    <dt>신장</dt>
                                    <dd>
                                        <span class="profile_input" id="memberHeight">181cm</span>
                                    </dd>
                                </dl>
                                <dl class="profile-key">
                                    <dt>자녀</dt>
                                    <dd>
                                        <span class="profile_input" id="memberChild">없음</span>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 추가 파트  -->
        <div class="profile-images-wrap">
            <ul smcolumn="1" class="profile-image-ul">
                <li smcolumn="1" lgcolumn="3" class="">
                    <img
                        src="https://cdn.class101.net/images/35c3a430-8192-4124-8a3e-2e1c26793b13/3840xauto.webp"
                    />
                </li>
                <li smcolumn="1" lgcolumn="3" class="">
                    <img
                        src="https://cdn.class101.net/images/35c3a430-8192-4124-8a3e-2e1c26793b13/3840xauto.webp"
                    />
                </li>
                <li smcolumn="1" lgcolumn="3" class="">
                    <img
                        src="https://cdn.class101.net/images/35c3a430-8192-4124-8a3e-2e1c26793b13/3840xauto.webp"
                    />
                </li>
                <li smcolumn="1" lgcolumn="3" class="">
                    <img
                        src="https://cdn.class101.net/images/35c3a430-8192-4124-8a3e-2e1c26793b13/3840xauto.webp"
                    />
                </li>
            </ul>
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
                                    class="footerLogo"
                                />
                            </div>
                        </div>
                        <div class="footDivDiv1Div1Div2">
                            <div class="footDivDiv1Div1Div2Div">
                                REWRITE는 모든 사람이 사랑하는 사람과 함께 하며 <br />
                                살 수 있도록 세상을 바꾸고자 합니다.
                            </div>
                        </div>
                        <div class="footDivDiv1Div1Div3">
                            <div class="footDivDiv1Div1Div3Div">
                                <div class="footDivDiv1Div1Div3DivDiv">
                                    <button class="footDivDiv1Div1Div3DivDivButton">
                                        <div class="footDivDiv1Div1Div3DivDivButtonDiv">
                                            <span class="footDivDiv1Div1Div3DivDivButtonDivSpan">
                                                <p class="footDivDiv1Div1Div3DivDivButtonDivSpanP">
                                                    🇰🇷 한국어
                                                </p>
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
                        </a>
                        <a class="footDivDiv1Div3A" href="https://class101.net/business/landing">
                            <div class="footDivDiv1Div3ADiv">매칭하기</div>
                        </a>
                        <a class="footDivDiv1Div3A" href="https://jobs.class101.net/">
                            <div class="footDivDiv1Div3ADiv">피드 둘러보기</div>
                        </a>
                        <a
                            class="footDivDiv1Div3A"
                            href="https://www.notion.so/class101/101-f32dc5e9bf564c6e98a2f72ddbf5e6f8"
                        >
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
                        <a
                            class="footDivDiv1Div4A"
                            href="https://creator.class101.net/center/apply"
                        >
                            <div class="footDivDiv1Div4ADiv">실제 매칭 후기</div>
                        </a>
                        <a class="footDivDiv1Div4A" href="https://class101.net/creator/help">
                            <div class="footDivDiv1Div4ADiv">공지사항</div>
                        </a>
                    </div>
                    <div class="footDivDiv1Div5">
                        <div class="footDivDiv1Div5Div1">
                            <div class="footDivDiv1Div5Div1Div1">FAQ</div>
                            <div class="footDivDiv1Div5Div1Div2">
                                오전 10시 ~ 오후 6시 (주말, 공휴일 제외)
                            </div>
                        </div>
                        <div class="footDivDiv1Div5Div2">
                            <button class="footDivDiv1Div5Div2Button">
                                <span class="footDivDiv1Div5Div2ButtonSpan">자주 묻는 질문</span>
                            </button>
                            <div class="footDivDiv1Div5Div2Div">
                                오전 10시 ~ 오후 6시 (주말, 공휴일 제외)
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footDivDiv2">
                    <div class="footDivDiv2Div1">
                        <div class="footDivDiv2Div1Div">
                            <div class="footDivDiv2Div1DivDiv">
                                <a class="footDivDiv2Div1DivDivA" href="https://class101.net/"
                                    >REWRITE Korea</a
                                >
                                <a class="footDivDiv2Div1DivDivA" href="https://class101.co/"
                                    >REWRITE USA</a
                                >
                                <a class="footDivDiv2Div1DivDivA" href="https://class101.jp/"
                                    >REWRITE Japan</a
                                >
                                <a
                                    class="footDivDiv2Div1DivDivA"
                                    href="https://www.instagram.com/class101_official/"
                                    >Instagram</a
                                >
                                <a class="footDivDiv2Div1DivDivA" href="">Youtube</a>
                                <a class="footDivDiv2Div1DivDivA" href="">Facebook</a>
                                <a class="footDivDiv2Div1DivDivA" href="">Naverpost</a>
                                <a class="footDivDiv2Div1DivDivA" href="">Naverblog</a>
                                <a class="footDivDiv2Div1DivDivA" href="">Playstore</a>
                                <a class="footDivDiv2Div1DivDivA" href="">Appstore</a>
                            </div>
                        </div>
                    </div>
                    <div class="footDivDiv2Div2">
                        <div class="footDivDiv2Div2Div1">
                            <div class="footDivDiv2Div2Div1Div">
                                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                                    >이용약관</a
                                >
                                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                                    ><b>개인정보 처리방침</b></a
                                >
                                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                                    >101프라임 이용약관</a
                                >
                                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                                    >기프트카드 및 캐시 이용약관</a
                                >
                                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                                    >환불 정책</a
                                >
                                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                                    >사업자 정보 확인</a
                                >
                                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                                    >단체/기업 교육 문의</a
                                >
                                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                                    >제휴/협력 문의</a
                                >
                                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                                    >PR 관련 문의</a
                                >
                                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                                    >지식재산권 침해 신고 센터</a
                                >
                            </div>
                        </div>
                        <div class="footDivDiv2Div2Div2">
                            주식회사 REWRITE | 대표 오태양 | 서울특별시 강남구 테헤란로 302, 1-11층,
                            13층(역삼동, 위워크타워) | ask@101.inc | 전화번호: 1800-2109 | 클라우드
                            호스팅: Amazon Web Services Korea LLC | 사업자등록번호 : 457-81-00277 |
                            통신판매업신고 : 2022-서울강남-02525 | REWRITE는 통신판매중개자로서
                            중개하는 거래에 대하여 책임을 부담하지 않습니다.
                        </div>
                    </div>
                </div>
                <span class="footDivSpan">
                    <a class="footDivSpanA" href="https://class101.onelink.me/AnwV/fxzfdt47">
                        <div class="footDivSpanADiv">
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 24 24"
                                width="18"
                                height="18"
                            >
                                <path
                                    d="M4.033 21.26A1.046 1.046 0 014 21V3c0-.091.012-.178.033-.26l9.26 9.26-9.26 9.26zm.707.707l9.26-9.26 2.802 2.802L5.49 21.872a.986.986 0 01-.75.095zM16.802 8.491L14 11.293 4.741 2.034a.986.986 0 01.75.095l11.311 6.363zm.905.509l3.783 2.128a1 1 0 010 1.743L17.707 15l-3-3 3-3z"
                                ></path>
                            </svg>
                        </div>
                        <span class="footDivSpanASpan">앱 다운로드</span>
                    </a>
                </span>
            </div>
        </footer>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script>
        let contextPath = `${pageContext.request.contextPath}`;
    </script>
    <script src="${pageContext.request.contextPath}/static/js/matching/matchingMain.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/header/header.js"></script>
</html>
