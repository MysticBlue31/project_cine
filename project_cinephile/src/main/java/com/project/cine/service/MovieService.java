package com.project.cine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.cine.daos.IMovieDao;
import com.project.cine.dtos.MovieDto;

@Service
public class MovieService implements IMovieService {
	
	@Autowired
	private IMovieDao dao;

	@Override
	public boolean setAvgRate(String m_code) {
		return dao.setAvgRate(m_code);
	}

	@Override
	public List<MovieDto> getTopMovies() {
		return dao.getTopMovies();
	}
}
