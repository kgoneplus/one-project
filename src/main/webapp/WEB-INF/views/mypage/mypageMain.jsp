<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>MY 홈플러스 | 홈플러스</title>
<script src="${cpath}/resources/js/function_mypage.js"></script>
<link type="text/css" rel="stylesheet"
	href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet"
	href="${cpath }/resources/css/style_mypage.css">
</head>
<body>
	<main>
	<div class="mypagewrapper">
		<aside>
			<h2>
				<a href="${cpath }/mypage/mypageMain">MY 홈플러스</a>
			</h2>

			<div class="mypageLeftWrapper">
				<h3>MY 주문정보</h3>
				<ul>
					<li><a href="${cpath }/mypage/orders">주문/배송/조회</a></li>
					<li><a href="${cpath }/mypage/claim">취소/반품/교환 조회</a></li>
				</ul>
			</div>

			<div class="mypageLeftWrapper">
				<h3>MY 쇼핑혜택</h3>
				<ul>
					<li><a href="${cpath }/mypage/coupon">쿠폰</a></li>
					<li><a href="${cpath }/mypage/point">마일리지</a></li>
				</ul>
			</div>

			<div class="mypageLeftWrapper">
				<h3>MY 쇼핑활동</h3>
				<ul>
					<li><a href="${cpath }/mypage/wishlist">나의 찜</a></li>
					<li><a href="${cpath }/mypage/review">상품리뷰</a></li>
					<li><a href="${cpath }/mypage/counsel">1:1 문의 내역</a></li>
				</ul>
			</div>

			<div class="mypageLeftWrapper">
				<h3>MY 회원정보</h3>
				<ul>
					<li><a href="${cpath }/mypage/myinfo/${login.idx}">회원 정보
							관리</a></li>
					<li><a href="${cpath }/mypage/shipacc">배송 정보 관리</a></li>
					<li><a href="${cpath }/mypage/agree">개인정보이용내역</a></li>
					<li><a href="${cpath }/mypage/withdraw">회원탈퇴</a></li>
				</ul>
			</div>
		</aside>

		<section>
			<div class="userBaseInfo">
				<div class="userBaseInfo_name" member_idx="${login.idx }">
					<p>${login.name }</p>
					님
					<p>안녕하세요</p>
				</div>
				<div class="userBaseInfo_coupon">
					<ul>
						<li><em>쿠폰</em>
							<div class="couponCnt">
								<a href="${cpath}/mypage/coupon">0</a> 장
							</div></li>
						<li><em>마일리지</em>
							<div class="couponCnt">
								<a href="${cpath}/mypage/point">0</a> p
							</div></li>
					</ul>
				</div>
			</div>

			<div class="userTimelineBox">
				<div class="mypageTitleBox">
					<div class="titleArea">
						<h2>MY 주문정보</h2>
						<p>(최근 15일 기준)</p>
					</div>
					<div class="rightArea">
						<a href="${cpath}/mypage/orders">전체보기 ></a>
					</div>
				</div>
				<div class="orderSummaryBox">
					<ul>
						<li><em>결제완료</em>
							<div class="orderStatus">
								<a href="${cpath}/mypage/orders">0</a>
							</div></li>
						<li><em>상품준비중</em>
							<div class="orderStatus blue">
								<a href="${cpath}/mypage/orders">0</a>
							</div></li>
						<li><em>배송중</em>
							<div class="orderStatus red">
								<a href="${cpath}/mypage/orders">0</a>
							</div></li>
						<li><em>배송완료</em>
							<div class="orderStatus">
								<a href="${cpath}/mypage/orders">0</a>
							</div></li>
						<li><em>취소/반품/교환</em>
							<div class="orderStatus grey">
								<a href="${cpath}/mypage/claim">0</a>
							</div></li>
					</ul>
				</div>
			</div>
			<div class="wishListBox">
				<div class="mypageTitleBox">
					<div class="titleArea">
						<h2>찜한 상품</h2>
					</div>
					<div class="rightArea">
						<a href="${cpath}/mypage/wishlist">전체보기 ></a>
					</div>
				</div>
			</div>
			<div class="wishListProd">
				<!-- 자바스크립트로 ul만들고 li안에 찜목록 상품 불러오기  -->
			</div>
		</section>
	</div>
	</main>
	
	<script>
		window.addEventListener('load', selectProductWishlist)
	</script>
	<%@ include file="../footer.jsp"%>