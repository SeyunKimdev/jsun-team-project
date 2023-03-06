/**
 * 
 */

const $findInput = $("div.inputBoxWrapper input[type='text']");
const $button = $(".checkButton");
const phoneRegex = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/

let inputCheck = false;

$findInput.on("blur", function(){
	let value = $(this).val();
	
	console.log(value);
	if(!value) {
		inputCheck = false;
	} else {
		inputCheck = phoneRegex.test(value);
		if(inputCheck){
                $(this).val(value.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`));
            }
		console.log(inputCheck);
	}
		if(inputCheck) {
			$button.attr("disabled", false);
		} else {
			$button.attr("disabled", true);
		}
})