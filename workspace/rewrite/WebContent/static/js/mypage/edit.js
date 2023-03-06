/**
 *  edit.jsp
 */


/* 프로필 사진 업로드 */
const file = document.querySelector('input[type=file]');
const imgDiv = document.querySelector('.editInputImage');
const closeSpan = document.querySelector('.inputDeleter');


	closeSpan.addEventListener('click', function (e) {
            e.preventDefault();
            this.style.display = 'none';
            imgDiv.setAttribute('src', contextPath + "/static/images/favicon.png");
        });

 file.addEventListener('change', function (e) {
            let name = e.target.files[0].name;
            closeSpan.style.display = "inline-block";
            this.style.display = 'none';
            let reader = new FileReader();
            reader.readAsDataURL(e.target.files[0]);
            reader.onload = function (e) {
                let result = e.target.result;
                if (result.includes('image')) {
                    imgDiv.setAttribute('src', `${result}`);
                } else {
                    imgDiv.setAttribute('src', contextPath + "/static/images/no_image.png");
                }
            };
        });


/* 프로필 입력 값들 확인 */
const $UpInputs = $("form.editForm input[type='text'], form.editForm input[type='password'], form.editForm input[type='radio'], form.editForm select");
const $button = $(".editDivFormDiv2Button");
const NumberRegex =/[0-9]/g;
const nameRegex = /^[가-힣|a-z|A-Z|]+$/;
const EnglishRegex = /[a-z]/ig;
const SpecialCharacterRegex = /[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi;
const $MBTI = $("select[name='profileMBTI']");
const $Hobby = $("select[name='profileHobby']");
const $Salary = $("select[name='profileSalary']");


let mbti = $MBTI.val();
let hobby = $Hobby.val();
let salary = $Salary.val();

let upCheck;
let upCheckAll = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false];

$UpInputs.on("change", function(){
	let childCheck = $("input[name='child']:checked").val();
	let marriageCheck = $("input[name='marriage']:checked").val();
	let i = $UpInputs.index($(this));
    let value = $(this).val();
	console.log(childCheck);
	console.log(marriageCheck);
	
	if(!value){
        upCheck = false;
        upCheckAll[i] = upCheck;
    }

	
	switch(i){
        case 0:
            let numberCheck = value.search(NumberRegex);
			console.log(value);
			console.log(numberCheck);
            let englishCheck = value.search(EnglishRegex);
            let specialCharacterCheck = value.search(SpecialCharacterRegex);

			var condition1 = (numberCheck >= 0 && englishCheck >= 0) && (englishCheck >= 0 && specialCharacterCheck >= 0) && (specialCharacterCheck >= 0 && numberCheck >= 0)
            var condition2 = value.length > 9 && value.length < 21;
            var condition3 = value.search(/\s/) < 0;

			upCheck = condition1 && condition2 && condition3;
            break;
        case 1:
			var condition1 = (nameRegex.test(value) >= 0 && SpecialCharacterRegex.test(value) >= 0);
            var condition2 = value.length > 1 && value.length < 21;
            var condition3 = value.search(/\s/) < 0;

			upCheck = condition1 && condition2 && condition3;
            break;
        case 2:
			var condition1 = $(this).val().match("@") && !nameRegex.test(value);
			var condition2 = value.length > 6;

            upCheck = condition1 && condition2;
            break;
        case 3:
            upCheck = $UpInputs.eq(i).val();
            break;
        case 4:
			var condition1 = !NumberRegex.test(value) && (!SpecialCharacterRegex.test(value));
			var condition2 = value.length > 1
			
            upCheck = condition1 && condition2;
            break;
		case 5:
			var condition1 = !nameRegex.test(value) && (!SpecialCharacterRegex.test(value));
			var condition2 = value.length > 1 && value.length < 4
		
			upCheck = condition1 && condition2;
            break;
		case 6: 
        	upCheck = $(this).is(':checked') ? true : false;
        	break;
        case 7: 
        	upCheck = $(this).is(':checked') ? true : false;
        	break;
        case 8: 
        	upCheck = $(this).is(':checked') ? true : false;
        	break;
        case 9: 
        	upCheck = $(this).is(':checked') ? true : false;
        	break;
        case 10: 
        	upCheck = $(this).is(':checked') ? true : false;
        	break;
        case 11: 
        	upCheck = $(this).is(':checked') ? true : false;
        	break;
        case 12:
 			upCheck = (mbti != $(this).val() ? true : false);
 			break;
 		case 13: 
 			upCheck = (hobby != $(this).val() ? true : false);
 			break;
 		case 14:
 			upCheck = (salary != $(this).val() ? true : false);
 			break;
    }


		upCheckAll[i] = upCheck;
		
/*	if(!upCheck) {
		$editText.eq(i).text(upRegexMessages[i]);
		$editText.eq(i).css('color', 'red');
		upCheck = false;
        upCheckAll[i] = upCheck;
	} else if (i != 0) {
		$editText.eq(i).text("");
	}*/
	
		console.log(upCheckAll);
		for(let e = 0; e < upCheckAll.length; e++) {
			if(upCheckAll[e]) {
				$button.attr('disabled', false);
				break;
			} else {
				$button.attr('disabled', true);
			}
		}
});




