<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>회원 탈퇴 | MY 홈플러스 | 홈플러스</title>
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
	</div>
</main>
<%@ include file="../footer.jsp" %>