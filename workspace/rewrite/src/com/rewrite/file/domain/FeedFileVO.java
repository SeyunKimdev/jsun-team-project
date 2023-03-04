package com.rewrite.file.domain;

public class FeedFileVO {
	
	private Long fileId;
	private String fileOriginalName;
	private String fileSystemName;
	private String fileRegisterDate;
	private Long feedId;
	
	public FeedFileVO() {;}

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

	public Long getFeedId() {
		return feedId;
	}

	public void setFeedId(Long feedId) {
		this.feedId = feedId;
	}

	@Override
	public String toString() {
		return "FeedFileVO [fileId=" + fileId + ", fileOriginalName=" + fileOriginalName + ", fileSystemName="
				+ fileSystemName + ", fileRegisterDate=" + fileRegisterDate + ", feedId=" + feedId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fileId == null) ? 0 : fileId.hashCode());
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
		FeedFileVO other = (FeedFileVO) obj;
		if (fileId == null) {
			if (other.fileId != null)
				return false;
		} else if (!fileId.equals(other.fileId))
			return false;
		return true;
	}
	
	
}
