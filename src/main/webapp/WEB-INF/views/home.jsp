<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<<<<<<< HEAD
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원플러스 홈</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<script>
	const cpath = '${cpath}'
</script>
<script src="${cpath}/resources/js/function_main.js"></script>
</head>
<body>
	 <header>      
        <div class="top">   
            <div class="left">
                <a href="#"><img src="${cpath }/resources/img/oneplus.png" width="160px" height="40px"></a>
            </div>
            
            <div class="input">
                <input type="search" placeholder=" 검색어를 입력하세요" >
            </div>
            
            <div class="right">
                <div><a href="${cpath }/member/login"><img src="${cpath }/resources/img/login.png" width="40px" height="40px"></a></div>
                <div class="member_img">
                     <a href="${cpath }/mypage/mypageMain"><img src="${cpath }/resources/img/member.png" width="40px" height="40px"></a>  
                     <ul> 
                         <li><a href="#">주문/배송조회</a></li>
                         <li><a href="#">고객센터</a></li>
                         <li><a href="#">회원정보</a></li>
                     </ul> 
               	</div>   
                <div><a href="#"><img src="${cpath }/resources/img/cart.png" width="40px" height="40px"></a></div>
            </div>
        </div>
        <nav>
            <ul>
                <li id="cate">
                    <a href="#">≡ 카테고리</a>
                    <div class="allmenu">
                        <div class="left">
                            <ul>
                                <li>
                                    <a href="#">과일</a>
                                    <ul class="allmenu2">
                                        <li>
                                            <ol><a href="#">사과/배</a></ol>
                                            <ol><a href="#">감귤/만감류</a></ol>
                                            <ol><a href="#">토마토</a></ol>
                                            <ol><a href="#">딸기/체리/블루베리</a></ol>
                                            <ol><a href="#">감/홍시/곶감/밤</a></ol>
                                            <ol><a href="#">수박/메론/참외</a></ol>
                                            <ol><a href="#">포도/자두/복숭아</a></ol>
                                            <ol><a href="#">바나나/파인애플</a></ol>
                                            <ol><a href="#">오렌지/자몽/레몬</a></ol>
                                            <ul class="allmenu3">
                                                <li>
                                                    <ol><a href="#">배</a></ol>
                                                    <ol><a href="#">사과</a></ol>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
=======
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
>>>>>>> branch 'master' of https://github.com/kgoneplus/one-project.git


<nav>
	<ul class="main_list">
		<li><a href="#">전체</a></li>
		<li><a href="#">신선식품</a></li>
		<li><a href="#">가공품</a></li>
		<li><a href="#">생활용품</a></li>
		<li><a href="#">냉동식품</a></li>
	</ul>
</nav>
<div class="list">
	<div class="product">
		<div class="productImg">
			<img src="${cpath }/resources/img/체리.jpeg">
		</div>
		<div class="productInfo">
			<div class="productTitle">항공 직속 체리(미국산) 300G(팩)</div>
			<div class="priceWrap">
				<div class="productOrgPrice">
					<strong>12,990</strong>원
				</div>
				<div class="productPrice">
					<span class="countDC">38%</span> <strong>7,990</strong>원
				</div>
				<span class="priceQty">(100G당 2,663.3원)</span>
			</div>
			<div class="productScore">
				<span><img src="${cpath }/resources/img/star3.png"></span> <span>4.3(9건)</span>
				| <span>월 1,180개 구매</span>
			</div>
		</div>
	</div>

	<div class="product">
		<div class="productImg">
			<img src="${cpath }/resources/img/골드키위.jpeg">
		</div>
		<div class="productInfo">
			<div class="productTitle">제스프리 썬 골드키위 8-10입(팩)</div>
			<div class="priceWrap">
				<div class="productOrgPrice">
					<strong>12,990</strong>원
				</div>
				<div class="productPrice">
					<span class="countDC">30%</span> <strong>8,990</strong>원
				</div>
				<span class="priceQty">(1개 당 8,990원)</span>
			</div>
			<div class="productScore">
				<span><img src="${cpath }/resources/img/star3.png"></span> <span>4.7(17,242건)</span>
				| <span>월 24,528개 구매</span>
			</div>
		</div>
	</div>

	<div class="product">
		<div class="productImg">
			<img src="${cpath }/resources/img/호주청정우.jpeg">
		</div>
		<div class="productInfo">
			<div class="productTitle">[호주청정우]곡물먹고 자란 척아이롤 100G/소고기</div>
			<div class="priceWrap">
				<div class="productOrgPrice">
					<strong>3,090</strong>원
				</div>
				<div class="productPrice">
					<span class="countDC">40%</span> <strong>1,850</strong>원
				</div>
				<span class="priceQty">(100G당 1,850원)</span>
			</div>
			<div class="productScore">
				<span><img src="${cpath }/resources/img/star3.png"></span> <span>4.6(23,780건)</span>
				| <span>월 99,999+개 구매</span>
			</div>
		</div>
	</div>

	<div class="product">
		<div class="productImg">
			<img src="${cpath }/resources/img/맥심미니언즈.jpeg">
		</div>
		<div class="productInfo">
			<div class="productTitle">동서 맥심 모카골드믹스 미니언즈 기획팩200T (2400G)
				ㅎㅎㅎㅎㅎ</div>
			<div class="priceWrap">
				<div class="productOrgPrice">
					<strong></strong>
				</div>
				<div class="productPrice">
					<span class="countDC"></span> <strong>24,580</strong>원
				</div>
				<span class="priceQty">(100G당 1,024.2원)</span>
			</div>
			<div class="productScore">
				<span><img src="${cpath }/resources/img/star3.png"></span> <span>4.5(221건)</span>
				| <span>월 1,022개 구매</span>
			</div>
		</div>
	</div>

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
	//window.addEventListener('load', MainloadHandler)
	const toTop = document.getElementById('toTop')
	toTop.addEventListener('click', scrollToTop)
</script>

<%@ include file="footer.jsp"%>