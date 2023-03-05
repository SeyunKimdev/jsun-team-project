package com.rewrite.notice.domain;

public class NoticeVO {
	
	private Long noticeId;
	private String noticeTitle;
	private String noticeContent;
	private String noticeAdmin;
	private String noticeRegisterDate;
	
	public NoticeVO() {;}

	public Long getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(Long noticeId) {
		this.noticeId = noticeId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getNoticeAdmin() {
		return noticeAdmin;
	}

	public void setNoticeAdmin(String noticeAdmin) {
		this.noticeAdmin = noticeAdmin;
	}

	public String getNoticeRegisterDate() {
		return noticeRegisterDate;
	}

	public void setNoticeRegisterDate(String noticeRegisterDate) {
		this.noticeRegisterDate = noticeRegisterDate;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeId=" + noticeId + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", noticeAdmin=" + noticeAdmin + ", noticeRegisterDate=" + noticeRegisterDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((noticeId == null) ? 0 : noticeId.hashCode());
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
		NoticeVO other = (NoticeVO) obj;
		if (noticeId == null) {
			if (other.noticeId != null)
				return false;
		} else if (!noticeId.equals(other.noticeId))
			return false;
		return true;
	}
	
}
