package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.ListService;

@Controller
public class ListController {
	@Autowired
	@Qualifier("listService")
	ListService service;
	
	int divNum = 10;
	
	// 목록 화면
	@RequestMapping("/list")
	public ModelAndView listPage(@RequestParam(value="type", defaultValue="month") String type) {
		
		// ModelAndView 생성
		ModelAndView mv = new ModelAndView();
		mv.addObject("type", type);
		mv.setViewName("list/list");
		return mv;
	}
}
