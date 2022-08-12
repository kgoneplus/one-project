package com.itbank.restcontroller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.MemberDAO;
import com.itbank.oneplus.MemberDTO;
import com.itbank.service.MemberService;

@RestController
public class RestMemberController {
	// https://member.homeplus.co.kr/member-join?useAgent=PC&procSystem=APP01통합가입폼
	// https://member.homeplus.co.kr/member-join-form 통합가입폼
	// https://sso.homeplus.co.kr/refit/register/registerPage 네이버 로그인폼

	@Autowired
	private MemberService ms;
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
		MemberDTO naverconfirm = ms.naverconfirm(naver);
		
		// 회원이 맞다면 login 객체 새션에 저장
		if(naverconfirm != null) {
			session.setAttribute("login", naverconfirm);
			row = 1;
		}
		
		
		return row;
	}
	@PostMapping("/remove") //token = access_token임
	@CrossOrigin
	public int remove(@RequestParam("token") String token, Model model)  {
		
		String CLIENT_SECRET = "GNv8IH0Irsq3ZxTgn4bE";
		String CLIENT_ID = "NzQgA5iBxk";
		String apiUrl = "https://nid.naver.com/oauth2.0/token?grant_type=delete&client_id="+CLIENT_ID+
		"&client_secret="+CLIENT_SECRET+"&access_token="+token.replaceAll("'", "")+"&service_provider=NAVER";
		System.out.println(apiUrl);
		try {
			String res = requestToServer(apiUrl);
			model.addAttribute("res", res); //결과값 찍어주는용
		} catch (IOException e) {
			// TODO Auto-generated catch block
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
	    System.out.println("header Str: " + headerStr);
	    if(headerStr != null && !headerStr.equals("") ) {
	      con.setRequestProperty("Authorization", headerStr);
	    }
	    int responseCode = con.getResponseCode();
	    BufferedReader br;
	    
	    System.out.println("responseCode="+responseCode);
	    
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
	
	
//	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException{
//	    /* Callback으로 전달받은 세선검증용 난수값과 세션에 저장되어있는 값이 일치하는지 확인 */
//	    String sessionState = getSession(session);
//	    log.info("sessionState 있나?"+sessionState);
//	    log.info("state 있나?"+state);
//	        if(StringUtils.pathEquals(sessionState, state)){
//	            OAuth20Service oauthService = new ServiceBuilder()
//				.apiKey(CLIENT_ID)
//	            .apiSecret(CLIENT_SECRET)
//	            .callback(REDIRECT_URI)
//	            .state(state)
//	            .build(NaverLoginApi.instance());
//	            /* Scribe에서 제공하는 AccessToken 획득 기능으로 네아로 Access Token을 획득 */
//	            OAuth2AccessToken accessToken =oauthService.getAccessToken(code);
//					return accessToken;  
//	        }
//	        return null;
//	    }

}
