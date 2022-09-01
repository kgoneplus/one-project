<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="${cpath }/resources/js/function_member.js"></script>
<script	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link type="text/css" rel="stylesheet"
	  href="${cpath }/resources/css/style_joinform.css">
</head>


<body>
	<div class="join-form">
	<div><img src="${cpath }/resources/img/oneplus.png" width="200px" height="50px"></div>
		<form>
			<div>아이디</div>
			<input id="idtext" type="text" name="userid"
				placeholder="영문,소문자,숫자 6~12자" required>
			<button id="idconfirm" type="button">중복확인</button>
			<div id="ConfirmID-Message" confirm="false"></div>
			
			<div>비밀번호</div>
			<input id="pw" type="password" name="userpw"
				placeholder="영문,숫자,특수문자 조합으로 8~20자" required>
				
			<div>비밀번호 재확인</div>
			<input id="pwconfirm" type="password" name="userpw"
				placeholder="똑같이 입력해 주세요" required>
			<div id="ConfirmPW-Message"></div>
			
			<div>이름</div>
			<input  id="namevalue" type="text" name="name" placeholder="이름" value="">
				
				
			
			<div>성별</div>
			<select name="gender">
				<option>남</option>
				<option>여</option>
			</select>
			
			<div>생년월일</div>
			<input type="date" name="birth" required>
			
			<div>핸드폰번호</div>
			<input id="phonenumvalue" type="text" name="phonenum" value="" placeholder="ex)01012341234" >

				
			<div>이메일</div>
			<input id="mailadress" type="email" name="email" value="" placeholder="kkj1234@naver.com">

			<button id="mailconfirmBtn">인증번호 요청</button>
			<div><input id="confirmnumber" type="password" name="emailconfirm" placeholder="인증번호4자리입력">
			<input type="button" onclick="mailConfirmNumber()" value="인증"></div>
			<div id="ConfirmEmail-Message"></div>
			
			<div>주소</div>
			<input type="text" name="addr_number" id="sample6_postcode" placeholder="우편번호" required>
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" required><br>

			<input type="text" name="addr_juso" id="sample6_address" placeholder="주소" required><br>
			<input type="text" name="addr_detail" id="sample6_detailAddress" placeholder="상세주소" required>
			<input type="text" name="addr_Reference" id="sample6_extraAddress" placeholder="참고항목" required>

			<p><input type="submit" value="회원 가입"></p>
		</form>
	</div>
	<script>
	const naverLogin = new naver.LoginWithNaverId({
		clientId: "GNv8IH0Irsq3ZxTgn4bE", // 본인걸로 수정, 띄어쓰기 금지.
		callbackUrl: "http://localhost:8080/project/member/login/naver", // 아무거나 설정
		isPopup: false,
		callbackHandle: true
	});
	naverLogin.init();
	
		
	
	
	
		const cpath = '${cpath}'
		const idconfirm = document.getElementById('idconfirm')			// 아이디 중복확인 버튼
		const insertForm = document.forms[0]
		const pw = document.getElementById('pw')						// 비밀번호
		const pwconfirm = document.getElementById('pwconfirm')			// 비밀번호 재확인
		const ConfirmPW = document.getElementById('ConfirmPW-Message')	// 비밀번호 재확인 메세지
		const emailconfirmMessage = document.getElementById('ConfirmEmail-Message')		// 컨펌 매세지 띄우기
		const mailconfrimnumber = document.getElementById('confirmnumber')
		const mailconfirmBtn = document.getElementById('mailconfirmBtn')
		
		window.addEventListener('load', naverloginhandler )
		console.log(naverLogin)
		let email = sessionStorage.getItem("email")
		let name = sessionStorage.getItem("name")
		let phonenum = sessionStorage.getItem("phonenum")
		
		
		// 비밀번호 재확인 함수
		pwconfirm.onblur = function() {
			if (!pwconfirm.value.includes(pw.value)) {
				pwconfirm.classList.add('invalid')
				pw.focus()
				ConfirmPW.innerText = '비밀번호가 다릅니다'
				ConfirmPW.style.color = 'red'
			}
		};

		pwconfirm.onfocus = function() {
			if (this.classList.contains('invalid')) {
				this.classList.remove('invalid')
				ConfirmPW.innerHTML = ''
			}
		};
		
		mailconfirmBtn.addEventListener('click', mailconfirm)
		idconfirm.addEventListener('click', memberId)
		insertForm.addEventListener('submit', naverinsertHandler)
	</script>
</body>
</html>