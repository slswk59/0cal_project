package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.dto.AuthInfo;
import member.dto.MemberDTO;
import member.service.MemberService;
import member.dto.ChangePwdCommand;


//http://localhost:8090/myapp/member/signup.do

@Controller
public class MemberController {
	private MemberService memberService;
	
	public MemberController() {
	}
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	//홈화면
		@RequestMapping(value="/index.do", method=RequestMethod.GET)
		public String index() {
			return "index";
		}

	//회원가입 폼 불러오기
	@RequestMapping(value="/member/signup.do", method=RequestMethod.GET)
	public ModelAndView addMember(ModelAndView mav) {
		mav.setViewName("member/signup");
		return mav;
	}

	//회원가입 처리
	@RequestMapping(value="/member/signup.do", method=RequestMethod.POST)
	public String addMember(MemberDTO memberDto, HttpSession session) {
		AuthInfo authInfo = memberService.addMemberProcess(memberDto);
		session.setAttribute("authInfo", authInfo);
		System.out.println(authInfo);
		return "redirect:/index.do";
	}
	
	//로그아웃 처리
	@RequestMapping(value="/logout.do")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/index.do";
	}
	
	//로그인 폼
	@RequestMapping(value="/member/login.do", method=RequestMethod.GET)
	public String loginMember() {
		return "member/login";
	}
	
	
	//로그인 처리
	@RequestMapping(value="/member/login.do", method=RequestMethod.POST)
	public String loginMember(MemberDTO memberDTO, HttpSession session, HttpServletResponse resp) {
		try {
			AuthInfo authInfo = memberService.loginProcess(memberDTO);
			session.setAttribute("authInfo", authInfo);
			Cookie rememberCookie = new Cookie("REMEMBER", memberDTO.getId());
			rememberCookie.setPath("/");
			if(memberDTO.isRememberId()) {
				rememberCookie.setMaxAge(60 * 60 * 24 * 30); //60초 *60분 * 24시간 * 30일 = 1개
			}else {
				rememberCookie.setMaxAge(0);
			}
			resp.addCookie(rememberCookie);
			return "redirect:/member/userInfoEdit.do";
		}catch(Exception e) {
			resp.setContentType("text/html;charset=UTF-8");
			
			try {
				PrintWriter out = resp.getWriter();
//				out.print("아이디 비밀번호 불일치");
//				out.print("<script>alert('아이디 비밀번호 불일치'); location.href='login.do';</script>");
				out.print("<script>alert('아이디 비밀번호 불일치'); history.go(-1);</script>");
				out.flush();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return null;
	}
	
	//회원정보 수정 폼
	@RequestMapping(value="/member/userInfoEdit.do", method=RequestMethod.GET)
	public ModelAndView updateMember(ModelAndView mav, HttpSession session) {
		AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
		mav.addObject("memberDTO", memberService.updateMemberProcess(authInfo.getId()));
		mav.setViewName("member/userInfoEdit");
		return mav;
	}
	
	//회원정보 수정 처리
	@RequestMapping(value="/member/userInfoEdit.do", method=RequestMethod.POST)
	public String updateMember(MemberDTO memberDTO, ChangePwdCommand changePass, HttpSession session) {
		AuthInfo authInfo = memberService.updateMemberProcess(memberDTO);
		memberService.updatePassProcess(authInfo.getId(), changePass);
		session.setAttribute("authInfo", authInfo);
		return "redirect:/index.do";
	}
	
	//회원정보삭제 처리
	@RequestMapping(value="/member/delete.do", method=RequestMethod.POST)
	public String deleteMember(MemberDTO memberDTO, HttpSession session) {
		AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
		memberService.deleteMemberProcess(authInfo.getId());
		System.out.println(authInfo.getId());
		return "redirect:/index.do";
	}
	

}
