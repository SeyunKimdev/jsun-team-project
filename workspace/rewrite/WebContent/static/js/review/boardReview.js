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
