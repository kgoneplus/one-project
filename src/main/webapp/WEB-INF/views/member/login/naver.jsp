<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<body>
	<h1>네이버로그인창</h1>
	<hr>
	<script>
	var naverLogin = new naver.LoginWithNaverId({
		clientId: "GNv8IH0Irsq3ZxTgn4bE", // 본인걸로 수정, 띄어쓰기 금지.
		callbackUrl: "http://localhost:8080/project/member/login/naver", // 아무거나 설정
		isPopup: false,
		callbackHandle: true
	});
	naverLogin.init();
	
	console.log(naverLogin)
	window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {

	if (status) {	// 성공한다면
		var email = naverLogin.user.getEmail();
		var name = naverLogin.user.getName();
		var phonenum = naverLogin.user.getMobile();
		var token = naverLogin.accessToken.toString();
		
		var tokensplit = token.split('.');
		token = tokensplit[1]
		console.log(token)
		
		$.ajax({
			type: 'POST',
			url: 'naverSave',
			data: { 'email':email, 'name':name, 'phonenum':phonenum},
			dataType: 'text',
			success: function(row) {
				if(row == 1) {
					console.log('성공')
					const  url = '${cpath}/remove'
					const ob = token
					const opt = {
							method: 'POST',
							body:JSON.stringify(ob),
							headers:{
								'Content-Type': 'application/json; charset=utf-8'
							}
					}
					fetch(url, opt)
					.then(resp => resp.text())
					.then(text => {
						if(text == 1){
							alert('토큰삭제성공')
						}else{
							alert('토큰삭제실패')
						}
					})
// 					location.replace("http://localhost:8080/project") 
				} else if(row == 0) {
					console.log('실패')
					location.replace("http://localhost:8080/project/member/login")
				}
			},
		})
		

	} else {
		alret("네이버 로그인 실패");
		}
	});
});
	
	</script>
</body>
</html>