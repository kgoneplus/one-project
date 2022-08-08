<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${cpath }/resources/js/function_member.js"></script>
<style>
 	.join-form{
 		display: flex;
 		justify-content: center;
 		
 	}
 	form {
 		border: 1px solid black;
 		margin: 10px;
 		padding: 10px;
 	}
</style>
</head>
<body>

	<div class="join-form">
		<form>
			<div>아이디</div>
			<p><input type="text" name="userid" placeholder="영문,소문자,숫자 6~12자" required ><button type="button">중복확인</button></p>
			<div>비밀번호</div>
			<p><input type="text" name="userpw" placeholder="영문,숫자,특수문자 조합으로 8~20자"  ></p>
			<div>비밀번호 재확인</div>
			<p><input type="text" name="userpw" placeholder="비밀번호재확인" ></p>
			<p><input type="submit" value="확인"></p>
		</form>
	</div>
	
	<script>
		window.addEventListener('load', memberId)
		const insertForm = document.forms[0]
		insertForm.addEventListener('submit', insertHandler)
	</script>
</body>
</html>