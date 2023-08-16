package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import dto.UserDTO;
import service.MypageService;

@Controller
public class MypageController {
	@Autowired
	MypageService service;

	// 유저 정보 조회
	@GetMapping("/myinfo")
	public ModelAndView myInfo(@SessionAttribute(name = "logininfo", required = false) UserDTO dto) {

		ModelAndView mv = new ModelAndView();
		mv.addObject("loginUser", dto);

		if (dto != null) {
			UserDTO user = service.getUser(dto.getUser_id());
			dto.setPassword(user.getPassword());

			mv.addObject("user", dto);
			mv.setViewName("mypage/myinfo");
		} else {
			mv.setViewName("Ylogin");
		}
		return mv;
	}
}
