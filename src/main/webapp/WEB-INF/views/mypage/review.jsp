<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>리뷰 | MY 홈플러스 | 홈플러스</</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
<style>
.review_overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 70%;
	z-index: 5;
}
.review_content {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 6;
	width: 25%;
	height: 100%;
	justify-content: center;
	align-items: center;
	background-color: white;
}
.review_hidden {
	display: none;
}
.review_content > div {
	
}
.review_content > div:nth-child(1) {
	font-weight: bold;
	padding: 25px;
	display: flex;
	justify-content: space-between;
	border-bottom: 2px solid gray;	
}

.review_content > div:nth-child(2) {
	margin: 30px 25px;
	display: flex;
}
.review_content > div:nth-child(3) {
	margin: 35px 25px;
	text-align: center;
	background-color: #f3f3f3;
	height: 100px;
}
.review_content > div:nth-child(3) > div:first-child {
	margin: 10px 0;
}
.review_content > div:nth-child(3) {
	margin: 35px 25px;
	text-align: center;
	background-color: #f3f3f3;
	height: 100px;
}
.review_item_check {
	margin: 35px 25px;
}
.review_item_click {
	display: flex;
	justify-content: space-between;
	padding: 10px 0;
}
.review_item_check > div:nth-child(1) {
	font-weight: bold;
	font-size: 15px;
}
.review_item_click > div {
	border: 1px solid black;
	width: 125px;
	height: 30px;
	text-align: center;
	padding-top: 8px;
	border-radius: 5px;
	cursor: pointer;
	color : black;
}
</style>
<script>
	const div = document.querySelector('.review_item_click > div')
	function clickColor() {
		div.style.color = "red"
		div.style.border = "1px solid red"
	}
	div.addEventListener("click", clickColor)
</script>
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
	
	<div class="review_modal" class="review_hidden">
		<div class="review_content">
			<div>
				<div>리뷰작성</div>
				<div>X</div>
			</div>
			
			<div>
				<div>상품이미지</div>
				<div>상품명</div>
			</div>
			
			<div class="review_item">
				<div>상품에 만족하셨나요?</div>
				<div>☆☆☆☆☆</div>
			</div>
			
			<div class="review_item_check">
				<div>[상품상태] 상품의 상태는 어떤가요?</div>
				<div class="review_item_click">
					<div>아주 좋아요</div>
					<div>보통이에요</div>
					<div>별로에요</div>
				</div>
			</div>
			
			<div class="review_item_check">
				<div>[상품일치여부] 구매한 상품과 받은 상품이 똑같은가요?</div>
				<div class="review_item_click">
					<div>똑같아요</div>
					<div>비슷해요</div>
					<div>달라요</div>
				</div>
			</div>
			
			<div class="review_item_check">
				<div>[가격] 상품의 가격은 어떤가요?</div>
				<div class="review_item_click">
					<div>만족해요</div>
					<div>보통이에요</div>
					<div>별로에요</div>
				</div>
			</div>
			
			<div class="review_item">
				<div>어떤 점이 좋았나요?</div>
				<div>
					<textarea name="memo"	
							  rows="10"
							  cols="50"
							  placeholder="자세한 리뷰는 다른 고객님들의 구매에 큰 도움이 됩니다"></textarea>
				</div>
			</div>
			
			<div class="review_item">
				<div>사진을 등록해주세요(선택)</div>
				<div id="review_upload">
					<form>
						<p><input type="file" name="img"></p>
					</form>
				</div>
			</div>
			
		</div>
		<div class="review_overlay"></div>
	</div>
</main>
<%@ include file="../footer.jsp" %>