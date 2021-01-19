package com.project.cine.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao implements IUserDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "com.project.cine.user.";
}
