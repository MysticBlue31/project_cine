package com.project.cine.service;

import java.util.Map;

import com.project.cine.dtos.UserDto;

public interface IUserService {
	public UserDto login(Map loginMap) throws Exception;
	public void addMember(UserDto memberVO) throws Exception;
	public String overlapped(String id) throws Exception;
}
