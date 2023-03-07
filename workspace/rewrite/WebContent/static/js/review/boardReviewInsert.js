/**
 *  boardReviewInsert.jsp
 */

const file = document.querySelector('input[type=file]');
const imgDiv = document.querySelector('div.fileContainer');
const closeButton = document.querySelector('button.file-Container-Btn ');
const input = document.querySelector('#attach');
const fileT = document.querySelector('.fileTest');
const $inputButton = $('.file-btn-lable');

closeButton.addEventListener('click', function (e) {
    imgDiv.style.display = 'none';
    $inputButton.show();
});

file.addEventListener('change', function (e) {
    // closeSpan(x 버튼)을 보이게 하기
    imgDiv.style.display = 'block';
    // 기존의 이미지 숨김 처리
    this.style.display = 'none';
    let reader = new FileReader();
    // 이벤트 타겟의 url을 불러와서
    reader.readAsDataURL(e.target.files[0]);
    // 올리기
    // onload - file이 로드된 후 발생하는 이벤트
    reader.onload = function (e) {
        // 이벤트가 발생된 타겟의 url을 출력해서 result에 담아줌
        let result = e.target.result;
        // result가 이미지라면 result에 담긴 이미지로 설정
        if (result.includes('image')) {
            fileT.style.backgroundImage = `url('${result}')`;
            $inputButton.hide();
            // 이미지가 아니라면 no_image.png를 이미지로 설정
        } else {
            imgDiv.style.display = 'none';
        }
    };
});
/*----------------------------------------------------------------------*/


/*textarea 부분 focus 효과*/
const $textArea = $('.massage-content');
const $textAreaTitle = $('.massage-title')
const AreaBox = document.querySelector('.massage-content-wrap');
const $titleWrap = $('.massage-title-wrap');

$textArea.on('focus', function () {
    AreaBox.style.border = '1px solid';
});

$textAreaTitle.on('focus', () => {
	$titleWrap.css('border','1px solid');
});

$textArea.on('blur', function () {
    AreaBox.style.border = '';
});

$textAreaTitle.on('blur', () => {
	$titleWrap.css('border','');
});
/*----------------------------------------------------------------------*/
/*별 개수 세주는 이벤트*/
const $yellowStar = $(".fill-star");
const $blackStar = $(".nonfill-star svg");
const $div = $(".star-wrap")
let star = 0;

$blackStar.on("click", function(){
	let i = $blackStar.index(this);
	star = i + 1;
	for(let j = 0; j<i+1; j++) {
		$blackStar.eq(j).hide();
	}
	console.log(star);
});

$yellowStar.on("click", function(){
	let i = $yellowStar.index(this);
	star = i + 1;
	for(let j = i+1; j<5; j++) {
		$blackStar.eq(j).show();
	}
	console.log(star);
});





