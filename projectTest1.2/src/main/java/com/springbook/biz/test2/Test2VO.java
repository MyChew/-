package com.springbook.biz.test2;

public class Test2VO {
	
	private int seq;
	private String name;
	private int outsideActivities;
	private int diligence;
	private int plannedness;
	private int friendly;
	private int consideration;
	private int empathy;
	private int externalFactors;
	private int drinking;
	private int smoking;
	private String id;
	
	
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
	public int getOutsideActivities() {
		return outsideActivities;
	}
	public void setOutsideActivities(int outsideActivities) {
		this.outsideActivities = outsideActivities;
	}
	public int getDiligence() {
		return diligence;
	}
	public void setDiligence(int diligence) {
		this.diligence = diligence;
	}
	public int getPlannedness() {
		return plannedness;
	}
	public void setPlannedness(int plannedness) {
		this.plannedness = plannedness;
	}
	public int getFriendly() {
		return friendly;
	}
	public void setFriendly(int friendly) {
		this.friendly = friendly;
	}
	public int getConsideration() {
		return consideration;
	}
	public void setConsideration(int consideration) {
		this.consideration = consideration;
	}
	public int getEmpathy() {
		return empathy;
	}
	public void setEmpathy(int empathy) {
		this.empathy = empathy;
	}
	public int getExternalFactors() {
		return externalFactors;
	}
	public void setExternalFactors(int externalFactors) {
		this.externalFactors = externalFactors;
	}
	public int getDrinking() {
		return drinking;
	}
	public void setDrinking(int drinking) {
		this.drinking = drinking;
	}
	public int getSmoking() {
		return smoking;
	}
	public void setSmoking(int smoking) {
		this.smoking = smoking;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "test2VO [name=" + name + ", outsideActivities=" + outsideActivities + ", diligence=" + diligence
				+ ", plannedness=" + plannedness + ", friendly=" + friendly + ", consideration=" + consideration
				+ ", empathy=" + empathy + ", externalFactors=" + externalFactors + ", drinking=" + drinking
				+ ", smoking=" + smoking + "]";
	}
	
	
}
