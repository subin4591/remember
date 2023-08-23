package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dto.CommentDTO;
import jakarta.servlet.http.HttpSession;
import service.DetailService;

@Controller
public class DetailController {
	@Autowired
	DetailService service;

	@RequestMapping("/detail")
	public String detail(Model model, HttpSession session, @RequestParam("mng_no") int mng_no) {
		List<String> list = service.likeCount(mng_no);
		int likeCount = 0;
		
		for(String i : list) {
			likeCount += Integer.parseInt(i);
		}

		model.addAttribute("likeCount", likeCount);
		session.setAttribute("user_id", "42d13620-3c0a-11ee-a984-54cd08bea1ea");
		return "detail";
	}

	@ResponseBody
	@RequestMapping("/api/like")
	public int inserLike(HttpSession session, int mng_no) {
		List<String> list = service.likeCount(mng_no);
		int likeCount = 0;
		
		if (session.getAttribute("user_id") != null) {
			String user_id = session.getAttribute("user_id").toString();
			int check = service.selectLike(mng_no, user_id);

			if (check == 1) {
				service.updateLike(mng_no, user_id);
			} else {
				service.insertLike(mng_no, user_id);
			}

			list = service.likeCount(mng_no);
		}

		for(String i : list) {
			likeCount += Integer.parseInt(i);
		}
		
		return likeCount;

	}

	@ResponseBody
	@RequestMapping("/api/commentList")
	public List<CommentDTO> listComment(int mng_no, int page) {
		int pages = (page - 1) * 5;

		List<CommentDTO> commentList = service.selectComment(mng_no, pages);

		return commentList;
	}

	@ResponseBody
	@RequestMapping("/api/comment")
	public void insertComment(HttpSession session, @RequestParam("mng_no") int mng_no, String contents) {
		if (session.getAttribute("user_id") != null & contents != null) {
			String user_id = session.getAttribute("user_id").toString();

			service.insertComment(mng_no, user_id, contents);
		}
	}

	@ResponseBody
	@RequestMapping("/api/updateComment")
	public void UpdateComment(HttpSession session, String comment_id, String contents) {
		if (session.getAttribute("user_id") != null & contents != null) {
			service.updateComment(contents, comment_id);
		}
	}

	@ResponseBody
	@RequestMapping("/api/deleteComment")
	public void deleteComment(Model model, HttpSession session, String comment_id) {
		if (session.getAttribute("user_id") != null) {
			service.deleteComment(comment_id);
		}
	}

}
