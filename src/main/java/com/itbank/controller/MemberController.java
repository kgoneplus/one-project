package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itbank.oneplus.NaverDTO;

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
