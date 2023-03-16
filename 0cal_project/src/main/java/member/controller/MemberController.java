package member.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.service.MemberService;

// http://localhost:8090/myapp/signup.do
@Controller
public class MemberController {
	
	private MemberService memberService;
	
	public MemberController() {
		
	}
	
	public void setMemberService(MemberService membersService) {
		this.memberService = memberService;
	}
	
		@RequestMapping(value = "/signup.do", method = RequestMethod.GET)
		public String signup() {
			
			return "signup";
		}
		


}
