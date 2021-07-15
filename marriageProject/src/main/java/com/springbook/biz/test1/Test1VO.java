package com.springbook.biz.test1;

public class Test1VO {
	
	private int seq;
	private String name;
	private String age;
	private String marriage;
	private String height;
	private String academicBackground;
	private String job;
	private String money;
	private String religion;
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getMarriage() {
		return marriage;
	}
	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getAcademicBackground() {
		return academicBackground;
	}
	public void setAcademicBackground(String academicBackground) {
		this.academicBackground = academicBackground;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	@Override
	public String toString() {
		return "test1VO [name=" + name + ", gender=" + ", age=" + age
				+ ", marriage=" + marriage + ", height=" + height + ", academicBackground=" + academicBackground
				+ ", job=" + job + ", money=" + money + ", religion=" + religion
				+ "]";
	}
	
	
}
