package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;
import service.DetailService;

@Controller
public class DetailController {
	@Autowired
	DetailService service;
	
	@RequestMapping("/detail")
	public String detail(Model model, @RequestParam("mng_no") int mng_no) {
		int likeCount = service.likeCount(mng_no);

		model.addAttribute("likeCount", likeCount);
		
		return "detail";
	}
	
	@ResponseBody
	@RequestMapping("/like")
	public int inserLike(HttpSession session, int mng_no) {
		int likeCount = 0; 
		
		if(session.getAttribute("user_id") != null) {
			String user_id = session.getAttribute("user_id").toString();
			
			service.insertLike(mng_no, user_id);
			likeCount = service.likeCount(mng_no);
		}
		return likeCount;
	}
	
	
}
