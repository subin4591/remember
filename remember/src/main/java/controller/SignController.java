package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.SignService;

public class SignController{

	@Autowired
	@Qualifier("SignService")
	SignService Ss;
	
	
	
	//회원가입
	@RequestMapping("/")
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Signup");	
		return mv;
	}
	@RequestMapping("/Signin")
	public ModelAndView signin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Signin");	
		return mv;
	}
	@RequestMapping("/alert")
	public ModelAndView alert() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("alert");	
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
	public int duplieIDcheck(@RequestParam("User_id") String User_id) {
			int cnt=Ss.dupliIDcheck(User_id);
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
	public int duplieFindEmailcheck(@RequestParam("user_id") String user_id,@RequestParam("email") String email) {
			int cnt=Ss.dupliFindEmailcheck(user_id,email);
			return cnt;
	}
	
	
	//비밀번호찾기시 임시비밀번호 변경
		@PostMapping("/Findpwupdate")
		public String Findpwupdate(UserDTO UserDTO) {
			String password = UserDTO.getPassword();
			String hashPassword = hashService.encodeBcrypt(password, HashNum);
			MemberDTO.setPassword(hashPassword);
			Ss.Findpwupdate(UserDTO);
			
			return"/Findpasswordend";
		}
		
	//이메일 구현단
		@Autowired
		JavaMailSender javaMailSender;
		
		@PostMapping("/CheckMail") 
		@ResponseBody  
		//회원가입시 이메일 인증번호 발송
		public String SendMail(String email) {
			Random random=new Random(); 
			String key=""; 
			for(int i =0; i<3;i++) {
				int index=random.nextInt(25)+65; 
				key+=(char)index;
			}
			int numIndex=random.nextInt(99999)+10000; 
			key+=numIndex;
			
			MimeMessage message = javaMailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, "utf-8");
			String mail = "dlsdlqordl@naver.com";
			try {
				helper.setFrom(mail);
				helper.setTo(email);
				
				helper.setSubject("인증번호 입력을 위한 메일 전송");
				helper.setText("[기억하길] 인증번호["+key+"]를 입력해 주세요." ,true);
				javaMailSender.send(message);
				

			} catch (Exception e) {
				e.printStackTrace();
			}
			
	        return key;
		}
		
		@PostMapping("/FindpwSendEmail")
		@ResponseBody
		//비밀번호 찾기시 이메일로 임시 비밀번호 전송
		public String FindSendMail(String email) {
			Random random=new Random(); 
			String key="!@";  

			SimpleMailMessage message = new SimpleMailMessage();
			message.setTo(email); 
			for(int i =0; i<4;i++) {
				int index=random.nextInt(25)+65; 
				key+=(char)index;
			}
			int numIndex=random.nextInt(99999)+10000; 
			key+=numIndex;
			message.setSubject("임시비밀번호을 위한 메일 전송");
			message.setText("[기억하길] 임시비밀번호는: "+key+"입니다.");
			message.setFrom("yob2500@naver.com");
			javaMailSender.send(message);
			
			
	        return key;	
	        }
		*/
	
}
	