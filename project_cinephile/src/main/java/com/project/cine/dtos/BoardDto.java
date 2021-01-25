package com.project.cine.dtos;

import java.util.Date;
import lombok.Data;

@Data
public class BoardDto {

	private int w_seq;			// 글번호
	private String id;			// 사용자 id
	private String w_title; 	//글제목
	private String w_content; 	// 글내용
	private Date w_regdate; 	// 작성일
	private int w_ref; 			//글묶음
	private String w_reply; 	//댓글표시
	
	public BoardDto() {
		super();
	}
	
	public BoardDto(int w_seq, String id, String w_title, String w_content, Date w_regdate, int w_ref, String w_reply) {
		super();
		this.w_seq = w_seq;
		this.id = id;
		this.w_title = w_title;
		this.w_content = w_content;
		this.w_regdate = w_regdate;
		this.w_ref = w_ref;
		this.w_reply = w_reply;
	}

	@Override
	public String toString() {
		return "BoardDto [w_seq=" + w_seq + ", id=" + id + ", w_title=" + w_title + ", w_content=" + w_content
				+ ", w_regdate=" + w_regdate + ", w_ref=" + w_ref + ", w_reply=" + w_reply + "]";
	}
	

	
	
	
}
