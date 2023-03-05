const $rankingMain = $('ul.RankMainWrapper');
const $rankFilter = $('div.rankFilterWrapper');

/*=======================================================================*/
/*모듈*/
/*=======================================================================*/
const app = {
  loadMember: (function () {
    function execute(members, callback) {
      members = JSON.parse(members);
      if (members.length == 0) {
        alert('결과가 없습니다.');
        console.log('members : length = 0');
        return;
      }
      var text = '';

      members.forEach((member) => {
        text += app.createText.execute(member);
      });

      $rankingMain.html(text);
    }

    return { execute: execute };
  })(),
  ajaxService: (function () {
    function service(url, data, callback) {
      $.ajax({
        url: url,
        type: 'POST',
        data: data,
        success: function (result) {
          callback(result);
        },
        error: function () {
          console.log('통신실패!!');
        },
      });
    }

    return { service: service };
  })(),
  createText: (function () {
    function execute(member) {
      return `<li class="RankMemberContainer">
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
                      <span class="RankMemberMarriage">
                      ${member.profileMarried == 'y' ? '기혼' : '미혼'}
                      </span>
                    </div>
                  </div>
                  <div class="RankMemberProfile">
                    <div class="RankMemberNicknameWrapper">
                      <p class="RankMemberNickname">${member.memberNickname}</p>
                    </div>
                    <div class="RankMainUl1Li1Div1Div1A1Div2Div2"></div>
                    <div class="RankMemberNameWrapper">
                      <p class="RankMemberName">${member.memberName}</p>
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
                        <p class="RankMemberLike">${member.memberLikeConut}</p>
                      </div>
                    </div>
                  </div>
                  <div class="RankMemberSalaryContainer">
                    <p class="RankMemberSalary">${member.profileSalary}</p>
                  </div>
                </a>
              </div>
            </div>
          </li>`;
    }

    return { execute: execute };
  })(),
};

/*=======================================================================*/
/* window.onload */
/*=======================================================================*/
window.onload = function () {
  app.loadMember.execute(membersData);
};

/*=======================================================================*/
/* 이벤트, array */
/*=======================================================================*/
const filterArr = new Array(
  {},
  { married: 'n', gender: 'M' },
  { married: 'n', gender: 'W' },
  { married: 'y', gender: 'M' },
  { married: 'y', gender: 'W' }
);

// url에 type married, gender 고정
$rankFilter.on('click', function () {
  var data;
  var url;
  var index = $rankFilter.index($(this));

  console.log(index);

  if (!index) {
    url = `${contextPath}/rankingFilterAction.ranking`;
  } else url = `${contextPath}/rankingFilterAction.ranking?type=married&type=gender`;

  data = filterArr[index];

  app.ajaxService.service(url, data, app.loadMember.execute);
});
