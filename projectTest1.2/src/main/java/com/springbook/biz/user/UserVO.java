package com.springbook.biz.user;

public class UserVO {
	private String id;
	private String password;
	private String name;
	private int age;
	private String marriage;
	private String height;
	private String academicBackground;
	private String job;
	private String money;
	private String religion;
	private String gender;

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", password=" + password + ", name=" + name + ", age=" + age + ", marriage="
				+ marriage + ", height=" + height + ", academicBackground=" + academicBackground + ", job=" + job
				+ ", money=" + money + ", religion=" + religion + ", Gender=" + gender + "]";
	}

}