package com.project.cine.dtos;

import lombok.Data;
@Data
public class LoginDto {
		
	private String userId;
	private String userPw;
	private boolean userCookie;
}
