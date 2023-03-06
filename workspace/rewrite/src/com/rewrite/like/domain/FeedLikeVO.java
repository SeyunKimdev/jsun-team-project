package com.rewrite.like.domain;

public class FeedLikeVO {
	private Long feedLikeId;
	private Long memberId;
	private Long feedId;
	
	public FeedLikeVO() {;}

	public Long getLikeId() {
		return feedLikeId;
	}

	public void setLikeId(Long feedLikeId) {
		this.feedLikeId = feedLikeId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getFeedId() {
		return feedId;
	}

	public void setFeedId(Long feedId) {
		this.feedId = feedId;
	}

	@Override
	public String toString() {
		return "LikeVO [likeId=" + feedLikeId + ", memberId=" + memberId + ", feedId=" + feedId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((feedLikeId == null) ? 0 : feedLikeId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		FeedLikeVO other = (FeedLikeVO) obj;
		if (feedLikeId == null) {
			if (other.feedLikeId != null)
				return false;
		} else if (!feedLikeId.equals(other.feedLikeId))
			return false;
		return true;
	}
	
}
