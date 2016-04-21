package be.italent.model;

import javax.validation.constraints.Size;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

public abstract class ITalentEntity {
	private char status;
	@Size(max=55)
	private String lastUpdatedBy;
	@Temporal(TemporalType.TIMESTAMP)
	private String lastUpdateTimestamp;
	public char getStatus() {
		return status;
	}
	public void setStatus(char status) {
		this.status = status;
	}
	public String getLastUpdatedBy() {
		return lastUpdatedBy;
	}
	public void setLastUpdatedBy(String lastUpdatedBy) {
		this.lastUpdatedBy = lastUpdatedBy;
	}
	public String getLastUpdateTimestamp() {
		return lastUpdateTimestamp;
	}
	public void setLastUpdateTimestamp(String lastUpdateTimestamp) {
		this.lastUpdateTimestamp = lastUpdateTimestamp;
	}
}
