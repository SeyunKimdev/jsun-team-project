/**
 *  boardReviewInsert.jsp
 */

const file = document.querySelector('input[type=file]');
const imgDiv = document.querySelector('div.fileContainer');
const closeButton = document.querySelector('button.fileContainerDivButton ');
const input = document.querySelector('#attach');
const fileT = document.querySelector('.fileTest');
const $inputButton = $('.mainContainerFormDivDiv2DivDiv2Label');

/* 파일 첨부 관련 이벤트*/

closeButton.addEventListener('click', function (e) {
    imgDiv.style.display = 'none';
	$inputButton.show();
});

file.addEventListener('change', function (e) {
	console.log(file.value);
    // closeSpan(x 버튼)을 보이게 하기
    imgDiv.style.display = "block";
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
        } else {
        	imgDiv.style.display = 'none';
        }
    };
});


/* 작성하기 포커스 이벤트 */
const $textArea = $('.mainContainerFormDivDiv2Div2DivTextarea');
const AreaBox = document.querySelector('.mainContainerFormDivDiv2Div2');

$textArea.on("focus", function(){
	AreaBox.style.border = '1px solid';
})

$textArea.on("blur", function(){
	AreaBox.style.border = '';
})


/*해쉬태그 클릭 이벤트*/

const $hashTagContainer = $(".hashTagContainer");

/* 갯수 제한(4개) */
$(document).ready(function(){
	$("input[name='hashtag']").on("click", function(){
		let count = $("input:checked[name='hashtag']").length;
		if(count > 4){
			$(this).prop("checked", false);
			console.log($(this));
			alert("4개까지만 선택할 수 있습니다.");
		}
	});
});

/* 해쉬태그 체크시 색상 변경 */
$(".hashTagContent").on("change", function(){
	let i = $(".hashTagContent").index($(this));
	if($("input[name='hashtag']").eq(i).is(":checked")){
		$hashTagContainer.eq(i).css("backgroundColor","#ff5d00");
	}else {
		$hashTagContainer.eq(i).css("backgroundColor","rgba(0, 0, 0, 0.4)");
	}
});
