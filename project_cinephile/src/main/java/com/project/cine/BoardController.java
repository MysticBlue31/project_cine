package com.project.cine;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.cine.dtos.BoardDto;
import com.project.cine.service.BoardService;
import com.project.cine.service.IBoardService;




@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private IBoardService boardService;
	
							//이름은 마음대로 고치면 됨(메서드명도 마찬가지)
//	@RequestMapping(value = "/boardHome.do", method = RequestMethod.GET)
//	public String Boardhome(Locale locale, Model model) {
//		logger.info("", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		
//		return "home";
//	}
//	
	
	@RequestMapping(value = "/board.do", method = RequestMethod.GET)
	public String boardList(HttpServletRequest request,Locale locale, Model model) {
		logger.info("글목록보기 {}.", locale);
		
		HttpSession session=request.getSession();
		session.removeAttribute("readcount");
		
		List<BoardDto> list= boardService.getAllList();
		model.addAttribute("list", list );
		
		System.out.println(list);
		
		
		
		return "board";
	}
	
	@RequestMapping(value = "/insertform.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insertForm(Locale locale, Model model) {
		logger.info("글추가 폼 이동  {}.", locale);
		return "insertboard";
	}
	
	@RequestMapping(value = "/insertboard.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insertBoard(BoardDto dto ,Locale locale, Model model) {
		logger.info("글추가하기 {}.", locale);
		boolean isS=boardService.insertBoard(dto);
		if(isS) {
			return "redirect:board.do";
		}else {
			model.addAttribute("msg", "글추가실패");
			return "error";
		}
	}
	
	@RequestMapping(value = "/detailboard.do", method = RequestMethod.GET)
	public String detailBoard(HttpServletRequest request, int w_seq,Locale locale, Model model) {
		logger.info("글상세보기 {}.", locale);
		BoardDto dto=boardService.getBoard(w_seq);
		model.addAttribute("dto", dto );
		
		HttpSession session=request.getSession();
		
		//session에 "readcount"값이 null이라는 의미는 처음 현재 글을 조회한다는 뜻
		if(session.getAttribute("readcount")==null) {
			boardService.readCount(w_seq);
			session.setAttribute("readcount", w_seq);			
		}
		
		return "detailboard";
	}
	
	@RequestMapping(value = "/replyboard.do", method = RequestMethod.POST)
	public String replyBoard(BoardDto dto ,Locale locale, Model model) {
		logger.info("답글추가하기 {}.", locale);
		boolean isS=boardService.replyBoard(dto);
		if(isS) {
			return "redirect:board.do";
		}else {
			model.addAttribute("msg", "답글추가실패");
			return "error";
		}
	}
	
	@RequestMapping(value = "/updateform.do", method = RequestMethod.GET)
	public String updateForm(int w_seq, Locale locale, Model model) {
		logger.info("글수정폼으로 이동!! {}.", locale);
		
		BoardDto dto=boardService.getBoard(w_seq);
		
		model.addAttribute("dto", dto );
		
		return "updateform";
	}
	
	@RequestMapping(value = "/updateboard.do", method = RequestMethod.POST)
	public String updateBoard(BoardDto dto, Locale locale, Model model) {
		logger.info("글수정하기!! {}.", locale);
		
		boolean isS=boardService.updateBoard(dto);
		if(isS) {
			return "redirect:detailboard.do?w_seq="+dto.getW_seq();
		}else {
			model.addAttribute("msg", "답글추가실패");
			return "error";
		}
	}
}
