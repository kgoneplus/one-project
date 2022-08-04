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
		<p><input type="text" name="name" placeholder="이름" required ></p>
		<p><input type="date" name="birth" placeholder="생일" required ></p>
		<p><input type="number" name="ponenum" placeholder="핸드폰번호" required ></p>
		<p><input type="text" name="adress" placeholder="주소" required ></p>
		<p><input type="email" name="email" placeholder="이메일" required ></p>
		<p><input type="submit" value="회원가입"></p>
	</form>
	
	<script>
		const insertForm = document.forms[0]
		insertForm.addEventListener('submit', insertHandler)
	</script>
</body>
</html>