package com.project.cine.daos;

import com.project.cine.dtos.UserDto;

public interface IUserDao {
	//회원 가입 메서드
	void register(UserDto userDto) throws Exception;
	
}
