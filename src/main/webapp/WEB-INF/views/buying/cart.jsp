<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="buyingheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/결제 | 홈플러스 온라인, 맛있는 마트</title>
</head>
<body>
<main>
    <div class="mainDiv">
        <div class="homeTitleWrap">
            <h2>장바구니</h2>
            <div class="homeStep">
                <span class="homeStepselected">장바구니</span>
                <div></div>
                <span>배송정보</span>
                <div></div>
                <span>주문/결제</span>
                <div></div>
                <span>주문완료</span>
            </div>
        </div>
        <div class="homeDeliveryBox">
            <div class="manageDelivery">
                <p>${deliveryDefault.address}</p>
                <button>배송관리</button>
            </div>
        </div>

       
        <div class="orderCheck">
            <div class="orderProducts">
                <h3>일반배송</h3>
                <form>
					<table class="cartProducts">
						<thead>
							<tr>
								<td><input type="checkbox" id="allChecked"></td>
								<td>상품/옵션정보</td>
								<td>구매예정금액</td>
								<td>행사/할인</td>
								<td>선택</td>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</form>
            </div>
            <div class="payTab">
                <div class="payTabTotalprice">
                    <span>총주문금액</span>
                    <span><p></p>원</span>
                </div>
                <div class="payTabTotalprice">
                    <span>배송비</span>
                    <span><p></p>원</span>
                </div>
                <div class="payTabTotalprice">
                    <span>할인금액</span>
                    <span><p></p>원</span>
                </div>
                <div class="resultPrice payTabTotalprice">
                    <span>결제예정금액</span>
                    <span><p></p>원</span>
                </div>
                <div class="keepgoingBtn">
                    <button class="orderAll" type="submit">전체상품 주문하기</button>
                    <button type="submit">선택상품 주문하기</button>
                </div>
            </div>
        </div>
    </div>    
</main>

<div class="DeliveryContent">
	<h3>기본배송지</h3>
	<div class="dContentBox">
		<div class="deliveryCheckbox">
			<input type="hidden" name="dCode" value="${deliveryDefault.dCode}">
			<input type="radio">
		</div>
		<div class="deliveryDefault">
			${deliveryDefault.receiverName} (${deliveryDefault.receiverPhonenum})<br>
			[${deliveryDefault.address}]
		</div>
	</div>
	<p>* 배송지 변경 시, 배송매장에 따라 판매가능 상품 및 행사 내용이 변경 될 수 있습니다.</p>
	<h3>배송지 목록</h3>
	<form>
		<table>
			<thead>
				<tr>
					<td>선택</td>
					<td>받는 분</td>
					<td>주소</td>
					<td>  </td>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
	</form>
	<button id="addDeliveryAddress">배송지 추가</button>
	<div><button id="changeDefaultAddress">배송지 변경</button></div>
</div>
<div class="DeliveryOverlay"></div>
<div class="addDeliveryAddressContent">
	<h3>배송지 추가</h3>
	<hr>
	<form>
		<div>받는분</div>
		<input type="text" name="receiverName" required>
	
		<div>핸드폰번호</div>
		<input type="text" name="receiverPhonenum" required>
			
		<div>주소</div>
		<input type="text" name="addr1" id="sample6_postcode" placeholder="우편번호" required>
		<input type="button" value="우편번호 찾기" required><br>
	
		<input type="text" name="addr2" id="sample6_address" placeholder="주소" required><br>
		<input type="text" name="addr3" id="sample6_detailAddress" placeholder="상세주소" required>
		<input type="text" name="addr4" id="sample6_extraAddress" placeholder="요청사항" required>
		
		<input type="submit" value="확인">
		<input type="button" value="취소" onclick="deliveryManagementClose()">
	</form>
</div>
<div class="modDeliveryAddressContent"></div>

<script>
	window.addEventListener('load', cartLoadHandler)
// 	document.getElementById('allChecked').addEventListener('change', cartAllItemClick)
	
	const btns = Array.from(document.querySelectorAll('.keepgoingBtn > button'))
	btns.forEach(btn => btn.addEventListener('click', cartToDeliveryInfo))
	
	document.querySelector('.manageDelivery > button').addEventListener('click', deliveryManagement)
	document.querySelector('.DeliveryOverlay').addEventListener('click', deliveryManagementClose)
	
	document.getElementById('addDeliveryAddress').addEventListener('click', addDeliveryAddressHandler)
	document.querySelector('.addDeliveryAddressContent > form').addEventListener('submit', addressInsert)
	document.getElementById('changeDefaultAddress').addEventListener('click', updatedefaultAddress)
	//sample6_execDaumPostcode()
	document.querySelector('.addDeliveryAddressContent input[value="우편번호 찾기"]').addEventListener('click', sample6_execDaumPostcode)
	
	// 이벤트 디스패치 수정 필
	const target = document.getElementById('allChecked')
	const evt = new Event('click')
	target.dispatchEvent(evt)
</script>

<%@ include file="../footer.jsp" %>