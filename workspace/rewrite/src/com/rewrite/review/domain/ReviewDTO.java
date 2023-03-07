package com.rewrite.review.domain;

public class ReviewDTO {

	private Long reviewId;
	private String reviewTitle;
	private String reviewContent;
	private String reviewRegisterDate;
	private String reviewUpdateDate;
	private String reviewReadCount;
	private String memberNickname;
	private Long memberId;
	private Long fileId;
	private String fileOriginalName;
	private String fileSystemName;
	private String fileRegisterDate;
	
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

	public String getReviewReadCount() {
		return reviewReadCount;
	}

	public void setReviewReadCount(String reviewReadCount) {
		this.reviewReadCount = reviewReadCount;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getFileId() {
		return fileId;
	}

	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}

	public String getFileOriginalName() {
		return fileOriginalName;
	}

	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}

	public String getFileSystemName() {
		return fileSystemName;
	}

	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}

	public String getFileRegisterDate() {
		return fileRegisterDate;
	}

	public void setFileRegisterDate(String fileRegisterDate) {
		this.fileRegisterDate = fileRegisterDate;
	}

	@Override
	public String toString() {
		return "ReviewDTO [reviewId=" + reviewId + ", reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent
				+ ", reviewRegisterDate=" + reviewRegisterDate + ", reviewUpdateDate=" + reviewUpdateDate
				+ ", reviewReadCount=" + reviewReadCount + ", memberNickname=" + memberNickname + ", memberId="
				+ memberId + ", fileId=" + fileId + ", fileOriginalName=" + fileOriginalName + ", fileSystemName="
				+ fileSystemName + ", fileRegisterDate=" + fileRegisterDate + "]";
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
		ReviewDTO other = (ReviewDTO) obj;
		if (reviewId == null) {
			if (other.reviewId != null)
				return false;
		} else if (!reviewId.equals(other.reviewId))
			return false;
		return true;
	}
	
	



}
