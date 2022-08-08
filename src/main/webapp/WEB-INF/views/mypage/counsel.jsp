<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>1:1 문의 내역 | MY 홈플러스 | 홈플러스</</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
<style>
.counsel_modal {
/* 	display: none; */
}
.counsel_overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 70%;
	z-index: 5;
}
.counsel_content {
	position: absolute;
	z-index: 6;
	width: 25%;
	height: 70%;
	justify-content: center;
	align-items: center;
	background-color: white;
	overflow: auto;
	top: 50%;
  	left: 50%;
  	transform: translate(-50%, -50%);
}
.counsel_hidden {
	display: none;
}
</style>
</head>
<body>
<script>
	function counselOpenModal() {
		const counsel_modal = document.querySelector('.counsel_modal')
		counsel_modal.style.display = 'flex'
	}
	
	function counselCloesModal() {
		const counsel_modal = document.querySelector('.counsel_modal')
		counsel_modal.style.display = 'none'
	}
</script>
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
		<h1>1:1 문의 내역</h1>
		<div class="counsel"><button>1:1 문의하기</button></div>
	</section>
		
		<div class="counsel_modal" class="counsel_hidden">
			<div class="counsel_content">
				<div>
					<div>1:1 문의하기</div>
					<div class="counsel_close">X</div>
				</div>
				
				<table>
					<tr>
						<th>문의 유형</th>
						<td>
							<select id="category">
								<option value="" ${param.category == '전체' ? 'selected' : '' }>문의유형 선택</option>
								<option value="배송" ${param.category == '배송' ? 'seleted' : '' }>배송</option>
								<option value="상품" ${param.category == '상품' ? 'seleted' : '' }>상품</option>
								<option value="주문" ${param.category == '주문' ? 'seleted' : '' }>주문</option>
								<option value="결제" ${param.category == '결제' ? 'seleted' : '' }>결제</option>
								<option value="교환/반품/환불" ${param.category == '교환/반품/환불' ? 'seleted' : '' }>교환/반품/환불</option>
								<option value="행사/쿠폰/포인트" ${param.category == '행사/쿠폰/포인트' ? 'seleted' : '' }>행사/쿠폰/포인트</option>
								<option value="홈페이지/시스템" ${param.category == '홈페이지/시스템' ? 'seleted' : '' }>홈페이지/시스템</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<th>주문/상품</th>
						<td>
							<span>주문/상품과 관련없는 문의사항 입니다</span>
							<span><button>주문/상품 선택</button></span>
						</td>
					</tr>
					
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" placeholder="최소 2자 이상 입력해주세요 (최대 25자)"></td>
					</tr>
					
					<tr>
						<th>내용</th>
						<td>
							<textarea name="memo"	
								  rows="10"
								  cols="55"
								  placeholder="문의 내용을 입력해 주세요 (최대 700자 이내)&#13;&#10;고객님의 개인정보가 기입되지 않도록 주의해주세요"></textarea>
						</td>
					</tr>
					
					<tr>
						<th>이미지 등록(선택)</th>
						<td>
							<p><input type="file" name="img"></p>
						</td>
					</tr>
					
					<tr>
						<th>답변알림(선택)</th>
						<td>
							<span><input type="checkbox">이메일 알림</span>
							<span><input type="text" name="content" placeholder="babo@naver.com"></span>
						</td>
					</tr>
					
					<tr>
						<th></th>
						<td></td>
					</tr>
				</table>
				<p><input type="submit" value="등록"></p>
			</div>	
		<div class="counsel_overlay"></div>
	</div>
</main>

<script>
	const counselModal_overlay = document.querySelector('.counsel_overlay')
	const counselModal_close = document.querySelector('.counsel_close')
	const counselModal_open = document.querySelector('.counsel_write')
	
	counselModal_open.addEventListener('click', counselOpenModal)
	counselModal_overlay.addEventListener('click', counselCloesModal)
	counselModal_close.addEventListener('click', counselCloesModal)
</script>
<%@ include file="../footer.jsp" %>