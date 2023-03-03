package com.rewrite.matching.domain;

public class MatchingVO {
	private Long matchingId;
	private String matchingStatus;
	private Long tempterId;
	private Long attracterId;
	private String matchingRegisterDate;
	
	public MatchingVO() {;}

	public Long getMatchingId() {
		return matchingId;
	}

	public void setMatchingId(Long matchingId) {
		this.matchingId = matchingId;
	}

	public String getMatchingStatus() {
		return matchingStatus;
	}

	public void setMatchingStatus(String matchingStatus) {
		this.matchingStatus = matchingStatus;
	}

	public Long getTempterId() {
		return tempterId;
	}

	public void setTempterId(Long tempterId) {
		this.tempterId = tempterId;
	}

	public Long getAttracterId() {
		return attracterId;
	}

	public void setAttracterId(Long attracterId) {
		this.attracterId = attracterId;
	}

	public String getMatchingRegisterDate() {
		return matchingRegisterDate;
	}

	public void setMatchingRegisterDate(String matchingRegisterDate) {
		this.matchingRegisterDate = matchingRegisterDate;
	}

	@Override
	public String toString() {
		return "MatchingVO [matchingId=" + matchingId + ", matchingStatus=" + matchingStatus + ", tempterId="
				+ tempterId + ", attracterId=" + attracterId + ", matchingRegisterDate=" + matchingRegisterDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((matchingId == null) ? 0 : matchingId.hashCode());
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
		MatchingVO other = (MatchingVO) obj;
		if (matchingId == null) {
			if (other.matchingId != null)
				return false;
		} else if (!matchingId.equals(other.matchingId))
			return false;
		return true;
	}
	
	

}
