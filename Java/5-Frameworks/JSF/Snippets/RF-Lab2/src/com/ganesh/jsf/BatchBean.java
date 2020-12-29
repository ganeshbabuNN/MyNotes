package com.ganesh.jsf;

public class BatchBean {
	private String batchId;
	private String branch;
	private String faculty;
	private String timings;
	
	public BatchBean(String batchId, String branch, String faculty,
			String timings) {
		this.batchId = batchId;
		this.branch = branch;
		this.faculty = faculty;
		this.timings = timings;
	}

	public String getBatchId() {
		return batchId;
	}

	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}

	public String getbranch() {
		return branch;
	}

	public void setBarch(String branch) {
		this.branch = branch;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getTimings() {
		return timings;
	}

	public void setTimings(String timings) {
		this.timings = timings;
	}
}
