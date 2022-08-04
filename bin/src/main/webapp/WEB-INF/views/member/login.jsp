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
	<h1>로그인 창 만들기</h1>
	<hr>
	<form>
		<p><input type="text" name="userid" placeholder="아이디" required autofocus></p>
		<p><input type="text" name="userpw" placeholder="비밀번호" required ></p>
		<p><input type="submit" value="로그인">
	</form>
	<ul>
		<li><a href="${cpath }/naverlogin"></a> 네이버로그인</li>
		<li><a href="#">휴대폰로그인</a></li>
	</ul>
	
	<a href="${cpath }/member/join">회원가입</a>
</body>
</html>