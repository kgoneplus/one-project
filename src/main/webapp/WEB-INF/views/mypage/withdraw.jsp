<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="mypageMain.jsp" %>

<title>회원 탈퇴 | MY 홈플러스 | 홈플러스</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<style>
main {
	display: flex;
	width: 1280px;
	height: auto;
	margin: auto;
	margin-top: 40px;
}
aside {
	width: 340px;
}
.withdraw_wrap {
	margin: 0 30px;
}
</style>
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
		<div>회원 탈퇴</div>
		<div class="withdraw_wrap">
			<div>유의사항 및 탈퇴동의</div>
			<div>
				<div>• 홈플러스 패밀리 사이트 중 탈퇴하고자 하는 사이트만 선택하여 탈퇴가 가능합니다.</div>
				<div>• 탈퇴 처리 시, 각 해당 사이트의 이용내역은 모두 삭제 처리 되며, 삭제 후 복원하여 사용할 수 없습니다. 단, 법령에 특별한 규정이 있는 경우에는 관련 법령에 따라 보유 및 이용합니다. (자세한 내용은 개인정보처리방침을 참조하시기 바랍니다.)</div>
				<div>• 주문 중인 상품이 있을 경우 구매절차를 완료하셔야 하며, 탈퇴 시 구매내역 및 회원인 동안 보유하고 계셨던 각종 쿠폰(장바구니 쿠폰, 마일리지 등)은 모두 삭제됩니다.</div>
				<div>• 탈퇴한 사이트의 회원 재가입은 탈퇴 후 5일이 지난 이후에 가능합니다.</div>
				<div>• 연결되었던 모든 SNS 계정도 함께 삭제되며, 재가입시 새롭게 인증 진행을 하셔야 합니다.</div>
			</div>
			
			<fieldset>
				<div><input type="checkbox">안내 사항을 모두 확인하였으며, 탈퇴하는 사이트의 이용 데이터가 복구가 불가함에 동의합니다.</div>
				<div>또한 모든 홈플러스 패밀리사이트를 탈퇴하는 경우, 탈퇴 아이디(ID호출)의 재사용이 불가함에 동의합니다</div>
			</fieldset>
			
			<div>
				<div>탈퇴정보</div>
				<div>* 필수 입력</div>
			</div>
			<fieldset>
				<div>탈퇴할 서비스 선택</div>
				<div><input type="checkbox">전체</div>
				<div><input type="checkbox">홈플러스 온라인</div>
			</fieldset>
			
			<div>
				<form>
				<table>
					<tr>
						<th>이름 *</th>
						<td><input type="text" name="name" required></td>
					</tr>
					<tr>
						<th>생년월일 *</th>
						<td><input type="date" name="birth" required></td>
					</tr>
					<tr>
						<th>휴대전화번호 *</th>
						<td>
							<select>
								<option value="">선택</option>
								<option value="">010</option>
								<option value="">011</option>
								<option value="">016</option>
								<option value="">017</option>
								<option value="">018</option>
								<option value="">019</option>
								<option value="">070</option>
							</select>
							- <input type="tel" name="phoneNum2" required size="3"> -
							<input type="tel" name="phoneNum3" required size="3">
						</td>
					</tr>
					<tr>
						<th>회원탈퇴 사유</th>
						<td>
							<select>
								<option value="">선택</option>
								<option value="">상품 품질 불만</option>
								<option value="">주문 취소반품,교환불만</option>
								<option value="">쇼핑몰 속도불만</option>
								<option value="">배송지연</option>
								<option value="">이용빈도 낮음</option>
								<option value="">기타</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>회원탈퇴 의견</th>
						<td><textarea name="content" cols="50" rows="10"></textarea></td>
					</tr>
				</table>
				</form>
				<p><input type="submit" value="회원 탈퇴"></p>
			</div>
		</div>
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
