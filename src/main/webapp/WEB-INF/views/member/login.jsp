<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${cpath }/resources/css/style_login.css">
</head>
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="${cpath }/resources/js/function_member.js"></script>
	
<body>
	
	 <div class="login_menu">
        <div class="login_center">
            <form method="POST">
                <div class="login_logo">
                    <a href="#"><img src="${cpath }/resources/img/oneplus.png" width="195px" height="50px"></a>
                </div>
                <div class="login_box">
                    <div class="login_login">
                        <input type="text" name="userid" placeholder="아이디"><br>
                        <input type="password" name="userpw" placeholder="비밀번호 (대/소문자구분)"><br>
                    </div>
                <div class="login_find">
                    <div class="login_find_left">
                        <input type="checkbox" name="유지" value="true">아이디저장
                    </div>
                    <div class="login_find_right">
                        <a href="#">아이디찾기</a>
                        <a href="#"> | 비밀번호찾기</a>
                    </div>
                </div>    
                <div class="login_button1">
                 	<a href="#"><button type="submit">로그인</button></a> 
                </div>
                <div class="login_button2">
                    <div class="login_button2_naver">
                        <div id="naverIdLogin" style="display:none;"></div>
 						<a href="#"><button id="naverlogin" type="button">네이버로그인</button></a>
                    </div>
                    <div class="login_button2_kakao" onclick="kakaoLogin();">
                        <a href="javascript:void(0)"><button type="button">카카오로그인</button></a>
                    </div>
                </div>
                <br>
                <div class="login_joinbutton">
                    <a href="${cpath }/member/join"><button type="button">회원가입</button></a>
                </div>
                <div class="login_nologin">
                        <a href="#">비회원 주문하기</a>
                        |
                        <a href="#">비회원 주문조회</a>
                </div>
                </div>
            </form>
        </div>
    </div>
   <script>
   Kakao.init('ae343ff22b21f4712440f6fdd8a76ab6');
   var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "GNv8IH0Irsq3ZxTgn4bE",
	  			// 본인의 Client ID로 수정, 띄어쓰기는 사용하지 마세요.
				callbackUrl: "http://localhost:8080/project/member/login/naver",
	  			// 본인의 callBack url로 수정하세요.
				isPopup: false,
				loginButton: {color: "white", type: 3, height: 60}
	  			// 네이버 로그인버튼 디자인 설정. 한번 바꿔보세요:D
			}
		);
	naverLogin.init();
	
	const naverbtn = document.getElementById('naverlogin')
	naverbtn.addEventListener('click',function(){
	const btnNaverLogin = document.getElementById('naverIdLogin').firstChild;
	btnNaverLogin.click();
	})	
  </script>

  
  
		 
</body>
</html>