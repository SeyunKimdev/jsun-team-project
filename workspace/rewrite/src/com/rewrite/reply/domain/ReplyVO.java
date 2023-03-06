package com.rewrite.reply.domain;

public class ReplyVO {
	private Long replyId;
	private String replyContent;
	private String replyRegisterDate;
	private String replyUpdateDate;
	private String replyLikeStatus;
	private Long memberId;
	private Long feedId;
	
	public ReplyVO() {;}

	public Long getReplyId() {
		return replyId;
	}

	public void setReplyId(Long replyId) {
		this.replyId = replyId;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getReplyRegisterDate() {
		return replyRegisterDate;
	}

	public void setReplyRegisterDate(String replyRegisterDate) {
		this.replyRegisterDate = replyRegisterDate;
	}

	public String getReplyUpdateDate() {
		return replyUpdateDate;
	}

	public void setReplyUpdateDate(String replyUpdateDate) {
		this.replyUpdateDate = replyUpdateDate;
	}

	public String getReplyLikeStatus() {
		return replyLikeStatus;
	}

	public void setReplyLikeStatus(String replyLikeStatus) {
		this.replyLikeStatus = replyLikeStatus;
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
		return "FeedReplyVO [replyId=" + replyId + ", replyContent=" + replyContent + ", replyRegisterDate="
				+ replyRegisterDate + ", replyUpdateDate=" + replyUpdateDate + ", replyLikeStatus=" + replyLikeStatus
				+ ", memberId=" + memberId + ", feedId=" + feedId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((replyId == null) ? 0 : replyId.hashCode());
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
		ReplyVO other = (ReplyVO) obj;
		if (replyId == null) {
			if (other.replyId != null)
				return false;
		} else if (!replyId.equals(other.replyId))
			return false;
		return true;
	}
	
}
