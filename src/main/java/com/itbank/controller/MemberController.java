package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	//창 페이지
	@GetMapping("/login")
	public void login() {}
	
	@GetMapping("/join")
	public void join() {}
	
	// 회원가입
	@GetMapping("/join/integration")
	public void integrationjoin() {}
	
	@GetMapping("/join/naver")
	public void naverjoin() {}
	
	@GetMapping("/join/kakao")
	public void kakaojoin() {}
	
	// 로그인
	@GetMapping("/login/naver")
	public void naverlogin() {}
	
	@GetMapping("/login/integration")
	public void integrationlogin() {}
	
	@GetMapping("/login/kakao")
	public void kakaologin() {}
	
}
