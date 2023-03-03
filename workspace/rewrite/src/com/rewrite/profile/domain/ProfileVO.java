package com.rewrite.profile.domain;

public class ProfileVO {
	private Long memberId;
	private String profileLocation;
	private String profileJob;
	private String profileSalary;
	private String profileHobby;
	private String profileMbti;
	private String profileHeight;
	private String profileChild;
	private String profileMarried;
	
	public ProfileVO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
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

	@Override
	public String toString() {
		return "ProfileVO [memberId=" + memberId + ", profileLocation=" + profileLocation + ", profileJob=" + profileJob
				+ ", profileSalary=" + profileSalary + ", profileHobby=" + profileHobby + ", profileMbti=" + profileMbti
				+ ", profileHeight=" + profileHeight + ", profileChild=" + profileChild + ", profileMarried="
				+ profileMarried + "]";
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
		ProfileVO other = (ProfileVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
	
}
