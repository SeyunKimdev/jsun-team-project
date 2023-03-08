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

var code = "";
$(".checkButton").on("click", function() {
	var phone = $(".findFormInput").val().replaceAll("-", "");
	console.log(phone);
	$.ajax({
		type: "POST",
		url: contextPath + "/smsOk.member",
		data: { memberPhone: phone },
		success: function(data) {
			console.log(data);
			code = data;
		}
	});
	goInputNumber();
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
		numberCheck = $(this).val() == JSON.parse(code).code;
	}
	if (numberCheck) {
		alert("인증 성공");
	} else {
		alert("인증번호를 확인하세요.");
	}
});

var identification = "";
$(".checkNumberButton").on("click", function() {
	var phone = $(".findFormInput").val();
	$.ajax({
		type: "POST",
		url: contextPath + "/findIdOk.member",
		data: { memberPhone: phone },
		success: function(data) {
			console.log(data);
			identification = data;
			$("#memberIdentification").html(JSON.parse(identification).memberIdentification);
		}

	});
	goCheck();
});

function goCheck() {
		step = 3;

		$(".inputNumberFormWrapper").hide();
		$(".findFormWrapper").hide();
		$(".checkFormWrapper").show();

		$([document.documentElement, document.body]).animate({
			scrollTop: 0
		}, 300);
		
};

const passwordNumberRegex = /[0-9]/g;
const passwordEnglishRegex = /[a-z]/ig;
const passwordSpecialCharacterRegex = /[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi;
let passwordCheck;
let passwordCheckAll = [false, false];
let joinBlurMessages = ["비밀번호를 입력하세요.", "비밀번호 확인을 위해 한번 더 입력하세요."];
let joinRegexMessages = ["공백 제외 영어 및 숫자, 특수문자 모두 포함하여 10~20자로 입력해주세요.", "위 비밀번호와 일치하지 않습니다. 다시 입력해주세요."];
const $joinHelp = $("p.help");
const $passwordInputs = $("input[type='password']");

$passwordInputs.on("blur", function() {
	let i = $passwordInputs.index($(this));
	let value = $(this).val();

	$(this).next().hide();
	$(this).next().fadeIn(500);

	if (!value) {
		$joinHelp.eq(i).text(joinBlurMessages[i]);
		$joinHelp.eq(i).css('color', 'red');
		showHelp($(this), contextPath + "/static/images/error.png");
		passwordCheck = false;
		passwordCheckAll[i] = passwordCheck;
		return;
	}
	
	switch(i){
		case 0:
			let numberCheck = value.search(passwordNumberRegex);
			let englishCheck = value.search(passwordEnglishRegex);
			let specialCharacterCheck = value
				.search(passwordSpecialCharacterRegex);

			var condition1 = (numberCheck >= 0 && englishCheck >= 0)
				&& (englishCheck >= 0 && specialCharacterCheck >= 0)
				&& (specialCharacterCheck >= 0 && numberCheck >= 0)
			var condition2 = value.length > 9 && value.length < 21;
			var condition3 = value.search(/\s/) < 0;

			passwordCheck = condition1 && condition2 && condition3;
		break;
		case 1:
			passwordCheck = $passwordInputs.eq(i - 1).val() == value;
		break;
	}
	
	passwordCheckAll[i] = passwordCheck;
	
	if (!passwordCheck) {
		$joinHelp.eq(i).text(joinRegexMessages[i]);
		$joinHelp.eq(i).css('color', 'red')
		showHelp($(this), contextPath + "/static/images/error.png");
	}else{
	$joinHelp.eq(i).text("");
	showHelp($(this), contextPath + "/static/images/pass.png");
	}
});


function showHelp($passwordInputs, fileName) {
	$passwordInputs.next().attr("src", fileName);

	if (fileName == contextPath + "/static/images/pass.png") {
		$passwordInputs.css("border", "1px solid rgba(0, 0, 0, 0.1)");
		$passwordInputs.css("background", "rgb(255, 255, 255)");
		$passwordInputs.next().attr("width", "18px");
	} else {
		$passwordInputs.css("border", "1px solid rgb(255, 64, 62)");
		$passwordInputs.css("background", "rgb(255, 246, 246)");
	}
};







