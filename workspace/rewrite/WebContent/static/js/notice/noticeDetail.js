/**
 * 공지사항 디테일
 */

function showDetail() {
	notice = JSON.parse(notice);
	const $div = $(".container");
	let text = "";
		text += `
				<div class="notice-detail-wrap">
					<div class="notice-title-wrap" dir="ltr">
						<h1 class="notice-title">
							● ${notice.noticeTitle}
				                                </h1>
						<div class="ContainerSectionDivDivDivDivDiv"></div>
				
						<div class="notice-admin-wrap">
							<div class="writerDiv2">
								<div>
									<span class="notice-admin">작성자:${notice.noticeAdmin}</span>
									<br />
									<span class="notice-register-date">등록일:${notice.noticeRegisterDate}</span>
								</div>
							</div>
						</div>
					</div>
					<article dir="article">
						<p class="notice-title-p">
							<b>🟨${notice.noticeTitle}</b>
						</p>
						<p class="articleP"></p>
						<ol>
							<li class="notice-content-li">
								<p class="notice-title-p notice-content-p">
									${notice.noticeContent}
				                </p>
							</li>
						</ol>
						<hr />
					</article>
				</div>
			`;
	$div.append(text);
}
showDetail();