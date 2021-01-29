package com.project.cine;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.cine.dtos.LoginDto;
import com.project.cine.dtos.UserDto;
import com.project.cine.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private final UserService userService;
	
	//의존성 주입
	@Inject
	public UserController(UserService userService) {
		this.userService=userService;
	}
	
	//회원가입 페이지
	@RequestMapping(value = "/register", method = RequestMethod.GET) 
	public String registerGet() throws Exception { 
		
		//회원가입단 페이지 만들어지면 주소 수정해야됨
		return "/user/register"; 	
	}
	//회원가입 처리
	@RequestMapping(value = "/register", method = RequestMethod.POST)
		public String registerPost(UserDto userDto, RedirectAttributes redirectAttributes) throws Exception {
		userService.register(userDto);
		redirectAttributes.addFlashAttribute("msg", "REGISTERED");
		
		//로그인단 페이지 만들어지면 주소 수정해야됨
		return "redirect:/user/login";
	}
	//로그인 페이지
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login() throws Exception {
		return "/user/login"; //로그인 jsp 페이지 만들어야됨
	}
	
	//로그인 처리
	@RequestMapping(value="/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDto loginDto, HttpSession httpSession, Model model) throws Exception {
		UserDto userDto = userService.login(loginDto);
		
		return;
		
}
}



	