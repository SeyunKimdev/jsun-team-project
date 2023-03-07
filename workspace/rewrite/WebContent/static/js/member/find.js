/**
 * 
 */

$(".inputNumberFormWrapper").hide();
$(".checkFormWrapper").hide();
let step = 1;

const $findInput = $(".findFormInput");
const $button = $(".checkButton");
const $numberButton = $(".checkNumberButton");
const phoneRegex = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/
const $inputNumber = $(".numberInputBox");
const code = "123456";

let inputCheck = false;

$findInput.on("blur", function() {
	let value = $(this).val();
	if (!value) {
		inputCheck = false;
	} else {
		inputCheck = phoneRegex.test(value);
		if (inputCheck) {
			$(this).val(value.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`));
		}
		console.log(inputCheck);
	}
	if (inputCheck) {
		$button.attr("disabled", false);
	} else {
		$button.attr("disabled", true);
	}
});


function goInputNumber() {
	step = 2;
	$(".inputNumberFormWrapper").show();
	$(".findFormWrapper").hide();
	$(".checkFormWrapper").hide();

	$([document.documentElement, document.body]).animate({
		scrollTop: 0
	}, 300);
};

let numberCheck = false;

$inputNumber.on("blur", function() {
	let value = $(this).val();
	if (!value) {
		numberCheck = false;
	} else {
		numberCheck = $(this).val() == code;
	}
	if (numberCheck) {
		alert("인증 성공");
		goCheck();
	} else {
		alert("인증번호를 확인하세요.");
	}
});

function goCheck() {
	if (numberCheck == true) {
		
		step = 3;
		$(".inputNumberFormWrapper").hide();
		$(".findFormWrapper").hide();
		$(".checkFormWrapper").show();

		$([document.documentElement, document.body]).animate({
			scrollTop: 0
		}, 300);
	}
};
