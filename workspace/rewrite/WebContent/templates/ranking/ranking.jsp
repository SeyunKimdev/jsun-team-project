<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>랭킹 페이지</title>
    <link
      rel="stylesheet"
      type="text/css"
      href="${pageContext.request.contextPath}/static/css/ranking/ranking.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="${pageContext.request.contextPath}/static/css/main/main.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="${pageContext.request.contextPath}/static/css/header/newHeader.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="${pageContext.request.contextPath}/static/css/footer/newFooter.css" />
    <link
      rel="icon"
      type="image/png"
      sizes="32x32"
      href="${pageContext.request.contextPath}/static/images/favicon.png" />
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
                    <img
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
                              <input
                                class="headInput"
                                type="text"
                                placeholder="원하는 이상형을 검색해보세요" />
                            </form>
                            <span class="headDivDivDivDiv2Div3DivDivDivDivDivSpan">
                              <svg
                                xmlns="http://www.w3.org/2000/svg"
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
                      <a href="https://class101.net/classic/login?redirect=%2Fclassic%3F">
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
                        <img
                          id="arrowImg"
                          src="${pageContext.request.contextPath}/static/images/down.png"
                          class="Arrows"
                          alt="아래" />
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
                                      <span class="mpDivDivDiv2ButtonDivSpan2"> 마이페이지 </span>
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
    <div class="mainDivDiv1">
      <div bgcolor="#000000" class="mainDivDiv1Div">
        <div class="mainDivDiv1DivDiv1"></div>
        <div class="mainDivDiv1DivDiv2">
          <img
            backgroundcolor="#000000"
            class="mainDivDiv1DivDiv2Img"
            src="https://cdn.class101.net/images/69ac96c1-9d60-4316-9f1b-79311e667b78/tiny.jpg" />
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
                    <img />
                    <img />
                  </div>
                </div>
              </div>
            </div>
            <div class="mainDivDiv1DivDiv4DivDiv2">
              <a class="mainDivDiv1DivDiv4DivDiv2A" href="">
                <p class="mainDivDiv1DivDiv4DivDiv2AP1">내 취향을 담은 나만의 이상형 찾기</p>
                <p class="mainDivDiv1DivDiv4DivDiv2AP2">지금 당신에게 딱 맞는 이성을 찾으세요</p>
              </a>
              <div class="mainDivDiv1DivDiv4DivDiv2Div">
                <span class="mainDivDiv1DivDiv4DivDiv2DivSpan">
                  <span class="mainDivDiv1DivDiv4DivDiv2DivSpanSpan1">01</span>
                  <span class="mainDivDiv1DivDiv4DivDiv2DivSpanSpan2">02</span>
                </span>
                <div
                  backgroundcolor="rgba(255, 255, 255, 0.3)"
                  height="1"
                  class="mainDivDiv1DivDiv4DivDiv2DivDiv1">
                  <div barcolor="#fff" class="mainDivDiv1DivDiv4DivDiv2DivDiv1Div"></div>
                </div>
                <button
                  class="mainDivDiv1DivDiv4DivDiv2DivButton"
                  color="transparent"
                  icon-position="2">
                  <span class="mainDivDiv1DivDiv4DivDiv2DivButtonSpan1">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 24 24"
                      width="24"
                      height="24"
                      fill="none">
                      <path
                        fill-rule="evenodd"
                        d="M15.5 5.5l-6 6.5 6 6.5L14 20l-7.5-8L14 4l1.5 1.5z"
                        fill="white"></path>
                    </svg>
                  </span>
                </button>
                <button
                  class="mainDivDiv1DivDiv4DivDiv2DivButton"
                  color="transparent"
                  icon-position="2">
                  <span class="mainDivDiv1DivDiv4DivDiv2DivButtonSpan2">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 24 24"
                      width="24"
                      height="24"
                      fill="none">
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
    <!-- 내용 -->
    <div class="RankContainer">
      <div class="RankTopContainer">
        <h4 class="RankTopH1">이번주 인기 프로필 TOP5</h4>
        <div class="RankTopDiv1"></div>
      </div>
      <div class="RankIconContainer">
        <div class="rankFilterWrapper">
          <div class="rankFilterIcon">
            <div class="RankIconDiv1Div1Div1">
              <div class="RankIconDiv1Div1Div1Div1">
                <picture class="RankIconDiv1Div1Div1Div1Picture1">
                  <source
                    type="image/webp"
                    srcset="
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/640xauto.webp   640w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/750xauto.webp   750w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/828xauto.webp   828w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/1080xauto.webp 1080w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/1200xauto.webp 1200w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/1920xauto.webp 1920w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/2048xauto.webp 2048w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/3840xauto.webp 3840w
                    " />
                  <img
                    srcset="
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/640xauto   640w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/750xauto   750w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/828xauto   828w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/1080xauto 1080w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/1200xauto 1200w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/1920xauto 1920w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/2048xauto 2048w,
                      https://cdn.class101.net/images/39de67b3-9a41-43a5-8edf-164a79f8c971/3840xauto 3840w
                    "
                    src="all.png"
                    loading="lazy"
                    class="RankIconDiv1Div1Div1Div1Picture1Img1"
                /></picture>
              </div>
            </div>
          </div>
          <div class="RankIconDiv1Div2"></div>
          <p class="rankWholeFilterName">전체</p>
          <!-- 전체 버튼  -->
        </div>
        <div class="RankIconDiv"></div>
        <div class="rankFilterWrapper">
          <div class="rankFilterIcon">
            <div class="RankIconDiv3Div1Div1">
              <div class="RankIconDiv3Div1Div1Div1">
                <picture class="RankIconDiv3Div1Div1Div1Picture1">
                  <source
                    type="image/webp"
                    srcset="
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/640xauto.webp   640w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/750xauto.webp   750w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/828xauto.webp   828w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/1080xauto.webp 1080w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/1200xauto.webp 1200w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/1920xauto.webp 1920w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/2048xauto.webp 2048w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/3840xauto.webp 3840w
                    " />
                  <img
                    srcset="
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/640xauto   640w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/750xauto   750w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/828xauto   828w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/1080xauto 1080w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/1200xauto 1200w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/1920xauto 1920w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/2048xauto 2048w,
                      https://cdn.class101.net/images/e9d50014-321d-4ffa-b026-eaae77f2b2c1/3840xauto 3840w
                    "
                    src="boy.png"
                    loading="lazy"
                    class="RankIconDiv3Div1Div1Div1Picture1Img1"
                /></picture>
              </div>
            </div>
          </div>
          <div class="RankIconDiv3Div2"></div>
          <p class="rankFilterName">미혼 남자</p>
        </div>
        <!-- 버튼2 -->
        <div class="RankIconDiv"></div>
        <div class="rankFilterWrapper">
          <div class="rankFilterIcon">
            <div class="RankIconDiv3Div1Div1">
              <div class="RankIconDiv3Div1Div1Div1">
                <picture class="RankIconDiv3Div1Div1Div1Picture1">
                  <source
                    type="image/webp"
                    srcset="
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/640xauto.webp   640w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/750xauto.webp   750w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/828xauto.webp   828w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/1080xauto.webp 1080w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/1200xauto.webp 1200w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/1920xauto.webp 1920w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/2048xauto.webp 2048w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/3840xauto.webp 3840w
                    " />
                  <img
                    srcset="
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/640xauto   640w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/750xauto   750w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/828xauto   828w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/1080xauto 1080w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/1200xauto 1200w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/1920xauto 1920w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/2048xauto 2048w,
                      https://cdn.class101.net/images/86ee1927-a156-41f3-a513-ff915d2ab83f/3840xauto 3840w
                    "
                    src="girl.png"
                    loading="lazy"
                    class="RankIconDiv3Div1Div1Div1Picture1Img1"
                /></picture>
              </div>
            </div>
          </div>
          <div class="RankIconDiv3Div2"></div>
          <p class="rankFilterName">미혼 여자</p>
        </div>
        <!-- 버튼3 -->
        <div class="RankIconDiv"></div>
        <div class="rankFilterWrapper">
          <div class="rankFilterIcon">
            <div class="RankIconDiv3Div1Div1">
              <div class="RankIconDiv3Div1Div1Div1">
                <picture class="RankIconDiv3Div1Div1Div1Picture1">
                  <source
                    type="image/webp"
                    srcset="
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/640xauto.webp   640w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/750xauto.webp   750w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/828xauto.webp   828w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/1080xauto.webp 1080w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/1200xauto.webp 1200w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/1920xauto.webp 1920w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/2048xauto.webp 2048w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/3840xauto.webp 3840w
                    " />
                  <img
                    srcset="
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/640xauto   640w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/750xauto   750w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/828xauto   828w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/1080xauto 1080w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/1200xauto 1200w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/1920xauto 1920w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/2048xauto 2048w,
                      https://cdn.class101.net/images/7fc4fc91-36b8-4834-bf34-529e5920d814/3840xauto 3840w
                    "
                    src="man.png"
                    loading="lazy"
                    class="RankIconDiv3Div1Div1Div1Picture1Img1"
                /></picture>
              </div>
            </div>
          </div>
          <div class="RankIconDiv3Div2"></div>
          <p class="rankFilterName">돌싱 남자</p>
        </div>
        <!-- 버튼4  -->
        <div class="RankIconDiv"></div>
        <div class="rankFilterWrapper">
          <div class="rankFilterIcon">
            <div class="RankIconDiv3Div1Div1">
              <div class="RankIconDiv3Div1Div1Div1">
                <picture class="RankIconDiv3Div1Div1Div1Picture1">
                  <source
                    type="image/webp"
                    srcset="
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/640xauto.webp   640w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/750xauto.webp   750w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/828xauto.webp   828w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/1080xauto.webp 1080w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/1200xauto.webp 1200w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/1920xauto.webp 1920w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/2048xauto.webp 2048w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/3840xauto.webp 3840w
                    " />
                  <img
                    srcset="
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/640xauto   640w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/750xauto   750w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/828xauto   828w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/1080xauto 1080w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/1200xauto 1200w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/1920xauto 1920w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/2048xauto 2048w,
                      https://cdn.class101.net/images/501bbd7d-fcd4-4d5d-89a1-7038e0a2e154/3840xauto 3840w
                    "
                    src="woman.png"
                    loading="lazy"
                    class="RankIconDiv3Div1Div1Div1Picture1Img1"
                /></picture>
              </div>
            </div>
          </div>
          <div class="RankIconDiv3Div2"></div>
          <p class="rankFilterName">돌싱 여자</p>
        </div>
        <!-- 버튼5  -->
      </div>
      <div class="RankMainDiv"></div>
      <div class="RankMainDiv2"></div>
      <!-- 랭킹 메인 -->
      <div class="RankMainContainer">
        <ul class="RankMainWrapper">
          <li class="RankMemberContainer">
            <div class="RankMainUl1Li1Div1">
              <div class="RankMainUl1Li1Div1Div1">
                <a
                  draggable="false"
                  href="/store/products/6356877318ccb70015ce8b53"
                  class="RankMainUl1Li1Div1Div1A1"
                  ><div class="RankMemberImageContainer">
                    <div class="RankMainUl1Li1Div1Div1A1Div1Div1">
                      <div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1">
                        <div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1">
                          <div class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1">
                            <div
                              class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1"
                              style="color: rgb(243, 243, 243); - -system-on-color: #f3f3f3;">
                              <picture
                                class="RankMainUl1Li1Div1Div1A1Div1Div1Div1Div1Div1Div1Picture1">
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
                                  class="RankMemberImage"
                              /></picture>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="RankMemberRankContainer">
                      <div class="RankMainUl1Li1Div1Div1A1Div1Div2Div1"></div>
                      <h1 class="RankMemberRank">1</h1>
                    </div>
                    <div class="RankMemberMarriageContainer">
                      <span class="RankMemberMarriage">기혼</span>
                    </div>
                  </div>
                  <div class="RankMemberProfile">
                    <div class="RankMemberNicknameWrapper">
                      <p class="RankMemberNickname">벅벅코딩</p>
                    </div>
                    <div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
                    <div class="RankMemberNameWrapper">
                      <p class="RankMemberName">한동석</p>
                    </div>
                    <div class="RankMainUl1Li1Div1Div1A1Div2Div4"></div>
                    <div class="RankMemberLikeWrapper">
                      <div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1">
                        <span class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1"
                          ><svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1">
                            <path
                              d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Z"
                              class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Span1Svg1Path1"></path></svg
                        ></span>
                        <div class="RankMainUl1Li1Div1Div1A1Div2Div5Div1Div1"></div>
                        <p class="RankMemberLike">546742</p>
                      </div>
                    </div>
                  </div>
                  <div class="RankMemberSalaryContainer">
                    <p class="RankMemberSalary">200,000,000원</p>
                  </div>
                </a>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <!-- 아래 페이지 이동 버튼  -->
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
                        <p class="footDivDiv1Div1Div3DivDivButtonDivSpanP">🇰🇷 한국어</p>
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
            <a class="footDivDiv1Div4A" href="https://creator.class101.net/center/apply">
              <div class="footDivDiv1Div4ADiv">실제 매칭 후기</div>
            </a>
            <a class="footDivDiv1Div4A" href="https://class101.net/creator/help">
              <div class="footDivDiv1Div4ADiv">공지사항</div>
            </a>
          </div>
          <div class="footDivDiv1Div5">
            <div class="footDivDiv1Div5Div1">
              <div class="footDivDiv1Div5Div1Div1">FAQ</div>
              <div class="footDivDiv1Div5Div1Div2">오전 10시 ~ 오후 6시 (주말, 공휴일 제외)</div>
            </div>
            <div class="footDivDiv1Div5Div2">
              <button class="footDivDiv1Div5Div2Button">
                <span class="footDivDiv1Div5Div2ButtonSpan">자주 묻는 질문</span>
              </button>
              <div class="footDivDiv1Div5Div2Div">오전 10시 ~ 오후 6시 (주말, 공휴일 제외)</div>
            </div>
          </div>
        </div>
        <div class="footDivDiv2">
          <div class="footDivDiv2Div1">
            <div class="footDivDiv2Div1Div">
              <div class="footDivDiv2Div1DivDiv">
                <a class="footDivDiv2Div1DivDivA" href="https://class101.net/">REWRITE Korea</a>
                <a class="footDivDiv2Div1DivDivA" href="https://class101.co/">REWRITE USA</a>
                <a class="footDivDiv2Div1DivDivA" href="https://class101.jp/">REWRITE Japan</a>
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
                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">이용약관</a>
                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                  ><b>개인정보 처리방침</b></a
                >
                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">101프라임 이용약관</a>
                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                  >기프트카드 및 캐시 이용약관</a
                >
                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">환불 정책</a>
                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">사업자 정보 확인</a>
                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">단체/기업 교육 문의</a>
                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">제휴/협력 문의</a>
                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer">PR 관련 문의</a>
                <a class="footDivDiv2Div2Div1DivA" href="" rel="noreferrer"
                  >지식재산권 침해 신고 센터</a
                >
              </div>
            </div>
            <div class="footDivDiv2Div2Div2">
              주식회사 REWRITE | 대표 오태양 | 서울특별시 강남구 테헤란로 302, 1-11층, 13층(역삼동,
              위워크타워) | ask@101.inc | 전화번호: 1800-2109 | 클라우드 호스팅: Amazon Web Services
              Korea LLC | 사업자등록번호 : 457-81-00277 | 통신판매업신고 : 2022-서울강남-02525 |
              REWRITE는 통신판매중개자로서 중개하는 거래에 대하여 책임을 부담하지 않습니다.
            </div>
          </div>
        </div>
        <span class="footDivSpan">
          <a class="footDivSpanA" href="https://class101.onelink.me/AnwV/fxzfdt47">
            <div class="footDivSpanADiv">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18">
                <path
                  d="M4.033 21.26A1.046 1.046 0 014 21V3c0-.091.012-.178.033-.26l9.26 9.26-9.26 9.26zm.707.707l9.26-9.26 2.802 2.802L5.49 21.872a.986.986 0 01-.75.095zM16.802 8.491L14 11.293 4.741 2.034a.986.986 0 01.75.095l11.311 6.363zm.905.509l3.783 2.128a1 1 0 010 1.743L17.707 15l-3-3 3-3z"></path>
              </svg>
            </div>
            <span class="footDivSpanASpan">앱 다운로드</span>
          </a>
        </span>
      </div>
    </footer>
  </body>
  <script>
    let membersData = `${members}`;
    let contextPath = `${pageContext.request.contextPath}`;
  </script>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/header/header.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/main/banner.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/ranking/ranking.js"></script>
</html>
