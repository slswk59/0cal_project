package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
//	@RequestMapping(value="/index.do", method=RequestMethod.GET)
//	public String index() {
//		return "redirect:/index.do";
//	}

	//회원가입 폼 불러오기
	@RequestMapping(value="/member/signup.do", method=RequestMethod.GET)
	public ModelAndView addMember(ModelAndView mav) {
		mav.setViewName("member/signup");
		return mav;
	}
	
	//중복체크
	@RequestMapping(value="/member/dupCheck.do", method=RequestMethod.POST)
	@ResponseBody
	public String dupCheck(HttpServletRequest request, HttpSession session) {
		String key   = request.getParameter("key");
		String value = request.getParameter("value");
		
		return memberService.dupCheck(key, value);
	}
		
	//회원가입 처리
	@RequestMapping(value="/member/insertMember.do", method=RequestMethod.GET)
	@ResponseBody
	public String addMember(MemberDTO memberDto, HttpServletRequest request, HttpSession session) {
		
		memberDto.setId(request.getParameter("id"));
		memberDto.setNick_name(request.getParameter("nick_name"));
		memberDto.setUser_pass(request.getParameter("user_pass"));
		memberDto.setUser_name(request.getParameter("user_name"));
		memberDto.setEmail(request.getParameter("email"));
		memberDto.setAddress(request.getParameter("address"));
		memberDto.setPostcode(request.getParameter("postcode"));
		memberDto.setRoadAddress(request.getParameter("roadAddress"));
		memberDto.setJibunAddress(request.getParameter("jibunAddress"));
		memberDto.setDetailAddress(request.getParameter("detailAddress"));
		memberDto.setExtraAddress(request.getParameter("extraAddress"));
		memberDto.setPhone(request.getParameter("phone"));
		memberDto.setGender(request.getParameter("gender"));
		memberDto.setDate_birthday(request.getParameter("date_birthday"));
		
		AuthInfo authInfo = memberService.addMemberProcess(memberDto);
		session.setAttribute("authInfo", authInfo);
		System.out.println(authInfo);
		return "redirect:/index.do";
	}
	
	//로그아웃 처리
	@RequestMapping(value="/member/logout.do", method=RequestMethod.GET)
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
			return "redirect:/index.do";
			
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
	@ResponseBody
	public String updateMember(MemberDTO memberDto, HttpServletRequest request, HttpSession session) {

			memberDto.setId(request.getParameter("id"));
			memberDto.setNick_name(request.getParameter("nick_name"));
			memberDto.setUser_pass(request.getParameter("user_pass"));
			memberDto.setUser_name(request.getParameter("user_name"));
			memberDto.setEmail(request.getParameter("email"));
			memberDto.setPhone(request.getParameter("phone"));
			memberDto.setAddress(request.getParameter("address"));
			memberDto.setPostcode(request.getParameter("postcode"));
			memberDto.setRoadAddress(request.getParameter("roadAddress"));
			memberDto.setJibunAddress(request.getParameter("jibunAddress"));
			memberDto.setDetailAddress(request.getParameter("detailAddress"));
			memberDto.setExtraAddress(request.getParameter("extraAddress"));
			memberDto.setGender(request.getParameter("gender"));
			memberDto.setDate_birthday(request.getParameter("date_birthday"));
			
			AuthInfo authInfo = memberService.updateMemberProcess(memberDto);
			session.setAttribute("authInfo", authInfo);
			System.out.println(authInfo);
			return "redirect:/index.do";
		}
	
	//회원정보삭제 처리
	@RequestMapping(value="/member/delete.do", method=RequestMethod.POST)
	public String deleteMember(MemberDTO memberDTO, HttpSession session) {
		AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
		memberService.deleteMemberProcess(authInfo.getId());
		System.out.println(authInfo.getId());
		session.invalidate();
		return "redirect:/index.do";
	}
	
	@RequestMapping(value="/member/loginCheck.do", method=RequestMethod.GET, produces="application/text; charset=UTF-8")
	@ResponseBody
	public String loginCheck(HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		if(authInfo != null) {
			return authInfo.getUser_name();
		}
		
		return null;
	}
	

}
