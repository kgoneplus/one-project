package com.itbank.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class RemoconController {

	@GetMapping("/")
	public String homeController(HttpSession session, HttpServletResponse resp) {
		
		String id = (String)session.getAttribute("JSESSIONID");
		Cookie setcookie = new Cookie("recentProduct", id);
		setcookie.setMaxAge(60*60*24);
		resp.addCookie(setcookie);
		return "/home";
	}
}

