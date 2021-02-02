package com.project.cine.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.cine.dtos.FavorDto;

@Repository
public class FavorDao implements IFavorDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "com.project.cine.favor.";
	
	//장르 선호도 구하기
	@Override
	public List<FavorDto> getUserFavor(String id) {
		return sqlSession.selectList(namespace + "getUserFavor", id);
	}
}
