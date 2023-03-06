package com.rewrite.reply.domain;

public class ReplyDTO {
	private Long replyId;
	private String replyContent;
	private String replyRegitserDate;
	private String replyUpdateDate;
	private Long replyLikeCount;
	private Long memberId;
	private Long feedId;
	private String memberIdentification;
	private String memberName;
	private String memberNickName;
	private String memberPhoneNumer;
	
	public ReplyDTO() {;}

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

	public String getReplyRegitserDate() {
		return replyRegitserDate;
	}

	public void setReplyRegitserDate(String replyRegitserDate) {
		this.replyRegitserDate = replyRegitserDate;
	}

	public String getReplyUpdateDate() {
		return replyUpdateDate;
	}

	public void setReplyUpdateDate(String replyUpdateDate) {
		this.replyUpdateDate = replyUpdateDate;
	}

	public Long getReplyLikeCount() {
		return replyLikeCount;
	}

	public void setReplyLikeCount(Long replyLikeCount) {
		this.replyLikeCount = replyLikeCount;
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

	public String getMemberIdentification() {
		return memberIdentification;
	}

	public void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberNickName() {
		return memberNickName;
	}

	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}

	public String getMemberPhoneNumer() {
		return memberPhoneNumer;
	}

	public void setMemberPhoneNumer(String memberPhoneNumer) {
		this.memberPhoneNumer = memberPhoneNumer;
	}

	@Override
	public String toString() {
		return "ReplyDTO [replyId=" + replyId + ", replyContent=" + replyContent + ", replyRegitserDate="
				+ replyRegitserDate + ", replyUpdateDate=" + replyUpdateDate + ", replyLikeCount=" + replyLikeCount
				+ ", memberId=" + memberId + ", feedId=" + feedId + ", memberIdentification=" + memberIdentification
				+ ", memberName=" + memberName + ", memberNickName=" + memberNickName + ", memberPhoneNumer="
				+ memberPhoneNumer + "]";
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
		ReplyDTO other = (ReplyDTO) obj;
		if (replyId == null) {
			if (other.replyId != null)
				return false;
		} else if (!replyId.equals(other.replyId))
			return false;
		return true;
	}

}
