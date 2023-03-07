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


