<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기</title>
<script src="${cpath }/resources/js/function_member.js"></script>
<style>
#passSearch_inputform {
	display: none;
}

#password_input {
	display: none;
}
</style>

</head>
<body>
	<h1>비밀번호 찾기 구현</h1>
	<hr>


	<form id="idinput">
		<input id="passId" type="text" placeholder="아이디" name="userid"
			required autofocus> <input type="submit" value="조회">
	</form>

	<div id="passSearch_email"></div>
	<div id="passSearch_inputform">
		<input id="passSearch_input" type="text">
		<button onclick="mailConfirmNumber2()" id="passSearchBtn">인증</button>
	</div>

	<form id="password_input">
		<div>
			<input id="pw" type="password" name="userpw" placeholder="비밀번호">
		</div>
		<div>
			<input id="pwconfirm" type="password" name="userpw" placeholder="비밀번호 재입력">
		</div>
		<div id="ConfirmEmail-Message"></div>
		<div>
			<input id="submitBtn" type="button" value="변경">
		</div>
	</form>

	<script>
		const cpath = '${cpath}'
		const passSearchForm = document.forms[0]
		// passSearch_email
		const emailconfirmMessage = document.getElementById('passSearch_email')
		const passId = document.getElementById('passId')

		// passSearch_input
		const mailconfrimnumber = document.getElementById('passSearch_input')
		const passSearchBtn = document.getElementById('passSearchBtn')
		const passSearch_inputform = document.getElementById('passSearch_inputform')
		
		// 비번 입력관련 변수들
		const password_input = document.forms[1]
		const pw = document.getElementById('pw')
		const ConfirmPW = document.getElementById('ConfirmEmail-Message')
		const submitBtn = document.getElementById('submitBtn')
		
		
		
		// 비밀번호 재확인 함수
		pwconfirm.onblur = function() {
			if (!pwconfirm.value.includes(pw.value)) {
				pwconfirm.classList.add('invalid')
				pw.focus()
				ConfirmPW.innerText = '비밀번호가 다릅니다'
				ConfirmPW.style.color = 'red'
			}
			else{
				submitBtn.type = 'submit'
			}
		}

		pwconfirm.onfocus = function() {
			if (this.classList.contains('invalid')) {
				this.classList.remove('invalid')
				ConfirmPW.innerHTML = ''
			}
		}
		password_input.addEventListener('submit', PasswordInput)
		passSearchForm.addEventListener('submit', passSearch)
		
	</script>


</body>
</html>