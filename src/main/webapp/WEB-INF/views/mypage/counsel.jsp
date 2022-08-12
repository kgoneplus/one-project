<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>1:1 문의 내역 | MY 홈플러스 | 홈플러스</</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
<style>
.counsel_modal {
	display: none;
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
	width: 700px;
	height: 660px;
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
.counsel_content > div:nth-child(1) {
	font-weight: bold;
	padding: 25px;
	display: flex;
	justify-content: space-between;
	border-bottom: 2px solid gray;	
}
.counsel_close {
	cursor: pointer;
}
.counsel_submit {
	text-align: center;
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
                    <li><a href="${cpath }/mypage/qna">상품문의</a></li>
                </ul>
            </div>
            
            <div class="mypageLeftWrapper">
                <h3>MY 회원정보</h3>
                <ul>
                    <li><a href="${cpath }/mypage/myinfo/${login.idx}">회원 정보 관리</a></li>
                    <li><a href="${cpath }/mypage/shipacc">배송 정보 관리</a></li>
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
                <div class="rightArea"><button>1:1 문의하기</button></div>
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
        </section>
    </div>
		
		<!-- 문의하기 2022 08 09 ~ 작업중입니다 -->
		<div class="counsel_modal" class="counsel_hidden">
			<div class="counsel_content">
				<div>
					<div>1:1 문의하기</div>
					<div class="counsel_close">X</div>
				</div>
								
				<form method="POST" enctype="multipart/form-data">
					<p>문의 유형
						<select name="askType">
							<option>기타</option>
							<option>배송</option>
							<option>상품</option>
							<option>주문</option>
							<option>결제</option>
							<option>교환/반품/환불</option>
							<option>행사/쿠폰/포인트</option>
							<option>홈페이지/시스템</option>
						</select>
					</p>					
					<p>주문/상품
						<span>주문/상품과 관련없는 문의사항 입니다</span>
						<span><button>주문/상품 선택</button></span>
					</p>				
					<p>제목
						<input type="text" name="title" placeholder="최소 2자 이상 입력해주세요 (최대 25자)" required>
					</p>										
					<p>내용
						<textarea name="content"
							  rows="10"
							  cols="55"
							  placeholder="문의 내용을 입력해 주세요 (최대 700자 이내)&#13;&#10;고객님의 개인정보가 기입되지 않도록 주의해주세요" required></textarea>
					</p>
					<p>이미지 등록(선택)
						<input type="file" name="img">
					</p>					
					<p>답변알림(선택)
						<span><input type="checkbox">이메일 알림</span>
						<span><input type="text" name="content" placeholder="babo@naver.com"></span>
					</p>
					<p class="counsel_submit"><input type="submit" value="등록"></p>
				</form>
			</div>	
		<div class="counsel_overlay"></div>
	</div>
</main>

<script>
	const counselModal_overlay = document.querySelector('.counsel_overlay')
	const counselModal_close = document.querySelector('.counsel_close')
	const counselModal_open = document.querySelector('.rightArea')
	
	counselModal_open.addEventListener('click', counselOpenModal)
	counselModal_overlay.addEventListener('click', counselCloesModal)
	counselModal_close.addEventListener('click', counselCloesModal)
</script>
<%@ include file="../footer.jsp" %>