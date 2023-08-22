package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dto.ListDTO;
import service.ListService;

@Controller
public class ListController {
	@Autowired
	@Qualifier("listService")
	ListService service;
	
	// 페이지 당 목록 개수
	int divNum = 12;
	
	// 목록 화면
	@RequestMapping("/list")
	public ModelAndView listPage(@RequestParam(value="type", defaultValue="month") String type) {
		// ModelAndView 생성
		ModelAndView mv = new ModelAndView();
		mv.addObject("type", type);
		mv.setViewName("list/list");
		return mv;
	}
	
	// DB 조회
	@RequestMapping("/list/DB")
	@ResponseBody
	public ArrayList<ListDTO> listDB(@RequestParam("mngNoList[]") ArrayList<Integer> mngNoList) {
		// ArrayList 생성
		ArrayList<ListDTO> list = new ArrayList<>();
		
		// ListDTO 생성
		for (int i = 0; i < mngNoList.size(); i++) {
			int mngNo = mngNoList.get(i);
			
			ListDTO dto = new ListDTO();
			dto.setMng_no(mngNo);
			dto.setLike(service.getListLike(mngNo));
			dto.setComment(service.getListComment(mngNo));
			list.add(dto);
		}
		
		return list;
	}
	
	// 정렬 DB 조회
	@RequestMapping("/list/DB/sort")
	@ResponseBody
	public HashMap<String, Object> listDBSort(String sort, int page, int divNum) {
		// ListDTO 생성
		ListDTO dto = new ListDTO();
		dto.setSort(sort);
		dto.calcNum(page, divNum);
		
		// 목록 및 총 개수
		List<Integer> list = service.sortList(dto);
		int cnt = service.sortListCount(dto);
		
		// HashMap 생성
		HashMap<String, Object> map = new HashMap<>();
		map.put("cnt", cnt);
		map.put("list", list);
		
		return map;
	}
	
	// 검색 화면
	@RequestMapping("/search")
	public ModelAndView searchPost(String searchInput) {
		// ModelAndView 생성
		ModelAndView mv = new ModelAndView();
		
		// 파라미터가 없음
		if (searchInput == null) {
			mv.setViewName("list/error");
		}
		
		// 검색어가 없음
		else if (searchInput.equals("")) {
			mv.setViewName("list/error");
		}
		
		// 정상 검색
		else {
			mv.setViewName("list/search");
		}
		
		return mv;
	}
}
