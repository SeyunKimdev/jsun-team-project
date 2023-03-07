/* 좋아요 모듈*/

let likeService = (function(){

	function likeUp(feedId, callback){
		$.ajax({
			url: contextPath + "/like/feedLikeUp.like",
			data: {feedId : feedId, memberId : memberId},
			dataType: "json",
			success: function(count){
				if(callback){
					callback(count);
				}
			}
		});
	};
	
	function likeDown(feedId, callback){
		$.ajax({
			url: contextPath + "/like/feedLikeDown.like",
			data: {feedId : feedId, memberId : memberId},
			dataType: "json",
			success: function(check){
				if(callback){
					callback(check);
				}
			}
		});
	}
	
	function likeCount(feedId, callback){
		$.ajax({
			url: contextPath + "/like/feedLikeCount.like",
			data: {feedId : feedId},
			dataType: "json",
			success: function(count){
				if(callback){
					callback(count.likeCount);
				}
			}
		});
		
	}

	return {likeUp : likeUp, likeDown : likeDown, likeCount : likeCount};

})();	