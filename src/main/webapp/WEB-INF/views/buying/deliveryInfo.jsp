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

<div class="buying_header">
    <div class="inner">
        <div class="inner_left">
            <div class="black_logo"><a href="${cpath}/"></a></div>
        </div>
        <div class="inner_right">
            <a href="${cpath}/">로그아웃</a>
            <a href="${cpath}/mypage/mypageMain">마이페이지</a>
            <a href="${cpath}/">고객센터</a>
        </div>
    </div>
</div>

<main>
    <div class="mainDiv">
        <div class="homeTitleWrap">
            <h2>배송정보</h2>
            <div class="homeStep">
                <span>장바구니</span>
                <div></div>
                <span class="homeStepselected">배송정보</span>
                <div></div>
                <span>주문/결제</span>
                <div></div>
                <span>주문완료</span>
            </div>
        </div>
        <div class="homeDeliveryTab" receiverName="${deliveryDefault.receiverName}" receiverPhonenum="${deliveryDefault.receiverPhonenum}">
            <div>
                <strong>일반배송</strong>
                <span>센텀시티점</span>
	            <p>${deliveryDefault.address}</p>
            </div>
        </div>
        <p id="notice">* 배송지 변경은 장바구니에서 가능합니다.</p>

        <div class="homeTitleWrap">
            <h2>배송시간 / 날짜선택</h2>
            <div class="homeStep">
            	<span></span>
<!--                 <span>지금 주문하면 .... 까지 점포배송 가능합니다</span> -->
            </div>
        </div>
        <div class="deliveryTimeChoice">
            <table>
                <tr>
                    <th>배송시간대</th>
            		<c:forEach var="date" items="${deliveryDate}">            	
                    <th>${date}</th>
                	</c:forEach>
                </tr>
                <tr>
                    <th>10:00 ~ 13:00</th>
                	<c:forEach var="date" items="${deliveryDate}">
                    <td><input type="radio" name="deliveryDate" value="${date} 10:00 ~ 13:00">주문가능</td>
                    </c:forEach>
                </tr>
                <tr>
                    <th>14:00 ~ 17:00</th>
                	<c:forEach var="date" items="${deliveryDate}">
                    <td><input type="radio" name="deliveryDate" value="${date} 14:00 ~ 17:00">주문가능</td>
                    </c:forEach>
                </tr>
                <tr>
                    <th>18:00 ~ 21:00</th>
                	<c:forEach var="date" items="${deliveryDate}">
                    <td><input type="radio" name="deliveryDate" value="${date} 18:00 ~ 21:00">주문가능</td>
                    </c:forEach>
                </tr>
            </table>
        </div>
        <div class="orderCheck">
            <div class="orderProducts">
                <h3>주문상품</h3>
                <ul>
					<c:forEach var="item" items="${orderList }">
	                    <li>
	                        <a href="${cpath}/product/view/${item.productMain_idx}"><img src="${cpath}/resources/getImage1/${item.productImg}"></a>
	                        <div class="imgExp hidden">
	                            <p>${item.productName}</p>
	                            <span>수량 : ${item.cnt}</span>
	                        </div>
	                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="payTab">
                <div class="payTabTotalprice">
                    <span>총주문금액</span>
                    <span><p><fmt:formatNumber value="${totalPrice}" pattern="#,###" /></p>원</span>
                </div>
                <div class="payTabTotalprice">
                    <span>배송비</span>
                    <span><p><fmt:formatNumber value="${deliveryFee}" pattern="#,###" /></p>원</span>
                </div>
                <div class="payTabTotalprice">
                    <span>할인금액</span>
                    <span><p><fmt:formatNumber value="${discountPrice}" pattern="#,###" /></p>원</span>
                </div>
                <div class="resultPrice payTabTotalprice">
                    <span>결제예정금액</span>
                    <span><p><fmt:formatNumber value="${pay}" pattern="#,###" /></p>원</span>
                </div>
                <div class="keepgoingBtn">
                    <button>카카오페이 결제하기</button>
                </div>
            </div>
        </div>
    </div>    
</main>


<script>
	const orderProducts = Array.from(document.querySelectorAll('.orderProducts > ul > li > a > img'))
	orderProducts.forEach(img => img.addEventListener('mouseover', orderProductsExpMouseover))
	orderProducts.forEach(img => img.addEventListener('mouseout', orderProductsExpMouseout))

	document.querySelector('.keepgoingBtn').addEventListener('click', kakaopay)
</script>
<%@ include file="../footer.jsp" %>