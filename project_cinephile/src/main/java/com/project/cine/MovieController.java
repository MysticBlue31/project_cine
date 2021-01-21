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
	
	@RequestMapping(value = "/movieHome.do", method = RequestMethod.GET)
	public String Moviehome(Locale locale, Model model) {
		logger.info("", locale);
		
		//쿼리 테스트 용, 나중에 수정 예정
		List<MovieDto> list = movieService.getTopMovies();		//평점 상위 5개 영화 가져오기
		for(int i = 0; i < list.size(); i++)
		{
			System.out.println(list.get(i));
			
			//한줄평 테이블에서 해당 영화코드로 검색 후 나온 영화의 평점들의 평균을 구하기
			//구한 평균평점을 해당 영화정보의 평균평점 컬럼에 입력
			boolean isS = movieService.setAvgRate(list.get(i).getM_code());
			if(isS)
				System.out.println(list.get(i).getM_avgrate());
			else
				System.out.println("실패");
		}
		
		return "home";
	}
	
}
