package com.itbank.interceptor;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.itbank.oneplus.MemberDTO;

public class LoginIntercepter extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
							 HttpServletResponse response, 
							 Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();					// 세션을 가져옴
		MemberDTO login = (MemberDTO) session.getAttribute("login");		// 세션에 로그인을 가져옴
		String url = null;
		url = request.getRequestURL().toString();					// 요청 URL을 가져와서 스트링으로 변환
		url = URLEncoder.encode(url, "utf-8"); 						// 특수기호때문에 urlEncoding 처리함
		
		if(login == null) {
			System.out.println("preHandle (false)");
			System.out.println("인터셉터에 의해 로그인 페이지로 이동합니다");
			System.out.println("로그인 이후 이동할 주소 : " + url);
			response.sendRedirect(request.getContextPath() + "/member/login?url=" + url);
			return false;	// 로그인이 없으면 일시 정지, 이후 원하는 코드 추가 가능
		}
		
		System.out.println("preHandle (true)");
		return true;	// 로그인이 있으면 원래 예정대로 계속 진행
	}

	@Override
	public void postHandle(HttpServletRequest request, 
						   HttpServletResponse response, 
						   Object handler,
						   ModelAndView modelAndView) throws Exception {
		System.out.println("postHandle");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, 
								HttpServletResponse response, 
								Object handler, 
								Exception ex)
			throws Exception {
		System.out.println("afterCompletion");
	}
}
