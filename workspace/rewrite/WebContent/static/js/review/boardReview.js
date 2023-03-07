/**
 * 리뷰 리스트
 */
const $likeBtn = $('.like_Btn');
const $likeSvg = $('.like_Svg');

$likeBtn.on('mouseover', () => {
	$likeSvg.css('fill', 'orange');
});

$likeBtn.on('mouseout', () => {
	$likeSvg.css('fill', 'black');
});

/*===================================================================*/

/*별 개수 세주는 이벤트*/
const $yellowStar = $(".fill-star");
const $blackStar = $(".nonfill-star svg");
const $div = $(".star-wrap")
/*몇번째 눌렀는지 Star에 담음*/
let star = 3;

for (let i = 0; i < star; i++) {
	$blackStar.eq(i).hide();
	console.log(star);
}

/*===================================================================*/
showList();

function showList() {
	reviews = JSON.parse(reviews);
	files = JSON.parse(files);
	console.log(files);
	const $div_count = $(".review-count-wrap");
	const $div_score = $(".review-avg-score-wrap");
	const $div_whole_img = $(".review-whole-img");
	let text = "";
	reviews.forEach(review => {
		/*후기 게시판 위에 개수 보여주는 곳*/
		text += `
			<div top="0" right="0" bottom="0" left="0"
						class="review-count-print">
						<h3 md="Headline3" class="mainContainerDivDivDiv2DivH3">후기
							게시판</h3>
						<div top="0" right="4" bottom="0" left="0"
							class="mainContainerDivDivDiv2DivDiv"></div>
						<div md="Body2" color="#a2a2a2" class="review_Count">유저아이디: ${review.memberName}</div>
					</div>
			`;
	});
	$div_count.append(text);
	text = "";
	review.forEach(review => {
		text += `
			<div class="review_Score_Wrapper">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="none" viewBox="0 0 24 24" class="review_Star_SVG">
                                                            <path
								fill-rule="evenodd"
								d="M7.673 19.972c-1.03.542-1.706.051-1.51-1.096l.827-4.819-3.501-3.413c-.834-.813-.575-1.607.577-1.774l4.837-.703 2.165-4.384c.515-1.044 1.35-1.044 1.865 0l2.164 4.384 4.838.703c1.152.167 1.41.961.577 1.774l-3.501 3.413.826 4.819c.196 1.147-.478 1.638-1.509 1.096L12 17.697l-4.327 2.275z"
								fill="#ff5600" class="review_Star_Path"></path>
                                                        </svg>
						<h5 class="review_Member_Score">${review.reviewScore}</h5>
					</div>
		
		`;
	});
	$div_score.append(text);
	text = "";
	review.forEach(review => {
		text += `
					<a class="review_PictureA" href=""> <img
						src="${contextPath}/upload/${files[board.boardId].fileSystemName}"
						class="review_whole_img">
					</a> 			
			
			`;
	});
	$div_whole_img.append(text);
	text = "";
	
}


