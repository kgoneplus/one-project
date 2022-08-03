<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<title>원플러스 홈</title>
<link type="text/css" rel="stylesheet"
	href="${cpath }/resources/css/style_main.css">
<script src="${cpath}/resources/js/function_main.js"></script>
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

	<div class="list">

	</div>

	
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
	</script>

	<footer>
		<div class="footer_line">
			<div class="footer_line_left">
				<ul>
					<li><a href="#">회사소개</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">고객의견함</a></li>
					<li><a href="#">입점·제휴문의</a></li>
				</ul>
			</div>
			<div class="footer_line_right">
				<a><img src="${cpath }/resources/img/gps.png"></a> <a href="#">매장찾기</a>
			</div>
		</div>

		<div class="footer_content">
			<div class="footer_content_left">
				<h2>원플러스 주식회사</h2>
				<div class="footer_content_left_item">
					<p>대표이사 : OOO</p>
					<p>주소 : 부산 해운대구 센텀2로 25 센텀드림월드</p>
					<p>사업자등록번호 : 220-81-60348</p>
				</div>
				<div class="footer_content_left_item">
					<p>통신판매신고번호 : 2016-부산해운대-0451호</p>
					<p>주소 : 부산 해운대구 센텀2로 25 센텀드림월드</p>
					<p>청소년보호 책임자: 조혜영</p>
				</div>
				<p>
					사이트 내에는 원플러스(주)에 입점한 개별판매자가 판매하는 상품이 포함되어 있습니다<br> 해당 상품의 경우
					원플러스(주)는 통신판매중개자로서 판매 당사자가 아니며, 상품정보 및 거래 등에 대한 책임을 지지 않습니다.
				</p>
				<div class="footer_content_left_item">
					<p>
						<strong>소비자피해보상보험</strong>
					</p>
				</div>
				<p>고객님은 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 구매안전서비스 소비자 피해보상보험
					서비스를 이용하실 수 있습니다.</p>
				<p>Copyright © Oneplus CO.,LTD. All Rights Reserved.</p>
			</div>
			<div class="footer_content_right">
				<div class="footer_content_right_item">
					<div>
						<h3>고객센터</h3>
						<span>1577-3355</span>
					</div>

					<ul>
						<li>업무시간 : 09시 ~ 22시(명절당일 휴무)</li>
						<li>Email : onlinemart@oneplus.co.kr</li>
					</ul>
				</div>
				<div class="footer_content_right_item">
					<!--                     <div>test -->
					<h3>분쟁처리</h3>
					<span>1577-3355</span>
				</div>
				<ul>

					<li>Email : onlinemart@oneplus.co.kr</li>
				</ul>
			</div>
		</div>
		</div>

	</footer>

</body>
</html>

<%@ include file="footer.jsp"%>

