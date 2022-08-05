<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>리뷰 | MY 홈플러스 | 홈플러스</</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
</head>
<body>
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
		<h1>상품리뷰</h1>
		<div>
			<div>작성가능한 리뷰</div>
			<div>내가 쓴 리뷰</div>
		</div>
	</section>
	
	<section class="modal" class="hidden">
		<div>리뷰작성</div>
		<div class="item">
			<div>상품에 만족하셨나요?</div>
			<div>☆☆☆☆☆</div>
		</div>
		<div class="item">
			<div>[상품상태] 상품의 상태는 어떤가요?</div>
			<div>
				<div>아주 좋아요</div>
				<div>보통이에요</div>
				<div>별로에요</div>
			</div>
		</div>
		<div class="item">
			<div>[상품일치여부] 구매한 상품과 받은 상품이 똑같은가요?</div>
			<div>
				<div>똑같아요</div>
				<div>비슷해요</div>
				<div>달라요</div>
			</div>
		</div>
		<div class="item">
			<div>[가격] 상품의 가격은 어떤가요?</div>
			<div>
				<div>만족해요</div>
				<div>보통이에요</div>
				<div>별로에요</div>
			</div>
		</div>
		<div class="item">
			<div>어떤 점이 좋았나요?</div>
			<div>
				<textarea name="content"	
						  rows="30"
						  cols="20"
						  placeholder="자세한 리뷰는 다른 고객님들의 구매에 큰 도움이 됩니다"></textarea>
			</div>
		</div>
		<div class="item">
			<div>사진을 등록해주세요(선택)</div>
			<div>
				<p><input type="file" name="img"></p>
			</div>
		</div>
		<div class="overlay"></div>
	</section>	
</main>
<%@ include file="../footer.jsp" %>