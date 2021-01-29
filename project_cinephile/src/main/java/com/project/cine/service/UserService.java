package com.project.cine.service;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.cine.daos.UserDao;
import com.project.cine.dtos.LoginDto;
import com.project.cine.dtos.UserDto;

@Service
public class UserService implements IUserService {
	
	private final UserDao userDao;
	
	@Inject
	public UserService(UserDao userDao) {
		this.userDao=userDao;
	}

	//회원 가입 처리
	@Override
	public void register(UserDto userDto) throws Exception {
		userDao.register(userDto);
		
	}
	//로그인 처리
	@Override
	public UserDto login(LoginDto loginDto) throws Exception {
		return userDao.login(loginDto);
	}
	
	
}

