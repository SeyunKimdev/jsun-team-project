package com.rewrite.member.domain;

public class MemberDTO {
	private Long memberId;
	private String memberIdentification;
	private String memberPassword;
	private String memberNickname;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private String memberBirth;
	private String memberGender;
	private String memberStatus;
	private String profileLocation;
	private String profileJob;
	private String profileSalary;
	private String profileHobby;
	private String profileMbti;
	private String profileHeight;
	private String profileChild;
	private String profileMarried;
	private String fileOriginalName;
	private String fileSystemName;
	private String fileRegisterDate;
	
	public MemberDTO() {;}
	
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
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberBirth() {
		return memberBirth;
	}
	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberStatus() {
		return memberStatus;
	}
	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
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
	public String getProfileSalary() {
		return profileSalary;
	}
	public void setProfileSalary(String profileSalary) {
		this.profileSalary = profileSalary;
	}
	public String getProfileHobby() {
		return profileHobby;
	}
	public void setProfileHobby(String profileHobby) {
		this.profileHobby = profileHobby;
	}
	public String getProfileMbti() {
		return profileMbti;
	}
	public void setProfileMbti(String profileMbti) {
		this.profileMbti = profileMbti;
	}
	public String getProfileHeight() {
		return profileHeight;
	}
	public void setProfileHeight(String profileHeight) {
		this.profileHeight = profileHeight;
	}
	public String getProfileChild() {
		return profileChild;
	}
	public void setProfileChild(String profileChild) {
		this.profileChild = profileChild;
	}
	public String getProfileMarried() {
		return profileMarried;
	}
	public void setProfileMarried(String profileMarried) {
		this.profileMarried = profileMarried;
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
		return "MemberDTO [memberId=" + memberId + ", memberIdentification=" + memberIdentification
				+ ", memberPassword=" + memberPassword + ", memberNickname=" + memberNickname + ", memberName="
				+ memberName + ", memberPhone=" + memberPhone + ", memberEmail=" + memberEmail + ", memberBirth="
				+ memberBirth + ", memberGender=" + memberGender + ", memberStatus=" + memberStatus
				+ ", profileLocation=" + profileLocation + ", profileJob=" + profileJob + ", profileSalary="
				+ profileSalary + ", profileHobby=" + profileHobby + ", profileMbti=" + profileMbti + ", profileHeight="
				+ profileHeight + ", profileChild=" + profileChild + ", profileMarried=" + profileMarried
				+ ", fileOriginalName=" + fileOriginalName + ", fileSystemName=" + fileSystemName
				+ ", fileRegisterDate=" + fileRegisterDate + "]";
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
		MemberDTO other = (MemberDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
}
