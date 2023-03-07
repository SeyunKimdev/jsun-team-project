package com.rewrite.mypage.domain;

public class SendMessageDTO {

	private Long memberId;
	private Long messageId;
	private String memberNickname;
	private String profileLocation;
	private String profileMarried;
	private String messageContent;
	
	public SendMessageDTO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getMessageId() {
		return messageId;
	}

	public void setMessageId(Long messageId) {
		this.messageId = messageId;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getProfileLocation() {
		return profileLocation;
	}

	public void setProfileLocation(String profileLocation) {
		this.profileLocation = profileLocation;
	}

	public String getProfileMarried() {
		return profileMarried;
	}

	public void setProfileMarried(String profileMarried) {
		this.profileMarried = profileMarried;
	}

	public String getMessageContent() {
		return messageContent;
	}

	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

	@Override
	public String toString() {
		return "SendMessageDTO [memberId=" + memberId + ", messageId=" + messageId + ", memberNickname="
				+ memberNickname + ", profileLocation=" + profileLocation + ", profileMarried=" + profileMarried
				+ ", messageContent=" + messageContent + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((messageId == null) ? 0 : messageId.hashCode());
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
		SendMessageDTO other = (SendMessageDTO) obj;
		if (messageId == null) {
			if (other.messageId != null)
				return false;
		} else if (!messageId.equals(other.messageId))
			return false;
		return true;
	}

	
	
}
