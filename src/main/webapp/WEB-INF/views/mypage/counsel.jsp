<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>1:1 문의 내역 | MY 홈플러스 | 홈플러스</</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
<script src="${cpath}/resources/js/function_mypage.js"></script>
</head>
<body>
<main>
    <div class="mypagewrapper">
        <aside>
            <h2><a href="${cpath }/mypage/mypageMain">MY 홈플러스</a></h2>
            
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
                    <li><a href="${cpath }/mypage/myinfo/${login.idx}">회원 정보 관리</a></li>
                    <li><a href="${cpath }/buying/cart/${login.idx}">배송 정보 관리</a></li>
                    <li><a href="${cpath }/mypage/agree">개인정보이용내역</a></li>
                    <li><a href="${cpath }/mypage/withdraw">회원탈퇴</a></li>
                </ul>
            </div>
        </aside>
              
        <section>
            <div class="mypageTitleBox mypageSubtitle">
                <div class="titleArea">
                    <h2>상품문의</h2>
                </div>
                <div class="rightArea"><button class="ask_button">1:1 문의하기</button></div>
            </div>
            
 			<div class="dateFilter">
                <form>
                    <div class="filterlist">
                        <div class="filterItem">
                            <p>조회기간</p>
                            <input type="date" name="sthStartDate">
                            <p>~</p>
                            <input type="date" name="sthEndDate">
                        </div>
                        <div class="filterItem">
                            <ul>
                                <li>1개월</li>
                                <li>3개월</li>
                                <li>6개월</li>
                            </ul>
                        </div>
                        <div class="filterItem"><button class="inquiry">조회</button></div>
                    </div>
                </form>
            </div>
            <div class="ask_wrap"></div>
            
            <div id="askList_modal" class="askList_hidden">
            	<div class="askList_content">
            		<div class="askList_top"></div>
            		<div class="askList_mid"></div>
            		<div class="askList_bottom"></div>
            	</div>
            	<div class="askList_overlay"></div>
            </div>
        </section>
    </div>
		
	<!-- 문의하기 (이미지 없이) -->
	<div class="counsel_modal" class="counsel_hidden">
		<div class="counsel_content">
			<div>
				<div>1:1 문의하기</div>
				<div class="counsel_close">X</div>
			</div>
							
			<form class="counsel_form" enctype="multipart/form-data">
				<input type="hidden" name="member_idx" value="${login.idx }">
				<table class="counsel_table">
				<tr class="counsel_tr">
					<th>문의 유형</th>
	 				<td>
	 					<select name="askType">
							<option>기타</option>
							<option>배송</option>
							<option>상품</option>
							<option>주문</option>
							<option>결제</option>
							<option>교환/반품/환불</option>
							<option>행사/쿠폰/포인트</option>
							<option>서비스</option>
						</select>
					</td>
				</tr>					
				<tr class="counsel_tr">
					<th>제목</th>
					<td><input type="text" name="title" placeholder="최소 2자 이상 입력해주세요 (최대 25자)" required></td>
				</tr>										
				<tr class="counsel_tr">
					<th>내용</th>
					<td>
						<textarea name="content"
							  rows="10"
							  cols="55"
							  placeholder="문의 내용을 입력해 주세요 (최대 700자 이내)&#13;&#10;고객님의 개인정보가 기입되지 않도록 주의해주세요" required></textarea>
					</td>
				</tr>
<!-- 				<tr class="counsel_tr"> -->
<!-- 					<th>이미지 등록(선택)</th> -->
<!-- 					<td><input type="file" name="askFile" accept="image/*"></td> -->
<!-- 				</tr>					 -->
				</table>
				<p class="counsel_submit"><input type="submit" value="등록"></p>
			</form>
		</div>
		<div class="counsel_overlay"></div>
	</div>
</main>

<script>
	let login_idx = '${login.idx}'
	const counselModal_overlay = document.querySelector('.counsel_overlay')		
	const counselModal_close = document.querySelector('.counsel_close')
	const counselModal_open = document.querySelector('.rightArea')
	const writeForm = document.querySelector('.counsel_form')					// 1:1 문의 등록 폼
	const askList_close = document.querySelector('.askList_overlay')
	
	counselModal_open.addEventListener('click', counselOpenModal)
	counselModal_overlay.addEventListener('click', counselCloesModal)
	counselModal_close.addEventListener('click', counselCloesModal)
	writeForm.addEventListener('submit', askHandler)							// 1:1 문의 등록
	window.addEventListener('load', selectAskAll(login_idx))					// 1:1 문의 내역 상세보기
	askList_close.addEventListener('click', askCloesModal)						
</script>
<%@ include file="../footer.jsp" %>