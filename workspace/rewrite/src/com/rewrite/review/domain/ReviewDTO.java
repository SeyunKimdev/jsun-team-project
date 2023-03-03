package com.rewrite.review.domain;

public class ReviewDTO {

	private Long reviewId;
	private String reviewTitle;
	private String reviewContent;
	private String reviewRegisterDate;
	private String reviewUpdateDate;
	private String reviewLikeCount;
	private String reviewReadCount;
	private String reviewImage;
	private String memberNickname;

	public ReviewDTO() {;}

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

	public String getReviewLikeCount() {
		return reviewLikeCount;
	}

	public void setReviewLikeCount(String reviewLikeCount) {
		this.reviewLikeCount = reviewLikeCount;
	}

	public String getReviewReadCount() {
		return reviewReadCount;
	}

	public void setReviewReadCount(String reviewReadCount) {
		this.reviewReadCount = reviewReadCount;
	}

	public String getReviewImage() {
		return reviewImage;
	}

	public void setReviewImage(String reviewImage) {
		this.reviewImage = reviewImage;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	@Override
	public String toString() {
		return "ReviewDTO [reviewId=" + reviewId + ", reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent
				+ ", reviewRegisterDate=" + reviewRegisterDate + ", reviewUpdateDate=" + reviewUpdateDate
				+ ", reviewLikeCount=" + reviewLikeCount + ", reviewReadCount=" + reviewReadCount + ", reviewImage="
				+ reviewImage + ", memberNickname=" + memberNickname + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((reviewId == null) ? 0 : reviewId.hashCode());
		result = prime * result + ((reviewUpdateDate == null) ? 0 : reviewUpdateDate.hashCode());
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
		ReviewDTO other = (ReviewDTO) obj;
		if (reviewId == null) {
			if (other.reviewId != null)
				return false;
		} else if (!reviewId.equals(other.reviewId))
			return false;
		if (reviewUpdateDate == null) {
			if (other.reviewUpdateDate != null)
				return false;
		} else if (!reviewUpdateDate.equals(other.reviewUpdateDate))
			return false;
		return true;
	}

}
