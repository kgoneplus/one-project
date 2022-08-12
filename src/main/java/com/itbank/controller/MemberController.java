package com.itbank.controller;

import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public String login(MemberDTO dto, HttpSession session) {
		MemberDTO login = ms.login(dto);
		session.setAttribute("login", login);
		return "redirect:/";
	}
	
	//로그아웃
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:" + request.getHeader("referer");
	}
	
	@GetMapping("/join")
	public void join() {}
	
	// 회원가입 jsp로 이동
	@GetMapping("/join/integration")
	public void integrationjoin() {}
	
	@GetMapping("/join/naver")
	public void naverjoin() {}
	
	@GetMapping("/join/kakao")
	public void kakaojoin() {}
	
	// 로그인
	@GetMapping("/login/naver")
	public String naverlogin() {
		return "member/login/naverln";
	}
	
	@GetMapping("/login/kakao")
	public void kakaologin() {}
	
}
