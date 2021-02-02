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

import com.project.cine.dtos.FavorDto;
import com.project.cine.service.IFavorService;

@Controller
public class FavorController {

	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
	
	@Autowired
	private IFavorService favorService;

	@RequestMapping(value = "/getUserFavor.do", method = RequestMethod.GET)
	public String Favorhome(String id, Locale locale, Model model) {
		logger.info("장르 선호도 구하기", locale);
		
		List<FavorDto> list = favorService.getUserFavor(id);
		model.addAttribute("list", list);
		
		return "chart";
	}
}
