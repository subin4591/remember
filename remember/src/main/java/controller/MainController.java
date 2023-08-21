package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	// 독립선언서
	@RequestMapping("/declaration/{day}")
	public String declaration28(@PathVariable("day") String day) {
		return "main/declaration" + day;
	}
}
