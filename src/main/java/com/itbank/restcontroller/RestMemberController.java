package com.itbank.restcontroller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.DeliveryDTO;
import com.itbank.oneplus.MemberDAO;
import com.itbank.oneplus.MemberDTO;
import com.itbank.service.MailService;
import com.itbank.service.MemberService;

@RestController
public class RestMemberController {
	// https://member.homeplus.co.kr/member-join?useAgent=PC&procSystem=APP01통합가입폼
	// https://member.homeplus.co.kr/member-join-form 통합가입폼
	// https://sso.homeplus.co.kr/refit/register/registerPage 네이버 로그인폼

	@Autowired private MemberService ms;
	@Autowired private MailService mails;
	@Autowired private MemberDAO dao;

	@GetMapping("/joining/memberload")
	public List<MemberDTO> selectMemberList() {
		return ms.selectMemberList();
	}

	// 회원가입 요청, ajax로 받아서 처리
	@PostMapping("/joining/integrationjoining")
	public int insert(@RequestBody MemberDTO dto) {
		return ms.insert(dto);
	}
	// 네이버로 회원가입
	@PostMapping("/joining/naverjoining")
	public int naverinsert(@RequestBody MemberDTO dto) {
		return ms.naverinsert(dto);
	}
	// 카카오 회원가입
	@PostMapping("/joining/kakaojoining")
	public int kakaoinsert(@RequestBody MemberDTO dto) {
		return ms.kakaoinsert(dto);
	}
	
	// 카카오 로그인 확인
	@PostMapping("/kakaoconfirm")
	public int kakaoconfirm(@RequestBody MemberDTO dto,HttpSession session) {
		int row = 0;
		MemberDTO result = ms.kakaoconfirm(dto,session);
		if(result == null) {
			row = 1;
		}else {
			session.setAttribute("kakaologin", result);
		}
		
		
		return row;
	}
	
	// 네이버 로그인
	@PostMapping("/member/login/naverSave")
	public @ResponseBody int naverSave(@RequestParam("email") String email, @RequestParam("name") String name,@RequestParam("phonenum") String phonenum, HttpSession session) {
		int row = 0;
		
		phonenum = phonenum.replace("-", "");
		
		MemberDTO naver = new MemberDTO();
		
		naver.setPhonenum(phonenum);
		naver.setEmail(email);
		naver.setName(name);
		//서비스로 회원인지 아닌지 판별하러감
		MemberDTO naverconfirm = ms.naverconfirm(naver,session);
		// 회원이 맞다면 login 객체 새션에 저장
		if(naverconfirm == null) {
			row = 1;
		}else {
			session.setAttribute("naverlogin", naverconfirm);
		}
		
		
		return row;
	}
	
	// 토큰삭제
	@GetMapping("/remove") 
	@CrossOrigin
	public @ResponseBody int remove(@RequestParam("token") String token, HttpSession session, HttpServletResponse resp)  {
		
		
        
		System.out.println(token);
		String CLIENT_SECRET = "NzQgA5iBxk";
		String CLIENT_ID = "GNv8IH0Irsq3ZxTgn4bE";
		String apiUrl = "https://nid.naver.com/oauth2.0/token?grant_type=delete&client_id="+CLIENT_ID+
		"&client_secret="+CLIENT_SECRET+"&access_token="+token.replaceAll("'", "")+"&service_provider=NAVER";
		String api2url = "http://nid.naver.com/nidlogin.logout"; // 팝업창 i프래임으로 띄워서 로그아웃 구현하는 방법
        String refreshurl = "https://nid.naver.com/oauth2.0/token?grant_type=refresh_token&client_id="+CLIENT_ID+"&client_secret="+CLIENT_SECRET+"&refresh_token="+token.replaceAll("'", "")+"";
        System.out.println(refreshurl);
        
		
		try {
			requestToServer(apiUrl);
			System.out.println("refresh : " +requestToServer(refreshurl));
			requestToServer(api2url);
			session.invalidate();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return 1;
	}
	
	// 서버 url 불러오기
	private String requestToServer(String apiURL) throws IOException {
	    return requestToServer(apiURL, null);
	}
	
	// 서버 url 불러오기
	private String requestToServer(String apiURL, String headerStr) throws IOException {
	    URL url = new URL(apiURL);
	    HttpURLConnection con = (HttpURLConnection)url.openConnection();
	    con.setRequestMethod("GET");
	    if(headerStr != null && !headerStr.equals("") ) {
	      con.setRequestProperty("Authorization", headerStr);
	    }
	    int responseCode = con.getResponseCode();
	    BufferedReader br;
	    
	    if(responseCode == 200) { // 정상 호출
	      br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	    } else {  // 에러 발생
	      br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	    }
	    
	    String inputLine;
	    StringBuffer res = new StringBuffer();
	    while ((inputLine = br.readLine()) != null) {
	      res.append(inputLine);
	    }
	    br.close();
	    if(responseCode==200) {
	    	String new_res=res.toString().replaceAll("&#39;", "");
			 return new_res; 
	    } else {
	      return null;
	    }
	  }
	// 매일 주소 받아서 인증번호 
	@PostMapping(value="mailconfirm", produces="application/json; charset=utf-8")
	public int mailconfirm(@RequestBody HashMap<String, String> param, HttpSession session) throws IOException {
		return mails.sendMailconfirm(param.get("mailadress"), session);
	}
	
	
	@PutMapping(value="/buying/cart/deliveryUpdate")
	public int updatedefaultAddress(@RequestBody HashMap<String, String> param) {
		return ms.updatedefaultAddress(param);
	}
	

}
