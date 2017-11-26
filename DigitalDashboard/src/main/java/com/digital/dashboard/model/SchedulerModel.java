package com.digital.dashboard.model;

public class SchedulerModel {

	private String jobName;
	private String pathInfo;
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getPathInfo() {
		return pathInfo;
	}
	public void setPathInfo(String pathInfo) {
		this.pathInfo = pathInfo;
	}
	public SchedulerModel(String jobName, String pathInfo) {
		this.jobName = jobName;
		this.pathInfo = pathInfo;
	}
	@Override
	public String toString() {
		return "SchedulerModel [jobName=" + jobName + ", pathInfo=" + pathInfo + "]";
	}
	
}
