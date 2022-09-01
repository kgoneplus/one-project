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
		margin-top: 200px;
		display: flex;
		flex-flow: column;
		text-align: center;
		justify-content: center;
	}
	.joinwrap {
		display: flex;
		flex-flow: column;
		width: 500px;
		justify-content: center;
		margin: auto;
	}
	.join_title{
		font-size: 25px;
		font-weight: bold;
		margin: 10px;
	}
	.join_summay{
		font-size: 18px;
		font-weight: bold;
		margin: 5px;
	}
	.snsjoin {
		display: flex;
		justify-content: space-around;
	}

	a {
		display: flex;
		justify-content: center;
		text-decoration: none;
	}
	button {
		cursor: pointer;
	}
	#integration{
		width: 490px;
		height: 50px;
		margin: 5px;
		background-color: #C6000F;
		font-size: 19px;
		color: white;
		font-weight: bold;
		border-color:#C6000F;
		border: 1px solid;
   		border-radius: 6px;
	}
	#naverbtn, #kakaobtn {
		width: 240px;
		height: 50px;
		margin: 5px;
		background-color: white;
		font-size: 17px;
		font-weight: bold;
		border: 1px solid;
    	border-radius: 6px;
	}
	#kakaobtn {
		border-color: #fac800;
	}
	#naverbtn {
		border-color: #06c755;
	}
</style>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script src="${cpath }/resources/js/function_member.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
			<a href="${cpath }/member/join/integration" ><button type="button" id="integration" >마이홈플러스 회원가입</button></a>
		<div class="snsjoin">
			 <div id="naverIdLogin" style="display:none;"></div><div id="naverlogin"><button id="naverbtn" type="button">네이버로 회원가입 </button></div>
			<a href="javascript:void(0)" ><button onclick="kakaoLogin()" type="button" id="kakaobtn" >카카오로 회원가입</button></a>
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
	
// 카카오로부터 데이터 받기
function kakaoLogin() {
	  Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  kakaomap(response)
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	  }

// 받은데이터 매핑
function kakaomap(res){
		const kakaouser = res.kakao_account
	  	const kakaouser_map = {
	  			'name':kakaouser.profile.nickname,
	  			'email':kakaouser.email
	  	}
		kakaoconfirm(kakaouser_map)
}

// 매핑받은 데이터 로그인 하기
function kakaoconfirm(data){
	 const url = '${cpath}/kakaoconfirm'
	 const opt = {
		 method:'POST',
		 body: JSON.stringify(data),
		 headers:{
			'Content-Type' : 'application/json; charset=utf-8'
		 }
	 }
	 fetch(url, opt)
	 .then(resp => resp.text())
	 .then(text =>{
		 if(text == 1){
			 console.log('로그인 성공')
			  kakaoLogout()
			 location.replace("http://localhost:8080/project")
			
		 }else{
			 console.log('실패')
			 location.replace("http://localhost:8080/project/member/login/kakao")
		 }
	 })
}
</script>		
</body>
</html>