package com.project.cine.service;
import com.project.cine.dtos.UserDto;

public interface IUserService {
	//회원 가입 메서드
	void register(UserDto userDto) throws Exception;
}
