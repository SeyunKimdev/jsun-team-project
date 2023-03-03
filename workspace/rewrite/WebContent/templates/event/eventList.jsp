<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>이벤트 - 리스트</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/eventList.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/newHeader.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/newFooter.css" />
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/static/images/favicon.png" />
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
        <div class="RankWholeContainer">
            <div class="RankContainer">
                <div class="RankTopIconContainer">
                    <div class="RankTopContainer">
                        <h4 class="RankTopH1" style="color: rgb(0, 0, 0)">이벤트 목록</h4>
                        <!-- <div class="RankTopDiv1"></div> -->
                    </div>
                    <div class="RankIconContainer">
                        <div class="RankIconDiv2"></div>
                        <!-- 버튼5  -->
                        <div class="RankIconDiv2"></div>
                        <div class="RankIconDiv3" id="ten">
                            <div class="RankIconDiv3Div1">
                                <div class="RankIconDiv3Div1Div1">
                                    <div class="RankIconDiv3Div1Div1Div1">
                                        <picture class="RankIconDiv3Div1Div1Div1Picture1">
                                            <source
                                                type="image/webp"
                                                srcset="
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp  640w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp  750w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp  828w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp 1080w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp 1200w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp 1920w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp 2048w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp 3840w
                                                " />
                                            <img
                                                srcset="
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp  640w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp  750w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp  828w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp 1080w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp 1200w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp 1920w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp 2048w,
                                                    https://cdn.bhdw.net/im/minji-newjeans-kpop-girls-group-wallpaper-102317_w635.webp 3840w
                                                "
                                                src="${pageContext.request.contextPath}/static/images/woman.png"
                                                loading="lazy"
                                                class="RankIconDiv3Div1Div1Div1Picture1Img1"
                                        /></picture>
                                    </div>
                                </div>
                            </div>
                            <div class="RankIconDiv3Div2"></div>
                            <p class="RankIconDiv3P1">전체 리스트 보기</p>
                        </div>
                    </div>
                </div>
                <div class="RankMainDiv1"></div>
                <div class="RankMainDiv2"></div>
                <!-- 랭킹 메인 -->
                <div class="RankMainContainer">
                    <ul class="RankMainUl1">
                        <li class="eventListContainer">
                            <div class="RankMainUl1Li1Div1">
                                <div class="RankMainUl1Li1Div1Div1">
                                    <a
                                        draggable="false"
                                        href="/store/products/6356877318ccb70015ce8b53"
                                        class="RankMainUl1Li1Div1Div1A1"
                                        ><div class="eventListWrapper">
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div1">
                                                <div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
                                                    <div
                                                        class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1"
                                                    >
                                                        <div
                                                            class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1"
                                                        >
                                                            <div
                                                                class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
                                                                style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;"
                                                            >
                                                                <picture
                                                                    class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1"
                                                                >
                                                                    <source
                                                                        type="image/webp"
                                                                        srcset="
                                                                            http://www.koreaitjob.co.kr/renewal2021/img/tch/teacher007.png
                                                                        " />
                                                                    <img
                                                                        draggable="false"
                                                                        alt=""
                                                                        srcset="
                                                                            http://www.koreaitjob.co.kr/renewal2021/img/tch/teacher007.png
                                                                        "
                                                                        src="https://cdn.class101.net/images/1717abc9-3a80-4e86-8a1d-4f47d147e4c5"
                                                                        loading="lazy"
                                                                        class="eventListMainImage"
                                                                /></picture>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div2">
                                                <div
                                                    class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"
                                                ></div>
                                                <h1 class="RankMainUl1Li1Div1Div1A1Div1Div2H1"></h1>
                                            </div>
                                            <span class="RankMainUl1Li1Div1Div1A1Div1Span1"
                                                ><svg
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    viewBox="0 0 24 24"
                                                    class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1"
                                                >
                                                    <path
                                                        d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
                                                        class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1Path1"
                                                    ></path></svg
                                            ></span>
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div3">
                                                <span class="RankMainUl1Li1Div1Div1A1Div1Div3Span1"
                                                    >외모</span
                                                >
                                            </div>
                                        </div>
                                        <div class="eventContentWrapper">
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div1">
                                                <p class="eventListTitle">
                                                    벅벅코딩
                                                </p>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div3">
                                                <p class="eventListContent">
                                                    한동석
                                                </p>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div5">
                                                <div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
                                                    <span
                                                        class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"
                                                        ><svg
                                                            xmlns="http://www.w3.org/2000/svg"
                                                            viewBox="0 0 24 24"
                                                            class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1"
                                                        >
                                                            <path
                                                                d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
                                                                class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1"
                                                            ></path></svg
                                                    ></span>
                                                    <div
                                                        class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"
                                                    ></div>
                                                    <p
                                                        class="eventListDate"
                                                    >
                                                        546742
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="RankMainUl1Li1Div1Div1A1Div3">
                                            <p class="RankMainUl1Li1Div1Div1A1Div3P1">
                                                200,000,000원
                                            </p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <!-- 두번째 -->
                        <li class="eventListContainer">
                            <div class="RankMainUl1Li1Div1">
                                <div class="RankMainUl1Li1Div1Div1">
                                    <a
                                        draggable="false"
                                        href="/store/products/6356877318ccb70015ce8b53"
                                        class="RankMainUl1Li1Div1Div1A1"
                                        ><div class="eventListWrapper">
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div1">
                                                <div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
                                                    <div
                                                        class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1"
                                                    >
                                                        <div
                                                            class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1"
                                                        >
                                                            <div
                                                                class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
                                                                style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;"
                                                            >
                                                                <picture
                                                                    class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1"
                                                                >
                                                                    <source
                                                                        type="image/webp"
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
                                                                    <img
                                                                        draggable="false"
                                                                        alt=""
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
                                                                        class="eventListMainImage"
                                                                /></picture>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div2">
                                                <div
                                                    class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"
                                                ></div>
                                                <h1 class="RankMainUl1Li1Div1Div1A1Div1Div2H1"></h1>
                                            </div>
                                            <span class="RankMainUl1Li1Div1Div1A1Div1Span1"
                                                ><svg
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    viewBox="0 0 24 24"
                                                    class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1"
                                                >
                                                    <path
                                                        d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
                                                        class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1Path1"
                                                    ></path></svg
                                            ></span>
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div3">
                                                <span class="RankMainUl1Li1Div1Div1A1Div1Div3Span1"
                                                    >외모</span
                                                >
                                            </div>
                                        </div>
                                        <div class="eventContentWrapper">
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div1">
                                                <p class="eventListTitle">
                                                    플로어리스트
                                                </p>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div3">
                                                <p class="eventListContent">
                                                    김은정
                                                </p>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div5">
                                                <div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
                                                    <span
                                                        class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"
                                                        ><svg
                                                            xmlns="http://www.w3.org/2000/svg"
                                                            viewBox="0 0 24 24"
                                                            class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1"
                                                        >
                                                            <path
                                                                d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
                                                                class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1"
                                                            ></path></svg
                                                    ></span>
                                                    <div
                                                        class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"
                                                    ></div>
                                                    <p
                                                        class="eventListDate"
                                                    >
                                                        300
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
                        <li class="eventListContainer">
                            <div class="RankMainUl1Li1Div1">
                                <div class="RankMainUl1Li1Div1Div1">
                                    <a
                                        draggable="false"
                                        href="/store/products/6356877318ccb70015ce8b53"
                                        class="RankMainUl1Li1Div1Div1A1"
                                        ><div class="eventListWrapper">
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div1">
                                                <div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
                                                    <div
                                                        class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1"
                                                    >
                                                        <div
                                                            class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1"
                                                        >
                                                            <div
                                                                class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
                                                                style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;"
                                                            >
                                                                <picture
                                                                    class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1"
                                                                >
                                                                    <source
                                                                        type="image/webp"
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
                                                                    <img
                                                                        draggable="false"
                                                                        alt=""
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
                                                                        class="eventListMainImage"
                                                                /></picture>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div2">
                                                <div
                                                    class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"
                                                ></div>
                                                <h1 class="RankMainUl1Li1Div1Div1A1Div1Div2H1"></h1>
                                            </div>
                                            <span class="RankMainUl1Li1Div1Div1A1Div1Span1"
                                                ><svg
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    viewBox="0 0 24 24"
                                                    class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1"
                                                >
                                                    <path
                                                        d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
                                                        class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1Path1"
                                                    ></path></svg
                                            ></span>
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div3">
                                                <span class="RankMainUl1Li1Div1Div1A1Div1Div3Span1"
                                                    >외모</span
                                                >
                                            </div>
                                        </div>
                                        <div class="eventContentWrapper">
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div1">
                                                <p class="eventListTitle">
                                                    Coder
                                                </p>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div3">
                                                <p class="eventListContent">
                                                    이영준
                                                </p>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div5">
                                                <div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
                                                    <span
                                                        class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"
                                                        ><svg
                                                            xmlns="http://www.w3.org/2000/svg"
                                                            viewBox="0 0 24 24"
                                                            class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1"
                                                        >
                                                            <path
                                                                d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
                                                                class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1"
                                                            ></path></svg
                                                    ></span>
                                                    <div
                                                        class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"
                                                    ></div>
                                                    <p
                                                        class="eventListDate"
                                                    >
                                                        200
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
                        <li class="eventListContainer">
                            <div class="RankMainUl1Li1Div1">
                                <div class="RankMainUl1Li1Div1Div1">
                                    <a
                                        draggable="false"
                                        href="/store/products/6356877318ccb70015ce8b53"
                                        class="RankMainUl1Li1Div1Div1A1"
                                        ><div class="eventListWrapper">
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div1">
                                                <div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
                                                    <div
                                                        class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1"
                                                    >
                                                        <div
                                                            class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1"
                                                        >
                                                            <div
                                                                class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
                                                                style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;"
                                                            >
                                                                <picture
                                                                    class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1"
                                                                >
                                                                    <source
                                                                        type="image/webp"
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
                                                                    <img
                                                                        draggable="false"
                                                                        alt=""
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
                                                                        class="eventListMainImage"
                                                                /></picture>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div2">
                                                <div
                                                    class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"
                                                ></div>
                                                <h1 class="RankMainUl1Li1Div1Div1A1Div1Div2H1"></h1>
                                            </div>
                                            <span class="RankMainUl1Li1Div1Div1A1Div1Span1"
                                                ><svg
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    viewBox="0 0 24 24"
                                                    class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1"
                                                >
                                                    <path
                                                        d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
                                                        class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1Path1"
                                                    ></path></svg
                                            ></span>
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div3">
                                                <span class="RankMainUl1Li1Div1Div1A1Div1Div3Span1"
                                                    >외모</span
                                                >
                                            </div>
                                        </div>
                                        <div class="eventContentWrapper">
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div1">
                                                <p class="eventListTitle">
                                                    사기꾼
                                                </p>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div3">
                                                <p class="eventListContent">
                                                    문재현
                                                </p>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div5">
                                                <div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
                                                    <span
                                                        class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"
                                                        ><svg
                                                            xmlns="http://www.w3.org/2000/svg"
                                                            viewBox="0 0 24 24"
                                                            class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1"
                                                        >
                                                            <path
                                                                d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
                                                                class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1"
                                                            ></path></svg
                                                    ></span>
                                                    <div
                                                        class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"
                                                    ></div>
                                                    <p
                                                        class="eventListDate"
                                                    >
                                                        150
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
                        <li class="eventListContainer">
                            <div class="RankMainUl1Li1Div1">
                                <div class="RankMainUl1Li1Div1Div1">
                                    <a
                                        draggable="false"
                                        href="/store/products/6356877318ccb70015ce8b53"
                                        class="RankMainUl1Li1Div1Div1A1"
                                        ><div class="eventListWrapper">
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div1">
                                                <div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
                                                    <div
                                                        class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1"
                                                    >
                                                        <div
                                                            class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1"
                                                        >
                                                            <div
                                                                class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
                                                                style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;"
                                                            >
                                                                <picture
                                                                    class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1"
                                                                >
                                                                    <source
                                                                        type="image/webp"
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
                                                                    <img
                                                                        draggable="false"
                                                                        alt=""
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
                                                                        class="eventListMainImage"
                                                                /></picture>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div2">
                                                <div
                                                    class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"
                                                ></div>
                                                <h1 class="RankMainUl1Li1Div1Div1A1Div1Div2H1"></h1>
                                            </div>
                                            <span class="RankMainUl1Li1Div1Div1A1Div1Span1"
                                                ><svg
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    viewBox="0 0 24 24"
                                                    class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1"
                                                >
                                                    <path
                                                        d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
                                                        class="RankMainUl1Li1Div1Div1A1Div1Span1Svg1Path1"
                                                    ></path></svg
                                            ></span>
                                            <div class="RankMainUl1Li1Div1Div1A1Div1Div3">
                                                <span class="RankMainUl1Li1Div1Div1A1Div1Div3Span1"
                                                    >외모</span
                                                >
                                            </div>
                                        </div>
                                        <div class="eventContentWrapper">
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div1">
                                                <p class="eventListTitle">
                                                    패션디자이너
                                                </p>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div3">
                                                <p class="eventListContent">
                                                    정지욱
                                                </p>
                                            </div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
                                            <div class="RankMainUl1Li1Div1Div1A1Div2Div5">
                                                <div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
                                                    <span
                                                        class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"
                                                        ><svg
                                                            xmlns="http://www.w3.org/2000/svg"
                                                            viewBox="0 0 24 24"
                                                            class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1"
                                                        >
                                                            <path
                                                                d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
                                                                class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1"
                                                            ></path></svg
                                                    ></span>
                                                    <div
                                                        class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"
                                                    ></div>
                                                    <p
                                                        class="eventListDate"
                                                    >
                                                        100
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
            <!-- 아래 페이지 이동 버튼  -->
            <div class="bottomContainer">
                <div class="pagingWrapper">
                    <button
                        type="button"
                        icon-position="2"
                        disabled=""
                        class="bottomDiv1Button1"
                        color="default"
                    >
                        <span class="bottomDiv1Button1Span1">
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                width="24"
                                height="24"
                                fill="none"
                                viewBox="0 0 24 24"
                            >
                                <path
                                    fill-rule="evenodd"
                                    d="M15.5 5.5l-6 6.5 6 6.5L14 20l-7.5-8L14 4l1.5 1.5z"
                                    fill="#efefef"
                                ></path>
                            </svg>
                        </span>
                    </button>
                    <button
                        type="button"
                        icon-position="0"
                        class="bottomDiv1Button1"
                        color="orange"
                        fill="false"
                    >
                        <span class="bottomDiv1Button1Span1">1</span>
                    </button>
                    <button
                        type="button"
                        icon-position="0"
                        class="bottomDiv1Button1"
                        color="white"
                        fill="false"
                    >
                        <span class="bottomDiv1Button1Span1">2</span>
                    </button>
                    <button
                        type="button"
                        icon-position="2"
                        class="bottomDiv1Button1"
                        color="default"
                    >
                        <span class="bottomDiv1Button1Span1">
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                width="24"
                                height="24"
                                fill="none"
                                viewBox="0 0 24 24"
                            >
                                <path
                                    fill-rule="evenodd"
                                    d="M8.5 18.5l6-6.5-6-6.5L10 4l7.5 8-7.5 8-1.5-1.5z"
                                    fill="#1a1a1a"
                                ></path></svg
                        ></span>
                    </button>
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
                                <img src="favicon.png" class="footerLogo" />
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
    <script src="${pageContext.request.contextPath}/static/js/header.js"></script>
</html>
