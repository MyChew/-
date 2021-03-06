package com.springbook.biz.review_board;

import java.sql.Date;

public class Review_BoardVO {
	private int seq;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private int cnt;
	private int recmd;
	private String id;
	
	private String searchCondition;
	private String searchKeyword;
	
	public int getSeq() {
		return seq;
	}
	
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getWriter() {
		return writer;
	}
	
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getRegDate() {
		return regDate;
	}
	
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	public int getCnt() {
		return cnt;
	}
	
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getRecmd() {
		return recmd;
	}

	public void setRecmd(int recmd) {
		this.recmd = recmd;
	}
	
	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Review_BoardVO [seq=" + seq + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", regDate=" + regDate + ", cnt=" + cnt + ", recmd=" + recmd + "]";
	}

}
