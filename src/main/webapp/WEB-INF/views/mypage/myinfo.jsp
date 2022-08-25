<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>회원 정보 관리 | MY 홈플러스 | 홈플러스</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
<script src="${cpath }/resources/js/function_member.js"></script>
<script	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
					<h2>회원 정보 관리</h2>
				</div>
				<div class="rightArea"></div>
			</div>
			<div class="myinfo_main">
				<div>
					<div>정보입력</div>
					<div>* 필수입력</div>
				</div>
				<div>
					<form method="POST">
						<input type="hidden" name="idx" value="${dto.idx }">
						<table class="myinfo_table">
							<tr class="myinfo_table_tr">
								<th>이름 *</th>
								<td>${dto.name }</td>
							</tr>
							<tr class="myinfo_table_tr">
								<th>아이디 *</th>
								<td>${dto.userid }</td>
							</tr>
							<tr class="myinfo_table_tr">
								<th>비밀번호 *</th>
								<td><input type="password" name="userpw" value="${dto.userpw }"></td>
							</tr>
							<tr class="myinfo_table_tr">
								<th>법정 생년월일 *</th>
								<td>${dto.birth }</td>
							</tr>
							<tr class="myinfo_table_tr">
								<th>성별</th>
								<td>
									<select name="gender">
										<option value="남성" ${dto.gender == '남성' ? 'selected' : ''}>남성</option>
										<option value="여성" ${dto.gender == '여성' ? 'selected' : ''}>여성</option>
									</select>
								</td>
							</tr>
							<tr class="myinfo_table_tr">
								<th>이메일 *</th>
								<td><input type="email" name="email" value="${dto.email }"></td>
							</tr>
							<tr class="myinfo_table_tr">
								<th>휴대전화번호 *</th>
								<td><input type="text" name="phonenum" value="${dto.phonenum }"></td>
							</tr>
							
							<tr class="myinfo_last_tr myinfo_table_tr">
								<th>주소</th>
								<td>
									<input type="text" name="addr_number" id="sample6_postcode" value="${dto.addr_number }" placeholder="우편번호" required>
									<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" required><br>
									<input type="text" name="addr_juso" id="sample6_address" value="${ dto.addr_juso}" placeholder="주소" required>
									<input type="text" name="addr_detail" id="sample6_detailAddress" value="${dto.addr_detail }" placeholder="상세주소" required>
									<input type="text" name="addr_Reference" id="sample6_extraAddress" value="${dto.addr_Reference }" placeholder="참고항목" required>
								</td>
							</tr>
						</table>
						<p class="myinfo_submit"><input type="submit" value="저장"></p>
					</form>
				</div>
			</div>
		</section>
	</div>
	</main>
	<%@ include file="../footer.jsp"%>