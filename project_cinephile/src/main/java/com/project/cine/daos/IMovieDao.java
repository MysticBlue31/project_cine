package com.project.cine.daos;

import java.util.List;

import com.project.cine.dtos.MovieDto;

public interface IMovieDao {

	//평균평점 구하기
	public boolean setAvgRate(String m_code);
	//평균평점 상위 5개 영화 구하기
	public List<MovieDto> getTopMovies();
	//영화상세정보 구하기
	public MovieDto getMovieInfo(String m_code);
	//영화 제목 검색
	public List<MovieDto> getSearchResult(String keyword);
}
