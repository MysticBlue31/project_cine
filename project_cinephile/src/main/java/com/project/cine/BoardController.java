package com.project.cine;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.cine.dtos.BoardDto;
import com.project.cine.service.IBoardService;




@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private IBoardService boardService;
	
							//이름은 마음대로 고치면 됨(메서드명도 마찬가지)
	@RequestMapping(value = "/boardHome.do", method = RequestMethod.GET)
	public String Boardhome(Locale locale, Model model) {
		logger.info("", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		
		return "home";
	}
	
	
	

}
