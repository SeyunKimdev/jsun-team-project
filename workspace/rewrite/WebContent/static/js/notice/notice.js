/**
 *  공지사항
 */

$(document).ready(function () {
    $('.listA').mouseover(function () {
        $(this).css('background-color', '#f3f3f3');
    });

    $('.listA').mouseout(function () {
        $(this).css('background-color', 'white');
    });
});



function showList(){
	notices = JSON.parse(notices);
	const $div = $(".list");
	let text = "";
	notices.forEach((notice) => {
		text += `
				    <a href="javascript:location.href='${contextPath}/noticeDetailOk.notice?noticeId=${notice.noticeId}'" class="listA paper">
                                <div class="listADiv" dir="ltr">
                                    <h2 class="listADivh2">
                                        <span class="listADivh2Span"
                                            >${notice.noticeTitle}</span
                                        >
                                    </h2>
                                    <span class="listADivh2Span2"></span>

                                    <div class="listADivDiv">
                                        <div class="ListADivDivDiv">
                                            <img
                                                src="${contextPath}/static/images/favicon.png"
                                                alt=""
                                                class="ListADivDivDivImg"
                                            />
                                        </div>
                                        <div class="listADivDiv2">
                                            <div>
                                                <span class="listADivDiv2Span">작성자:${notice.noticeAdmin}</span
                                                >class101 <br />
                                                ${notice.noticeRegisterDate}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
			`;
	});
	$div.append(text);
}
showList();
