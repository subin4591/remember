package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dto.UserDTO;
import service.YloginService;

public class YloginController{

	@Autowired
	@Qualifier("YloginService")
	YloginService Ss;
	
	
	
	//회원가입
	@RequestMapping("/Signup")
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Signup");	
		return mv;
	}
	
	/*
	@PostMapping("/signup")
	public String signup(UserDTO UserDTO) {
		
		String password = UserDTO.getPassword();
		String hashPassword = hashService.encodeBcrypt(password, HashNum);
		UserDTO.setPassword(hashPassword);
		if(Ss.insertMember(UserDTO)>0) {
			return "redirect:/Signin";
		}
		else return "Signup";
	}
	
	//회원가입시 중복체크
	@PostMapping("/dupliIDCheck")
	@ResponseBody
	public int duplieIDcheck(@RequestParam("member_id") String member_id) {
			int cnt=Ss.dupliIDcheck(member_id);
			return cnt;
	}
	
	@PostMapping("/dupliEmailCheck")
	@ResponseBody
	public int duplieEmailcheck(@RequestParam("email") String email) {
			int cnt=Ss.dupliEmailcheck(email);
			return cnt;
	}
	//비밀번호찾기시 id와 이메일 대조 
	@PostMapping("/dupliFindEmailCheck")
	@ResponseBody
	public int duplieFindEmailcheck(@RequestParam("member_id") String member_id,@RequestParam("email") String email) {
			int cnt=Ss.dupliFindEmailcheck(member_id,email);
			return cnt;
	}
	*/
}
	