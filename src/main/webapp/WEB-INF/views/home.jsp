<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<title>원플러스 홈</title>
<link type="text/css" rel="stylesheet"
	href="${cpath }/resources/css/style_main.css">
<script src="${cpath}/resources/js/function_header.js"></script>
<script src="${cpath}/resources/js/function_main.js"></script>

</head>
<body>

	<main id="main">
	<div id="overlay"></div>
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
			<li mainlist_productMain_categoryCode="신선식품">신선식품</li>
			<li mainlist_productMain_categoryCode="가공품">가공품</li>
			<li mainlist_productMain_categoryCode="생활용품">생활용품</li>
			<li mainlist_productMain_categoryCode="냉동식품">냉동식품</li>
		</ul>
	</nav>

	<div class="list" offset="0"></div>

	</main>

	<script>
		let unit = 0
		let cnt = 0

		//document.querySelector('.next').onclick = slide
		//document.querySelector('.prev').onclick = slide
		document.querySelector('.next').addEventListener('click', slide)
		document.querySelector('.prev').addEventListener('click', slide)
		setInterval(slide, 2200);
		
		
		const listLiArray = Array.from(document.querySelectorAll('.main_list_nav > ul > li'))		
		const mainoverlay = document.getElementById('main')

  		//mainLoadHandler load로 불러오는 것 수정필요!!!!
		window.addEventListener('load', mainLoadHandler(''))
		listLiArray.forEach(li => li.addEventListener('click', mainSelectLiClick))
		
		mainoverlay.addEventListener('click', closeModal)
		window.addEventListener('scroll', scrollHandler)
	</script>




<%@ include file="footer.jsp"%>

