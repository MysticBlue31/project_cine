package com.project.cine.daos;


import com.project.cine.dtos.LoginDto;
import com.project.cine.dtos.UserDto;

public interface IUserDao {
	//회원 가입 메서드
	void register(UserDto userDto) throws Exception;
	
	//로그인 처리
	UserDto login(LoginDto loginDto) throws Exception;
}
