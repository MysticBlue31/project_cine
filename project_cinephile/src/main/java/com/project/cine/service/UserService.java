package com.project.cine.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.cine.daos.UserDao;

@Service("userService")
public class UserService implements IMovieService {
	@Autowired
	private UserDao userDao;
	
}