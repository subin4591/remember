package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.QuotationDTO;
import service.MainService;

@Controller
public class MainController {
	@Autowired
	@Qualifier("mainService")
	MainService service;
	
	@RequestMapping("/main/test")
	public ModelAndView mainTest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/main_test");
		return mv;
	}
	
	@RequestMapping("/main/insertTest")
	public String mainInsertTest(QuotationDTO dto) {
		System.out.println(dto);
		service.insertTest(dto);
		return "redirect:/main/test";
	}
}
