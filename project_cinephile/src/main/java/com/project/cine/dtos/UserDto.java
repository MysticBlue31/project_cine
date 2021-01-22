package com.project.cine.dtos;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("userDto")
public class UserDto {
	private String id;
	private String pw;
	private String email;
	private String grade;
	private Date regdate;
	private String enabled;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	
	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserDto(String id, String pw, String email, String grade, Date regdate, String enabled) {
		super();
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.grade = grade;
		this.regdate = regdate;
		this.enabled = enabled;
	}
	@Override
	public String toString() {
		return "UserDto [id=" + id + ", pw=" + pw + ", email=" + email + ", grade=" + grade + ", regdate=" + regdate
				+ ", enabled=" + enabled + "]";
	}
	
	

}
