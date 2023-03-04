/**
 * feedDetail.jsp
 */

/* 좋아요 클릭 이벤트 */
const like = document.querySelector(".feedLikeButton");
const heart = document.querySelector(".heart");

like.addEventListener("click", () => {
if(heart.style.display != "block"){
	heart.style.display = "block";
	return;
}
heart.style.display = "none";
});