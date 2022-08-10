<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<title>원플러스 홈</title>
<link type="text/css" rel="stylesheet"
	href="${cpath }/resources/css/style_main.css">
<script src="${cpath}/resources/js/function_main.js"></script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>

	<main>
	<div class="slider">
		<div class="mainImg_wrap">
			<div class="mainImg"
				style="background-image: url(${cpath}/resources/img/mainImg.jpeg);"></div>
			<div class="mainImg"
				style="background-image: url(${cpath}/resources/img/mainImg2.png);"></div>
			<div class="mainImg"
				style="background-image: url(${cpath}/resources/img/mainImg3.png);"></div>
			<div class="mainImg"
				style="background-image: url(${cpath}/resources/img/mainImg4.jpeg);"></div>
			<div class="mainImg"
				style="background-image: url(${cpath}/resources/img/mainImg5.png);"></div>
		</div>
		<div class="slider_menu">
			<div>
				<img src="${cpath }/resources/img/imgLeft.png" class="prev">
			</div>
			<div>
				<img src="${cpath }/resources/img/imgRight.png" class="next">
			</div>
		</div>
	</div>

	<nav class="main_list_nav">
		<ul>
			<li class="main_list_liselected">전체</li>
			<li mainlist_cate="신선식품">신선식품</li>
			<li mainlist_cate="가공품">가공품</li>
			<li mainlist_cate="생활용품">생활용품</li>
			<li mainlist_cate="냉동식품">냉동식품</li>
		</ul>
	</nav>

	<div class="list" offset="0"></div>


	<div id="remocon">
		<div class="remocon_frame">
			<div class="remocon_miniItem">
				<figure>
					<img src="${cpath }/resources/img/icon_147.png">
					<figcaption>로그인</figcaption>
				</figure>
			</div>
			<div class="remocon_miniItem">
				<figure>
					<img src="${cpath }/resources/img/icon_139.png">
					<figcaption>배송</figcaption>
				</figure>
			</div>
			<div class="remocon_miniItem">
				<figure>
					<img src="${cpath }/resources/img/icon_152.png">
					<figcaption>장바구니</figcaption>
				</figure>
			</div>
			<div class="remocon_miniItem">
				<figure>
					<img src="">
					<figcaption>최근 본 상품</figcaption>
				</figure>
			</div>
			<div class="remocon_miniItem">
				<button id="toTop">TOP</button>
			</div>
		</div>
	</div>
	</main>

	<script>
		let unit = 0
		let cnt = 0

		document.querySelector('.next').onclick = slide
		document.querySelector('.prev').onclick = slide
		// setInterval(slide, 1500); //2.5초
		
		const toTop = document.getElementById('toTop')
		const listLiArray = Array.from(document.querySelectorAll('.main_list_nav > ul > li'))		
		
		window.addEventListener('load', mainLoadHandler(''))
		toTop.addEventListener('click', scrollToTop)
		listLiArray.forEach(li => li.addEventListener('click', mainSelectLiClick))
		
		window.addEventListener('scroll', scrollHandler)
		// 네이버 로그인 구현-----------------------------------------------------------------------
	  	var naver_id_login = new naver_id_login("GNv8IH0Irsq3ZxTgn4bE", "http://localhost:8080/project/member/login/naverlogin");
	  	// 접근 토큰 값 출력
 		alert(naver_id_login.oauthParams.access_token);
	  	console.log(naver_id_login);
	 	// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
	    alert(naver_id_login.getProfileData('email'));
	    alert(naver_id_login.getProfileData('nickname'));
	    alert(naver_id_login.getProfileData('age'));
		}
	</script>


</body>
</html>

<%@ include file="footer.jsp"%>

