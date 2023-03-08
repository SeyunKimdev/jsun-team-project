/**
 * sendMessagePage.jsp
 */

const $textArea = $('.mainContainerFormDivDiv2Div2DivTextarea');
const AreaBox = document.querySelector('.mainContainerFormDivDiv2Div2');

$textArea.on("focus", function(){
	AreaBox.style.border = '1px solid';
})

$textArea.on("blur", function(){
	AreaBox.style.border = '';
})
