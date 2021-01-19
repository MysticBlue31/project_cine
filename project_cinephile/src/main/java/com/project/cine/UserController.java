package com.project.cine;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

							//이름은 마음대로 고치면 됨(메서드명도 마찬가지)
	@RequestMapping(value = "/user.do", method = RequestMethod.GET)
	public String Userhome(Locale locale, Model model) {
		logger.info("", locale);

		
		return "home";
	}
	
}
