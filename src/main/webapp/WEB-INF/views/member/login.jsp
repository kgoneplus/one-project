<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${cpath }/resources/css/style_login.css">
</head>

	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
		
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<body>
	<div class="login_menu">
		<div class="login_center">
			<form>
				<div class="login_logo">
					<a href="#"><img src="${cpath }/resources/img/oneplus.png"
						width="195px" height="50px"></a>
				</div>
				<div class="login_box">
					<div class="login_login">
						<input type="text" name="userid" placeholder="아이디"><br>
						<input type="password" name="userpw" placeholder="비밀번호 (대/소문자구분)"><br>
					</div>
					<div class="login_find">
						<div class="login_find_left">
							<input type="checkbox" name="유지" value="true">아이디저장
						</div>
						<div class="login_find_right">
							<a href="#">아이디찾기</a> <a href="#"> | 비밀번호찾기</a>
						</div>
					</div>
					<div class="login_button1">
						<a href="#"><button type="button">로그인</button></a>
					</div>
					<div class="login_button2">
						<div class="login_button2_naver">
							<%--                         <a href="${cpath }/member/naverlogin"><button type="button">네이버로그인</button></a> --%>
							<div id="naver_id_login"></div>
						</div>
						<div class="login_button2_kakao">
							<a href="#"><button type="button">카카오로그인</button></a>
						</div>
					</div>
					<br>
					<div class="login_joinbutton">
						<a href="${cpath }/member/join"><button type="button">회원가입</button></a>
					</div>
					<div class="login_nologin">
						<a href="#">비회원 주문하기</a> | <a href="#">비회원 주문조회</a>
					</div>
				</div>
			</form>
		</div>

	</div>
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("GNv8IH0Irsq3ZxTgn4bE",
				'http://localhost:8080/project/');
		var state = naver_id_login.getUniqState();
		naver_id_login.setButton("white", 2, 70);
		naver_id_login.setDomain('http://localhost:8080/project/member/login');
		naver_id_login.setState(state);
		naver_id_login.setPopup(false);
		naver_id_login.init_naver_id_login();
		
	</script>
</body>
</html>