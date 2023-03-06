package com.rewrite.like.domain;

public class ReplyLikeVO {
	private Long replyLikeId;
	private Long memberId;
	private Long feedId;
	
	public ReplyLikeVO() {;}

	public Long getReplyLikeId() {
		return replyLikeId;
	}

	public void setReplyLikeId(Long replyLikeId) {
		this.replyLikeId = replyLikeId;
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
		return "ReplyLikeVO [replyLikeId=" + replyLikeId + ", memberId=" + memberId + ", feedId=" + feedId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((replyLikeId == null) ? 0 : replyLikeId.hashCode());
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
		ReplyLikeVO other = (ReplyLikeVO) obj;
		if (replyLikeId == null) {
			if (other.replyLikeId != null)
				return false;
		} else if (!replyLikeId.equals(other.replyLikeId))
			return false;
		return true;
	}
	
	
	
}
