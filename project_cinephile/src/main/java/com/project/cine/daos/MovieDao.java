package com.project.cine.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.cine.dtos.MovieDto;

@Repository
public class MovieDao implements IMovieDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "com.project.cine.movie.";
	
	//평균평점 구하기
	@Override
	public boolean setAvgRate(String m_code) {
		int count = sqlSession.update(namespace + "setAvgRate", m_code);
		return count > 0 ? true : false;
	}

	//평균평점 상위 5개 영화 구하기
	@Override
	public List<MovieDto> getTopMovies() {
		return sqlSession.selectList(namespace + "getTopMovies");
	}

	//영화상세정보 구하기
	@Override
	public MovieDto getMovieInfo(String m_code) {
		return sqlSession.selectOne(namespace + "getMovieInfo", m_code);
	}
	
	//영화 제목 검색
	@Override
	public List<MovieDto> getSearchResult(String keyword) {
		return sqlSession.selectList(namespace + "getSearchResult", keyword);
	}
}
