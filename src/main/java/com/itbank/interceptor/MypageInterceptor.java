package com.itbank.interceptor;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.itbank.oneplus.MemberDTO;

public class MypageInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
							 HttpServletResponse response, 
							 Object handler) throws Exception {
		
		MemberDTO login = (MemberDTO)request.getSession().getAttribute("login");
		String url = request.getRequestURL().toString();
		
		if(login == null) {
			response.sendRedirect(request.getContextPath() + 
								  "/member/login?url=" + 
								  URLEncoder.encode(url, "utf-8"));
			return false;
		}
		return true;
	}
	
}
