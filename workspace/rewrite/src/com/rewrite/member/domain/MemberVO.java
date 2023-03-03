package com.rewrite.member.domain;

public class MemberVO {
	
	private Long memberId;
	private String memberIdentification;
	private String memberPassword;
	private String memberNickname;
	private String memberName;
	private String memberPhone;
	private String memberEmailmemberBirth;
	private String memberGender;
	private String memberProfileImage;
	private String memberStatus;
	
	public MemberVO() {;}

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

	public String getMemberEmailmemberBirth() {
		return memberEmailmemberBirth;
	}

	public void setMemberEmailmemberBirth(String memberEmailmemberBirth) {
		this.memberEmailmemberBirth = memberEmailmemberBirth;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public String getMemberProfileImage() {
		return memberProfileImage;
	}

	public void setMemberProfileImage(String memberProfileImage) {
		this.memberProfileImage = memberProfileImage;
	}

	public String getMemberStatus() {
		return memberStatus;
	}

	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}

	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberIdentification=" + memberIdentification + ", memberPassword="
				+ memberPassword + ", memberNickname=" + memberNickname + ", memberName=" + memberName
				+ ", memberPhone=" + memberPhone + ", memberEmailmemberBirth=" + memberEmailmemberBirth
				+ ", memberGender=" + memberGender + ", memberProfileImage=" + memberProfileImage + ", memberStatus="
				+ memberStatus + "]";
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
		MemberVO other = (MemberVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
	
	
	
}



