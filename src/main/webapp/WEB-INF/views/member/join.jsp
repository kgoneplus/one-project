<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<hr>
	
	<div><a href="${cpath }/member/join/integrationjoin">마이홈플러스 통합 회원가입</a></div>
	<div>
		<div><a href="${cpath }/member/simplejoin">간편 회원 가입</a></div>
		<div><a href="${cpath }/member/naverjoin">NAVER로 간편가입</a></div>
	</div>
	<div>This is push test code</div>
</body>
</html>