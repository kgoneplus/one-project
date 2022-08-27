<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<script src="${cpath }/resources/js/function_member.js"></script>
</head>
<body>
	<h1>아이디 찾기 기능 구현</h1>
	<hr>
	<form method="POST">
		<div>이름</div>
		<input type="text" name="name">
		<div>이메일</div>
		<input type="email" name="email">
		<div><input type="submit" value="이메일로 전송"></div>
	</form>
	
	
	
	
</body>
</html>