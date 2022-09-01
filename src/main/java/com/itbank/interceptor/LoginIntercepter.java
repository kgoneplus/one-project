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
		System.out.println(url);
		
		// cart 세션 아웃시 오류해결 코드
		String urls[] = url.split("%2F");
		System.out.println("url쪼갠길이" + urls.length);
		String realurl = "";
		if(urls.length == 7) {
			if(login == null && url.contains("cart")) {
				realurl = urls[0];
				for(int i = 1; i < urls.length -1; i++) {
					realurl += "%2F"+urls[i];
				}
				realurl += "%2F";
			} else if(login == null && url.contains("mypage")) {
				realurl = urls[0];
				for(int i = 1; i < urls.length -1; i++) {
					realurl += "%2F"+urls[i];
				}
				realurl += "%2F";
			}
		}else {
			realurl += url;
		}
		System.out.println(realurl);
		if(login == null) {
			response.sendRedirect(request.getContextPath() + "/member/login?url=" + realurl);
			return false;	// 로그인이 없으면 일시 정지, 이후 원하는 코드 추가 가능
		}
		
		return true;	// 로그인이 있으면 원래 예정대로 계속 진행
	}

	@Override
	public void postHandle(HttpServletRequest request, 
						   HttpServletResponse response, 
						   Object handler,
						   ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request, 
								HttpServletResponse response, 
								Object handler, 
								Exception ex)
			throws Exception {
	}
}
