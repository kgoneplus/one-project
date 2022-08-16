<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	header {
		display: flex;
		flex-flow: column;
		text-align: center;
		justify-content: center;
	}
	.joinwrap {
		display: flex;
		flex-flow: column;
		border: 2px dashed;
		width: 500px;
		justify-content: center;
		margin: auto;
	}
	.snsjoin {
		display: flex;
		justify-content: space-around;
	}

	a {
		display: flex;
		justify-content: center;
	}
</style>
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
</head>
<body>
	<header>
		<div class="join_logoimg">
			<img src="${cpath }/resources/img/oneplus.png" width="100px">
		</div>
		<div class="join_title">통합 회원 가입</div>
	</header>
	<div class="joinwrap">
		<div class="join_summay">회원 혜택</div>
		<div class="join_logo">
			<img src="${cpath }/resources/img/joinlogo.png" width="500px">
		</div>
			<a href="${cpath }/member/join/integration"><button type="button" id="integration" >마이홈플러스 회원가입</button></a>
		<div class="snsjoin">
			 <div id="naverIdLogin" style="display:none;"></div><div id="naverlogin"><button type="button">네이버로 회원가입 </button></div>
			<a href="${cpath }/member/join/integration"><button type="button" id="kakao" >카카오로 회원가입</button></a>
			
		</div>
	</div>
	<script>
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