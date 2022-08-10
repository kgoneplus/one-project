package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@GetMapping("/login")
	public void login() {}
	
	@GetMapping("/join")
	public void join() {}
	
	@GetMapping("/join/integrationjoin")
	public void integrationjoin() {}
	
	@GetMapping("/login/naverlogin")
	public void loginnaverlogin(HttpSession session) {}
	
	
	
}
