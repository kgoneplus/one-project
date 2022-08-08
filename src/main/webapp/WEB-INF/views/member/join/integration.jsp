<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function insertHandler (event) {
	event.preventDefault()
	
	const ob = {}
	const formData = new FormData(event.target)
	for(key of formData.keys()) {
		ob[key] = formData.get(key)
	}
	const url = '${cpath}/joining/integrationjoining'
	const opt = {
		method: 'POST',
		body: JSON.stringify(ob),
		headers: {
			'Content-Type': 'application/json; charset=utf-8'
		}
	}
	
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		if(text == 1) {
			alert('작성성공')
			location.reload(true)
		}
	})
	
}
</script>
<!-- 확인 체크라인 -->

<!-- 안보였다가보이게 해야함 -->
	<form>
		<div>아이디</div>
		<p><input type="text" name="userid" placeholder="영문,소문자,숫자 6~12자" required ><button type="button">중복확인</button></p>
		<div>비밀번호</div>
		<p><input type="text" name="userpw" placeholder="영문,숫자,특수문자 조합으로 8~20자"  ></p>
		<div>비밀번호 재확인</div>
		<p><input type="text" name="userpw" placeholder="비밀번호재확인" ></p>
		<p><input type="submit" value="확인"></p>
	</form>
	
	<script>
		const insertForm = document.forms[0]
		insertForm.addEventListener('submit', insertHandler)
	</script>
</body>
</html>