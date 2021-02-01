package com.project.cine;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.cine.dtos.MovieDto;
import com.project.cine.service.IMovieService;

@Controller
public class MovieController {

	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);

	@Autowired
	private IMovieService movieService;
	
	@RequestMapping(value = "/getMovies.do", method = RequestMethod.GET)
	public String getMovies(Locale locale, Model model) {
		logger.info("평점 순으로 영화 가져오기", locale);
		
		List<MovieDto> list = movieService.getTopMovies();		//평점 상위 7개 영화 가져오기
		model.addAttribute("list", list);
		
		return "home";
	}
	
	@RequestMapping(value = "/getMovieInfo.do", method = RequestMethod.GET)
	public String getMovieInfo(String m_code, Locale locale, Model model) {
		logger.info("영화정보 가져오기", locale);
		
		MovieDto dto = movieService.getMovieInfo(m_code);
		model.addAttribute("dto", dto);
		
		return "movieInfo";
	}
	
	@RequestMapping(value = "/searchResult.do", method = RequestMethod.GET)
	public String searchResult(String keyword, Locale locale, Model model) {
		logger.info("키워드로 검색하기", locale);
		
		List<MovieDto> list = movieService.getSearchResult(keyword);
		model.addAttribute("list", list);
		
		System.out.println(list);
		
		return "searchResult";
	}
}
