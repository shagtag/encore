package com.encore.model;

//job 테이블에 데이터를 담아서 transfer 하기위한 틀
public class jobDTO {
	String job_id;
	String job_title;
	public jobDTO() {
		super();
	}
	public jobDTO(String job_id, String job_title) {
		super();
		this.job_id = job_id;
		this.job_title = job_title;
	}
	public String getJob_id() {
		return job_id;
	}
	public void setJob_id(String job_id) {
		this.job_id = job_id;
	}
	public String getJob_title() {
		return job_title;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	@Override
	public String toString() {
		return "jobDTO [job_id=" + job_id + ", job_title=" + job_title + "]";
	}
	
	
	
}
