package com.encore.model;

public enum Gender {
	M("Male", "남자"),
	F("Female", "여자");
	
	String engName;
	String korName;
	private Gender(String engName, String korName) {
		this.engName = engName;
		this.korName = korName;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return korName + "(" + engName + ")";
	}
	public String getEngName() {
		return engName;
	}
	public void setEngName(String engName) {
		this.engName = engName;
	}
	public String getKorName() {
		return korName;
	}
	public void setKorName(String korName) {
		this.korName = korName;
	}
	
	
	
}
