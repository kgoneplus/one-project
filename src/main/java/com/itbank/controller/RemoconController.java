package com.itbank.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RemoconController {

//	@RequestMapping("/createCookie")
//	public String createCookie(HttpServletResponse response) {
//		logger.info("쿠키 생성");
//		Cookie cookie = new Cookie("userid", null);
//		cookie.setDomain("localhost");
//		cookie.setPath("/");
//		cookie.setMaxAge(30*60);
//		cookie.setSecure(true);
//		response.addCookie(cookie);
//		
//		return "redirect:/project";
//		
//	}
}
