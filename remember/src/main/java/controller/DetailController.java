package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DetailController {
	
	@RequestMapping("/detail")
	public String detail(@RequestParam("mng_no") String mng_no) {
		System.out.println(mng_no);
		
		return "detail";
	}
}
