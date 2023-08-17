package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.ListDTO;
import dto.QuotationDTO;
import service.MainService;

@Controller
public class MainController {
	@Autowired
	@Qualifier("mainService")
	MainService service;
	
	// 메인 화면
	@RequestMapping("/")
	public ModelAndView mainPage() {
		// 배너 어록 랜덤 조회
		List<QuotationDTO> randQ = service.randQuotation(5);
		
		// 존경해요 순 독립운동가 조회
		ListDTO dto = new ListDTO();
		dto.calcNum(1, 5);	// page=1, divNum=5
		List<Integer> likeList = service.mainLikeList(dto);
		
		// ModelAndView 생성
		ModelAndView mv = new ModelAndView();
		mv.addObject("randQ", randQ);
		mv.addObject("likeList", likeList);
		mv.setViewName("main/main");
		return mv;
	}
	
	// Test
	@RequestMapping("/main/test")
	public ModelAndView mainTest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/main_test");
		return mv;
	}
	
	@RequestMapping("/main/insertTest")
	public String mainInsertTest(QuotationDTO dto) {
		service.insertTest(dto);
		return "redirect:/main/test";
	}
}
