package com.project.cine.service;

import java.util.List;

import com.project.cine.dtos.MovieDto;

public interface IMovieService {

	//평균평점 구하기
	boolean setAvgRate(String m_code);
	//평균평점 상위 5개 영화 구하기
	List<MovieDto> getTopMovies();
}
