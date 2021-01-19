package com.project.cine.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class FavorDao implements IFavorDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "com.project.cine.favor.";
}
