<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 이용내역 | MY 홈플러스 | 홈플러스</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
</head>
<body>
<header>      
	<div class="top">   
	    <div class="left">
	        <a href="${cpath }"><img src="${cpath }/resources/img/oneplus.png" width="160px" height="40px"></a>
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
	
	                        <li><a href="#">쌀/잡곡</a></li>
	                        <li><a href="#">채소</a></li>
	                        <li><a href="#">견과</a></li>
	                        <li><a href="#">수산물/건어물</a></li>
	                        <li><a href="#">정육/계란</a></li>
	                    </ul>
	                </div>
	            </div>
	        </li>
	        <li><a href="#">신상품</a></li>
	        <li><a href="#">단독특가</a></li>
	        <li><a href="#">베스트</a></li>
	        <li><a href="#">자주구매</a></li>
	        <li><a href="#">택배배송</a></li>
	    </ul>
	</nav>
</header>

<main>
	<aside>
		<div class=""><a href="${cpath }/mypage/mypageMain">MY 홈플러스</a></div>
		
		<div class="">MY 주문정보
			<ul>
				<li><a href="${cpath }/mypage/orders">주문/배송/조회</a></li>
				<li><a href="${cpath }/mypage/claim">취소/반품/교환 조회</a></li>
			</ul>
		</div>
		
		<div class="">MY 쇼핑혜택
			<ul>
				<li><a href="${cpath }/mypage/coupon">쿠폰</a></li>
				<li><a href="${cpath }/mypage/point">마일리지</a></li>
			</ul>
		</div>
		
		<div class="">MY 쇼핑활동
			<ul>
				<li><a href="${cpath }/mypage/wishlist">나의 찜</a></li>
				<li><a href="${cpath }/mypage/review">상품리뷰</a></li>
				<li><a href="${cpath }/mypage/counsel">1:1 문의 내역</a></li>
				<li><a href="${cpath }/mypage/qna">상품문의</a></li>
			</ul>
		</div>
		
		<div class="">MY 회원정보
			<ul>
				<li><a href="${cpath }/mypage/myinfo">회원 정보 관리</a></li>
				<li><a href="${cpath }/mypage/shipacc">배송 정보 관리</a></li>
				<li><a href="${cpath }/mypage/agree">개인정보이용내역</a></li>
				<li><a href="${cpath }/mypage/withdraw">회원탈퇴</a></li>
			</ul>
		</div>
	</aside>
	
	<section>
		<h1>개인정보 이용내역</h1>
	</section>
</main>

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
	        <a><img src="${cpath }/resources/img/gps.png"></a>
	        <a href="#">매장찾기</a>
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
	            사이트 내에는 원플러스(주)에 입점한 개별판매자가 판매하는 상품이 포함되어 있습니다<br>
	            해당 상품의 경우 원플러스(주)는 통신판매중개자로서 판매 당사자가 아니며, 상품정보 및 거래 등에 대한 책임을 지지 않습니다.
	        </p>
	        <div class="footer_content_left_item">
	            <p><strong>소비자피해보상보험</strong></p>
	        </div>
	        <p>고객님은 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 구매안전서비스 소비자 피해보상보험 서비스를 이용하실 수 있습니다.</p>
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
<!-- 			<div> -->
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