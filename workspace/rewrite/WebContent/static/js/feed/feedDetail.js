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

	showTag();
	function showTag(){
		let text = "";
		$feedTag = $feedTag.trim();
		let tags = $feedTag.split(" ");
		const $tagbox = $(".feedMain .feedContentContainer");	
		
		
		$(tags).each((i, tag) =>{
			text+=`<div class="hashTagContainer" color="#FFF" backgroundcolor="rgba(0, 0, 0, 0.56)">
						<div color="#FFF" class="hashTagContent"></div>
					</div>`;
		});
		$tagbox.prepend(text);
		
		$(".hashTagContent").each((i, e) => {
			$(e).text(tags[i]);
		});		
		
	}