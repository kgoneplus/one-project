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
		display: flex;
		flex-flow: column;
		text-align: center;
		justify-content: center;
	}
	.joinwrap {
		display: flex;
		flex-flow: column;
		border: 2px dashed;
		width: 500px;
		justify-content: center;
		margin: auto;
	}
	.snsjoin {
		display: flex;
		justify-content: space-around;
	}

	a {
		display: flex;
		justify-content: center;
	}
</style>
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
			<a href="${cpath }/member/join/integration"><button type="button" id="integration" >마이홈플러스 회원가입</button></a>
		<div class="snsjoin">
			<a href="${cpath }/member/join/integration"><button type="button" id="naver" >네이버가입</button></a>
			<a href="${cpath }/member/join/integration"><button type="button" id="kakao" >카카오가입</button></a>
			
		</div>
	</div>



		
</body>
</html>