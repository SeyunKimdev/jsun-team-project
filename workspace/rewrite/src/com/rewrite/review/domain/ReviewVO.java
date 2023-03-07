package com.rewrite.review.domain;

public class ReviewVO {
	private Long reviewId;
	private String reviewTitle;
	private String reviewContent;
	private String reviewRegisterDate;
	private String reviewUpdateDate;
	private String reviewReadCount;
	private String memberId;
	
	public ReviewVO() {;}

	public Long getReviewId() {
		return reviewId;
	}

	public void setReviewId(Long reviewId) {
		this.reviewId = reviewId;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewRegisterDate() {
		return reviewRegisterDate;
	}

	public void setReviewRegisterDate(String reviewRegisterDate) {
		this.reviewRegisterDate = reviewRegisterDate;
	}

	public String getReviewUpdateDate() {
		return reviewUpdateDate;
	}

	public void setReviewUpdateDate(String reviewUpdateDate) {
		this.reviewUpdateDate = reviewUpdateDate;
	}

	public String getReviewReadCount() {
		return reviewReadCount;
	}

	public void setReviewReadCount(String reviewReadCount) {
		this.reviewReadCount = reviewReadCount;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "ReviewVO [reviewId=" + reviewId + ", reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent
				+ ", reviewRegisterDate=" + reviewRegisterDate + ", reviewUpdateDate=" + reviewUpdateDate
				+ ", reviewReadCount=" + reviewReadCount + ", memberId=" + memberId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((reviewId == null) ? 0 : reviewId.hashCode());
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
		ReviewVO other = (ReviewVO) obj;
		if (reviewId == null) {
			if (other.reviewId != null)
				return false;
		} else if (!reviewId.equals(other.reviewId))
			return false;
		return true;
	}
	

}
