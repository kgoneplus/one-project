package com.itbank.controller;

import javax.servlet.http.HttpSession;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.oneplus.MemberDTO;
import com.itbank.service.MemberService;


@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired private MemberService ms;
	
	//창 페이지
	@GetMapping("/login")
	public void login() {}
	
	//로그인
	@PostMapping("/login")
	public String login(MemberDTO dto, HttpSession session, HttpServletResponse resp) {
		MemberDTO login = ms.login(dto);
		session.setAttribute("login", login);
		
		System.out.println(dto.getUserid_remember());
		System.out.println("==========================");
		
//		Cookie userid = new Cookie("userid", dto.getUserid());
//		userid.setMaxAge(60*60*24*30);
//		resp.addCookie(userid);
//		session.setAttribute("userid", userid.getValue());
		if(dto.getUserid_remember() != null) {
			Cookie userid = new Cookie("userid", dto.getUserid());
			userid.setMaxAge(60*60*24*30);
			resp.addCookie(userid);
			session.setAttribute("userid", userid.getValue());
			
		}else {
			Cookie userid = new Cookie("userid", dto.getUserid());
			userid.setMaxAge(0);
			resp.addCookie(userid);
			session.removeAttribute("userid");
		}
		
		
		return "redirect:/";
	}
	//로그아웃
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse resp) {
		request.getSession().removeAttribute("login");
		request.getSession().removeAttribute("naverlogin");
		request.getSession().removeAttribute("kakaologin");
		return "redirect:" + request.getHeader("referer");
	}
	
	// 회원가입 창
	@GetMapping("/join")
	public void join() {}
	
	// 회원가입 jsp로 이동
	@GetMapping("/join/integration")
	public void integrationjoin() {}
	
	// sns/로그인/회원가입
	@GetMapping("/login/naver")
	public void naverlogin() {}
	
	@GetMapping("/login/kakao")
	public void kakaologin() {}
	
	// 아이디 찾기
	@GetMapping("/login/idsearch")
	public void idserach() {}
	
	@PostMapping("/login/idsearch")
	public String idsearch(MemberDTO dto) throws AddressException, IOException, MessagingException {
		ms.idsearch(dto);
		return "redirect:/member/login";
	}
	
}
