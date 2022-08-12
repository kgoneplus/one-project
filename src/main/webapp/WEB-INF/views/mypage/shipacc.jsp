<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>배송 정보 관리 | MY 홈플러스 | 홈플러스</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
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
                <h2>배송 정보 관리</h2>
            </div>
            <div class="rightArea"></div>
            </div>
            <div>
				<h3>배송지 목록</h3>
				<button>배송지 추가</button>
			</div>
			<div>
				<div>기본 배송지</div>
				<div>
					<div>배송지역 | 수령인(회원 전화번호 )</div>
					<div>회원정보에 등록된 주소</div>
				</div>			
			</div>
			<table>
				<tr>
					<th>선택</th>
					<th>배송지명</th>
					<th>받는 분</th>
					<th>주소</th>
					<th>수정/삭제</th>
				</tr>
			</table>
			<button>기본 배송지 설정</button>
        </section>
    </div>
</main>
<%@ include file="../footer.jsp" %>