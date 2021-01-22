package com.project.cine.daos;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.cine.dtos.UserDto;

@Repository
public class UserDao implements IUserDao {

	private static final String NAMESPACE="com.project.cine.user";
	
	private final SqlSession sqlSession;
	
	//의존성 주입
	@Inject
	public UserDao(SqlSession sqlSession) {
		this.sqlSession=sqlSession;
	}
	
	//회원 가입 처리
	@Override
	public void register(UserDto userDto) throws Exception {
		sqlSession.insert(NAMESPACE+".register",userDto);
		
	}

	
	
	
}
