package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import java.util.ArrayList;

import dto.CommentDTO;
import dto.LikeDTO;
import dto.UserDTO;
import jakarta.servlet.http.HttpServletResponse;
import service.MypageService;

@Controller
public class MypageController {
	@Autowired
	MypageService service;

	@RequestMapping("/header")
	public String logo() {
		return "mypage/mylike";
	}

	// 유저 정보 조회 페이지 출력
	@GetMapping("/myinfo")
	public ModelAndView myInfo(@SessionAttribute(name = "logininfo", required = false) UserDTO dto,
			HttpServletResponse response) {

		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		ModelAndView mv = new ModelAndView();

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

	// 유저 정보 수정 페이지 출력
	@GetMapping("/myinfoedit")
	public ModelAndView myedit(@SessionAttribute(name = "logininfo", required = false) UserDTO dto,
			HttpServletResponse response) {

		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		ModelAndView mv = new ModelAndView();

		if (dto != null) {
			mv.addObject("user", dto);
			mv.setViewName("mypage/myinfoedit");
		} else {
			mv.setViewName("Ylogin");
		}

		return mv;
	}

	/*
	 * // 유저 정보 수정
	 * 
	 * @PostMapping("/myinfoedit") public ModelAndView
	 * myupdate(@SessionAttribute(name = "logininfo", required = false) UserDTO dto,
	 * HttpServletResponse response, String password) {
	 * 
	 * response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	 * // HTTP 1.1. response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	 * response.setDateHeader("Expires", 0); // Proxies.
	 * 
	 * ModelAndView mv = new ModelAndView();
	 * 
	 * if (dto != null) { mv.addObject("user", dto);
	 * 
	 * UserDTO updto = new UserDTO(); updto.setPassword(password);
	 * 
	 * service.userUpdate(updto);
	 * 
	 * mv.setViewName("redirect:/myinfoedit"); } else { mv.setViewName("Ylogin"); }
	 * 
	 * return mv; }
	 */

	// 유저 정보 수정
	@PostMapping("/myinfoedit")
	public String myupdate(@SessionAttribute(name = "logininfo", required = false) UserDTO dto,
			HttpServletResponse response, String password) {

		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		if (dto != null) {
			UserDTO updto = new UserDTO();
			updto.setPassword(password);

			service.userUpdate(updto);

			return "redirect:/myinfoedit";
		} else {
			return "redirect:/Ylogin";
		}
	}

	// 유저 정보 삭제
	@RequestMapping("/myinfodelete")
	public String myDelete(@SessionAttribute(name = "logininfo", required = false) UserDTO dto,
			HttpServletResponse response) {

		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		if (dto != null) {
			service.deleteComment(dto);
			service.deleteLike(dto);
			service.deleteUser(dto);
		}

		return "redirect:/Ylogin";
	}

	// 존경해요 한 글
	@GetMapping("/mylike")
	public ModelAndView mylike(@SessionAttribute(name = "logininfo", required = false) UserDTO dto,
			HttpServletResponse response) {
		
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		ModelAndView mv = new ModelAndView();

		if (dto != null) {
			List<LikeDTO> like = service.getLike(dto.getUser_id());

			List<String> mngNoList = new ArrayList<>();
			for (LikeDTO likeItem : like) {
				mngNoList.add(String.valueOf(likeItem.getMng_no()));
			}

			mv.addObject("user", dto);
			mv.addObject("mngNoList", mngNoList);
			mv.setViewName("mypage/mylike");
		} else {
			mv.setViewName("Ylogin");
		}

		return mv;
	}

	// 작성 댓글
	@GetMapping("/mycomment")
	public ModelAndView mycomment(@SessionAttribute(name = "logininfo", required = false) UserDTO dto,
			HttpServletResponse response) {

		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		ModelAndView mv = new ModelAndView();

		if (dto != null) {
			List<CommentDTO> comment = service.getComment(dto.getUser_id());

			mv.addObject("user", dto);
			mv.addObject("comment", comment);
			mv.setViewName("mypage/mycomment");
		} else {
			mv.setViewName("Ylogin");
		}

		return mv;
	}
}
