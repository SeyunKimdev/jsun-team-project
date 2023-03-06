package com.rewrite.mypage.domain;

public class MypageDTO {

	private Long memberId;
	private String memberIdentification;
	private String memberPassword;
	private String memberName;
	private String memberNickname;
	private String memberBirth;
	private String memberEmail;
	private String profileLocation;
	private String profileJob;
	private String profileHeight;
	private String profileMarried;
	private String profileChild;
	private String profileMbti;
	private String profileHobby;
	private String profileSalary;
	private String coinContent;
	private String coinCount;
	
	
	public MypageDTO() {;}


	public Long getMemberId() {
		return memberId;
	}


	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}


	public String getMemberIdentification() {
		return memberIdentification;
	}


	public void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}


	public String getMemberPassword() {
		return memberPassword;
	}


	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}


	public String getMemberName() {
		return memberName;
	}


	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}


	public String getMemberNickname() {
		return memberNickname;
	}


	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}


	public String getMemberBirth() {
		return memberBirth;
	}


	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
	}


	public String getMemberEmail() {
		return memberEmail;
	}


	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}


	public String getProfileLocation() {
		return profileLocation;
	}


	public void setProfileLocation(String profileLocation) {
		this.profileLocation = profileLocation;
	}


	public String getProfileJob() {
		return profileJob;
	}


	public void setProfileJob(String profileJob) {
		this.profileJob = profileJob;
	}


	public String getProfileHeight() {
		return profileHeight;
	}


	public void setProfileHeight(String profileHeight) {
		this.profileHeight = profileHeight;
	}


	public String getProfileMarried() {
		return profileMarried;
	}


	public void setProfileMarried(String profileMarried) {
		this.profileMarried = profileMarried;
	}


	public String getProfileChild() {
		return profileChild;
	}


	public void setProfileChild(String profileChild) {
		this.profileChild = profileChild;
	}


	public String getProfileMbti() {
		return profileMbti;
	}


	public void setProfileMbti(String profileMbti) {
		this.profileMbti = profileMbti;
	}


	public String getProfileHobby() {
		return profileHobby;
	}


	public void setProfileHobby(String profileHobby) {
		this.profileHobby = profileHobby;
	}


	public String getProfileSalary() {
		return profileSalary;
	}


	public void setProfileSalary(String profileSalary) {
		this.profileSalary = profileSalary;
	}


	public String getCoinContent() {
		return coinContent;
	}


	public void setCoinContent(String coinContent) {
		this.coinContent = coinContent;
	}


	public String getCoinCount() {
		return coinCount;
	}


	public void setCoinCount(String coinCount) {
		this.coinCount = coinCount;
	}


	@Override
	public String toString() {
		return "MypageDTO [memberId=" + memberId + ", memberIdentification=" + memberIdentification
				+ ", memberPassword=" + memberPassword + ", memberName=" + memberName + ", memberNickname="
				+ memberNickname + ", memberBirth=" + memberBirth + ", memberEmail=" + memberEmail
				+ ", profileLocation=" + profileLocation + ", profileJob=" + profileJob + ", profileHeight="
				+ profileHeight + ", profileMarried=" + profileMarried + ", profileChild=" + profileChild
				+ ", profileMbti=" + profileMbti + ", profileHobby=" + profileHobby + ", profileSalary=" + profileSalary
				+ ", coinContent=" + coinContent + ", coinCount=" + coinCount + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
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
		MypageDTO other = (MypageDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
}
