<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>개인정보 이용내역 | MY 홈플러스 | 홈플러스</title>
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
                    <h2>개인정보 이용내역</h2>
                </div>
                <div class="rightArea"></div>
            </div>
            <p class="agree_pTag">보유한 개인정보 현황</p>
            <div class="agree_divTag">- 홈플러스는 아래와 같이 고객님의 개인정보를 보유하고 있습니다.</div>
            <div class="agree_divTag">- 보유기간 : 회원 탈퇴 시 까지</div>
            <table class="agree_table">
            	<tr class="agree_table_tr">
            		<th>보유항목</th>
            		<th>수집목적</th>
            		<th>필수/선택 동의</th>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>성명</td>
            		<td>본인확인, 개인식별, 부정이용방지, 민원처리</td>
            		<td>필수</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>생년월일</td>
            		<td>본인확인, 개인식별, 부정이용방지, 민원처리</td>
            		<td>필수</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>성별</td>
            		<td>본인확인, 개인식별, 부정이용방지, 민원처리</td>
            		<td>선택</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>휴대폰 번호</td>
            		<td>본인확인, 개인식별, 부정이용방지, 민원처리</td>
            		<td>필수</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>주소</td>
            		<td>본인확인, 개인식별, 부정이용방지, 민원처리</td>
            		<td>선택</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>이메일</td>
            		<td>본인확인, 개인식별, 부정이용방지, 민원처리</td>
            		<td>필수</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>ID</td>
            		<td>계정부여</td>
            		<td>필수</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>비밀번호</td>
            		<td>계정부여</td>
            		<td>필수</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>마이홈플러스카드<br>(멤버십 회원에 한함)</td>
            		<td>멤버십 운영</td>
            		<td>필수</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>CI (연계정보)<br>(멤버십 회원에 한함)</td>
            		<td>고객확인, 회원탈퇴</td>
            		<td>필수</td>
            	</tr>
            </table>
            
            <p class="agree_pTag">개인정보 이용내역 공통 항목</p>
            <div class="agree_divTag">- 홈플러스는 수집한 고객님의 개인정보를 다음의 목적을 위해 활용합니다.</div>
            <table class="agree_table">
            	<tr class="agree_table_tr">
            		<th>서비스</th>
            		<th>이용항목</th>
            		<th>이용목적</th>
            	</tr>
            	<tr class="agree_table_tr2">
            		<td rowspan='6'>온라인</td>
            		<td>성명, 휴대폰 번호, 주소, 주문정보</td>
            		<td>주문상품 배송</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>성명, 휴대폰 번호, 주문정보, 이메일</td>
            		<td>VOC 등록 내용 답변</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>성명, 휴대폰 번호, 주소, 이메일</td>
            		<td>배송, 고객민원 대응</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>CI(연계정보), 생년월일, 성별, 성명, 마이홈플러스카드번호</td>
            		<td>OK캐쉬백 카드 서비스 이용</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>휴대폰 번호, CI(연계정보)</td>
            		<td>현금영수증 발급 및<br>발급내역 국세청 통보</td>
            	</tr>
            	<tr class="agree_table_tr">
            		<td>성명, 휴대폰 번호, 주소</td>
            		<td>광고성 이메일, 홈플러스 공식 SMS<br>(블로그 체험단/페이스북 등)</td>
            	</tr>            	
            </table>
            <div class="agree_divTag">• 각 서비스 사용시에만 이용되며 사용하지 않으신 경우 해당 항목은 이용되지 않습니다.</div>
        </section>
    </div>
</main>

<%@ include file="../footer.jsp" %>