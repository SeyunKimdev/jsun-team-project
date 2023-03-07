/**
 * join.jsp
 */

const $joinInputs = $(".inputBoxWrap input[type='text'], input[type='password']");
const nameRegex = /^[가-힣|a-z|A-Z|]+$/;
const specialCharacterRegex = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gim;
const birthRegex = /^(19[0-9][0-9]|20\d{2}).?(0[0-9]|1[0-2]).?(0[1-9]|[1-2][0-9]|3[0-1])$/;
const phoneRegex = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/
const idRegex = /^(?!(?:[0-9]+)$)([a-zA-Z]|[0-9a-zA-Z]){4,}$/;
const passwordNumberRegex = /[0-9]/g;
const passwordEnglishRegex = /[a-z]/ig;
const passwordSpecialCharacterRegex = /[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi;
const emailRegex = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{2,4}$/;
const $phoneCheck = $(".getPhoneCheck");
const $checks = $("input[name='memberGender']");
const $genderCheckImg = $(".genderCheckImg");
let phoneNumberCheck;

let joinBlurMessages = ["아이디를 입력하세요.", "비밀번호를 입력하세요.",
	"비밀번호 확인을 위해 한번 더 입력하세요.", "닉네임을 입력하세요.", "이름을 입력하세요.",
	"휴대폰 번호를 입력하세요.", "인증번호를 입력하세요", "이메일을 입력하세요.", "생년월일을 입력하세요."];
let joinRegexMessages = ["영문 혹은 영문과 숫자를 조합하여 4자~20자로 입력해주세요.",
	"공백 제외 영어 및 숫자, 특수문자 모두 포함하여 10~20자로 입력해주세요.",
	"위 비밀번호와 일치하지 않습니다. 다시 입력해주세요.", "영문 혹은 한글로 2자~20자로 입력해주세요.",
	"영문 혹은 한글로 2자~20자로 입력해주세요.", "휴대폰 번호를 확인하세요.", "인증번호를 확인하세요.", "이메일 주소를 확인해주세요.",
	"생년월일을 확인하세요."];
const $joinHelp = $("p.help");

let joinCheck;
let joinCheckAll = [false, false, false, false, false, false, false, false, false];

$joinInputs.eq(5).on("focus", function() {
	$(this).val($(this).val().replaceAll("-", ""));
});

$joinInputs.eq(7).on("focus", function() {
	$(this).val($(this).val().replaceAll(".", ""));
});

$(".setPhoneCheckWrap").hide();
$(".help").eq(6).hide();

var code = "";

$(".getPhoneCheck").on("click", function() {
	if (phoneNumberCheck) {
		$(".setPhoneCheckWrap").show();
		$(".help").eq(6).show();
		var phone = $("#phone").val().replaceAll("-", "");
		console.log(phone);
		$.ajax({
			type: "POST",
			url: contextPath + "/smsOk.member",
			data: {memberPhone: phone},
			success: function(data) {
				console.log(data);
				code = data;
			}
		});
	}
});

/*$(".setPhoneCheck").on("click", function(){
	if($("#certificationNumber").val() == code){
		joinCheck = true;
		return;
	}
	joinCheck = false;
});*/

$joinInputs.on("blur", function() {
	let i = $joinInputs.index($(this));
	let value = $(this).val();

	$(this).next().hide();
	$(this).next().fadeIn(500);

	if (!value) {
		$joinHelp.eq(i).text(joinBlurMessages[i]);
		$joinHelp.eq(i).css('color', 'red');
		showHelp($(this), contextPath + "/static/images/error.png");
		joinCheck = false;
		joinCheckAll[i] = joinCheck;
		return;
	}

	switch (i) {
		case 0:
			joinCheck = value.length > 3 && value.length < 21
				&& idRegex.test(value)
				&& !specialCharacterRegex.test(value);
			break;
		case 1:
			let numberCheck = value.search(passwordNumberRegex);
			let englishCheck = value.search(passwordEnglishRegex);
			let specialCharacterCheck = value
				.search(passwordSpecialCharacterRegex);

			var condition1 = (numberCheck >= 0 && englishCheck >= 0)
				&& (englishCheck >= 0 && specialCharacterCheck >= 0)
				&& (specialCharacterCheck >= 0 && numberCheck >= 0)
			var condition2 = value.length > 9 && value.length < 21;
			var condition3 = value.search(/\s/) < 0;

			joinCheck = condition1 && condition2 && condition3;
			break;
		case 2:
			joinCheck = $joinInputs.eq(i - 1).val() == value;
			break;
		case 3:
			joinCheck = value.length > 1 && value.length < 21
				&& nameRegex.test(value)
				&& !specialCharacterRegex.test(value);
			break;
		case 4:
			joinCheck = value.length > 1 && value.length < 21
				&& nameRegex.test(value)
				&& !specialCharacterRegex.test(value);
			break;
		case 5:
			joinCheck = phoneRegex.test(value);
			if (joinCheck) {
				$(this).val(value.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`));
			}
			break;
		case 6:
			joinCheck = value == JSON.parse(code).code;
			console.log(JSON.parse(code).code);
			break;
		case 7:
			joinCheck = emailRegex.test(value);
			break;
		case 8:
			joinCheck = birthRegex.test(value)
			if (joinCheck) {
				$(this).val(value.replace(/^(\d{4})(\d{2})(\d{2})$/, `$1.$2.$3`));
			}
			break;
	}

	joinCheckAll[i] = joinCheck;

	if (!joinCheck) {
		$joinHelp.eq(i).text(joinRegexMessages[i]);
		$joinHelp.eq(i).css('color', 'red')
		showHelp($(this), contextPath + "/static/images/error.png");
		return;
	}

	if (i != 0 && i != 3 && i != 5) {
		$joinHelp.eq(i).text("");
		showHelp($(this), contextPath + "/static/images/pass.png");
	} else if (i == 0) {
		/*중복 검사*/
		$.ajax({
			type: "POST",
			url: contextPath + "/checkIdOk.member",
			data: { memberIdentification: value },
			success: function(result) {
				let message, icon;
				result = JSON.parse(result);
				if (result.check) {
					message = "중복된 아이디입니다.";
					icon = contextPath + "/static/images/error.png";
					$joinHelp.eq(i).css('color', 'red');
					joinCheckAll[i] = !result.check;
				} else {
					message = "사용 가능한 아이디입니다.";
					$joinHelp.eq(i).css('color', '#2bb673')
					icon = contextPath + "/static/images/pass.png";
					joinCheckAll[i] = true;
				}
				$joinHelp.eq(i).text(message);
				showHelp($joinInputs.eq(i), icon);
				console.log("asda" + i);
				console.log(joinCheckAll[i]);
			}
		});
	} else if (i == 3) {
		$.ajax({
			url: contextPath + "/checkNicknameOk.member",
			data: { memberNickname: value },
			success: function(result) {
				let message, icon;
				result = JSON.parse(result);
				if (result.check) {
					message = "중복된 닉네임입니다.";
					icon = contextPath + "/static/images/error.png";
					$joinHelp.eq(i).css('color', 'red')
				} else {
					message = "사용 가능한 닉네임입니다.";
					$joinHelp.eq(i).css('color', '#2bb673')
					icon = contextPath + "/static/images/pass.png";
				}
				$joinHelp.eq(i).text(message);
				showHelp($joinInputs.eq(i), icon);
				joinCheckAll[i] = !result.check
			}
		});
	} else if (i == 5) {
		$(".getPhoneCheck").click(function() {
			$.ajax({
				url: contextPath + "/checkPhoneOk.member",
				data: { memberPhone: value.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`) },
				success: function(result) {
					let message, icon;
					result = JSON.parse(result);
					if (result.check) {
						phoneNumberCheck = false;
						message = "중복된 휴대폰 번호입니다.";
						icon = contextPath + "/static/images/error.png";
						$joinHelp.eq(i).css('color', 'red')
					} else {
						phoneNumberCheck = true;
						$(".setPhoneCheckWrap").show();
						$(".help").eq(6).show();
						message = "사용 가능한 휴대폰 번호입니다.";
						$joinHelp.eq(i).css('color', '#2bb673')
						icon = contextPath + "/static/images/pass.png";
						
					}
					$joinHelp.eq(i).text(message);
					showHelp($joinInputs.eq(i), icon);
					joinCheckAll[i] = !result.check
				}
			});
		});
	}

});

function showHelp($joinInputs, fileName) {
	$joinInputs.next().attr("src", fileName);

	if (fileName == contextPath + "/static/images/pass.png") {
		$joinInputs.css("border", "1px solid rgba(0, 0, 0, 0.1)");
		$joinInputs.css("background", "rgb(255, 255, 255)");
		$joinInputs.next().attr("width", "18px");
	} else {
		$joinInputs.css("border", "1px solid rgb(255, 64, 62)");
		$joinInputs.css("background", "rgb(255, 246, 246)");
	}
}

/* 성별 선택 */
$checks.on("change", function() {
	if ($checks.eq(0).prop("checked") == true) {
		$genderCheckImg.eq(0).attr("src", contextPath + "/static/images/checked.png")
		$genderCheckImg.eq(1).attr("src", contextPath + "/static/images/check.png")
	} else {
		$genderCheckImg.eq(0).attr("src", contextPath + "/static/images/check.png")
		$genderCheckImg.eq(1).attr("src", contextPath + "/static/images/checked.png")
	}
});

function send() {
	$joinInputs.trigger("blur");
	if (joinCheckAll.filter(check => check).length != $joinInputs.length) {
		let modalMessage = "<span>모든 정보를 정확히 입력하셔야</span><span>가입이 완료됩니다.</span>";
		showWarnModal(modalMessage);
		return;
	}

	$("input[name='memberPassword']").val(btoa($("input[name='memberPassword']").val()));
	$("#passwordCheck").val(btoa($("#passwordCheck").val()));

	$("input[type=radio][name=memberGender]:checked").val();
	document.join.submit();

}


let modalCheck;
function showWarnModal(modalMessage) {
	modalCheck = false;
	$("div#contentWrap").html(modalMessage)
	$("div.warnModal").css("animation", "popUp 0.5s");
	$("div.modal").css("display", "flex").hide().fadeIn(500);
	setTimeout(function() { modalCheck = true; }, 500);
}

$("div.modal").on("click", function() {
	if (modalCheck) {
		$("div.warnModal").css("animation", "popDown 0.5s");
		$("div.modal").fadeOut(500);
	}
});



