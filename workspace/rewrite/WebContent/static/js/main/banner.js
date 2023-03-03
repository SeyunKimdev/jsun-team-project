/**
 * main.jsp
 */

HTMLCollection.prototype.forEach = Array.prototype.forEach;

const banner = document.querySelector('div.mainDivDiv1DivDiv4DivDiv1DivDiv3Div1');
const imgDiv = document.querySelectorAll('div.mainDivDiv1DivDiv4DivDiv1DivDiv3Div1 img');
const backImg = document.querySelector('.mainDivDiv1DivDiv2Img');

console.log(banner);


/* 버튼을 눌렀을 때 해당 위치로 이동하기 위한 선언 */
const prev = document.querySelector('.mainDivDiv1DivDiv4DivDiv2DivButtonSpan1');
const next = document.querySelector('.mainDivDiv1DivDiv4DivDiv2DivButtonSpan2');

/*몇 번째 배너인지 표시하기 위한 선언*/
const pages = document.querySelector('.mainDivDiv1DivDiv4DivDiv2DivSpanSpan1');

let count = 1;
let auto = setInterval(autoSlide, 2000);

let checkArrow = false;

imgDiv.forEach((img, i) => img.setAttribute('src', contextPath + `/static/images/00${i+1}.png`));
console.log(imgDiv);

function autoSlide() {
   banner.style.transition = 'transform 0.5s';
   banner.style.transform = `translate(${-676 * count++}px)`;
   backImg.setAttribute('src', contextPath + `/static/images/00${count}.png`);
   pages.innerHTML = `0${count}`;
   if (count == 2) {
      count = 0;
   }
}

prev.addEventListener("click", function(){
   if(checkArrow){return;}
   checkArrow = true;
   clearInterval(auto);
   backImg.setAttribute('src', contextPath + `/static/images/00${count+1}.png`);
   pages.innerHTML = `0${count+1}`;
   banner.style.transition = 'transform 0.5s';
   banner.style.transform = `translate(${-676 * count--}px)`;
   if(count == -1) {
      count = 1;
   }
   auto = setInterval(autoSlide, 2000);
   setTimeout(()=>{checkArrow = false}, 100);
});


next.addEventListener("click", function(){
   if(checkArrow){return;}
   checkArrow = true;
   clearInterval(auto);
   pages.innerHTML = `0${count+1}`;
   backImg.setAttribute('src', contextPath + `/static/images/00${count+1}.png`);
   banner.style.transition = 'transform 0.5s';
   banner.style.transform = `translate(${676 -676 * ++count}px)`;
   if(count == 2) {
      count = 0;
   }
   auto = setInterval(autoSlide, 2000);
   setTimeout(()=>{checkArrow = false}, 100);
})




