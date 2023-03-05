package com.rewrite.feed.domain;

public class FeedVO {

	private Long feedId;
	private String feedContent;
	private String feedRegisterDate;
	private String feedUpdateDate;
	private String feedLikeCount;
	private String feedReadCount;
	private String feedHashTag;
	private String feedImage;
	private Long memberId;

	public FeedVO() {
		;
	}

	public Long getFeedId() {
		return feedId;
	}

	public void setFeedId(Long feedId) {
		this.feedId = feedId;
	}

	public String getFeedContent() {
		return feedContent;
	}

	public void setFeedContent(String feedContent) {
		this.feedContent = feedContent;
	}

	public String getFeedRegisterDate() {
		return feedRegisterDate;
	}

	public void setFeedRegisterDate(String feedRegisterDate) {
		this.feedRegisterDate = feedRegisterDate;
	}

	public String getFeedUpdateDate() {
		return feedUpdateDate;
	}

	public void setFeedUpdateDate(String feedUpdateDate) {
		this.feedUpdateDate = feedUpdateDate;
	}

	public String getFeedLikeCount() {
		return feedLikeCount;
	}

	public void setFeedLikeCount(String feedLikeCount) {
		this.feedLikeCount = feedLikeCount;
	}

	public String getFeedReadCount() {
		return feedReadCount;
	}

	public void setFeedReadCount(String feedReadCount) {
		this.feedReadCount = feedReadCount;
	}

	public String getFeedHashTag() {
		return feedHashTag;
	}

	public void setFeedHashTag(String feedHashTag) {
		this.feedHashTag = feedHashTag;
	}

	public String getFeedImage() {
		return feedImage;
	}

	public void setFeedImage(String feedImage) {
		this.feedImage = feedImage;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "FeedVO [feedId=" + feedId + ", feedContent=" + feedContent + ", feedRegisterDate=" + feedRegisterDate
				+ ", feedUpdateDate=" + feedUpdateDate + ", feedLikeCount=" + feedLikeCount + ", feedReadCount="
				+ feedReadCount + ", feedHashTag=" + feedHashTag + ", feedImage=" + feedImage + ", memberId=" + memberId
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((feedId == null) ? 0 : feedId.hashCode());
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
		FeedVO other = (FeedVO) obj;
		if (feedId == null) {
			if (other.feedId != null)
				return false;
		} else if (!feedId.equals(other.feedId))
			return false;
		return true;
	}

}
