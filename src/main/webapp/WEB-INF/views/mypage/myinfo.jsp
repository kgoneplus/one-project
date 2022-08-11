<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>회원 정보 관리 | MY 홈플러스 | 홈플러스</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
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
                    <li><a href="${cpath }/mypage/myinfo">회원 정보 관리</a></li>
                    <li><a href="${cpath }/mypage/shipacc">배송 정보 관리</a></li>
                    <li><a href="${cpath }/mypage/agree">개인정보이용내역</a></li>
                    <li><a href="${cpath }/mypage/withdraw">회원탈퇴</a></li>
                </ul>
            </div>
        </aside>
              
        <section>
            <div class="mypageTitleBox mypageSubtitle">
                <div class="titleArea">
                    <h2>회원 정보 관리</h2>
                </div>
                <div class="rightArea"></div>
            </div>
            <div>
            	<div>정보입력</div>
            	<div>* 필수입력</div>
            </div>
            <div>
            	<form method="POST">
            	<input type="hidden" name="idx" value="${dto.idx }">
            	<p>이름 ${login.name }</p>
            	<p>아이디 ${login.userid }</p>
            	<p>비밀번호
            		<input type="password" name="userpw" value="${login.userpw }">
            	</p>
            	<p>법정 생년월일
            		<input type="date" name="birth" value="${login.birth }">
            	</p>
            	<p>성별
            		<select name="gender">
            			<option>선택</option>
            			<option value="남성" ${dto.category == '남성' ? 'selected' : ''}>남성</option>
            			<option value="여성" ${dto.category == '여성' ? 'selected' : ''}>여성</option>
            		</select>
            	</p>
            	<p>이메일
            		<input type="email" name="email" value="${login.email }">
            	</p>
            	<p>전화번호
            		<input type="text" name="phonenum" value="${login.phonenum }">
            	</p>
            	<p>주소
            		<input type="text" name="address" value="${login.address }">
            	</p>
            	<p><input type="submit" value="저장"></p>
            	</form>
            </div>
        </section>
    </div>
</main>
<%@ include file="../footer.jsp" %>