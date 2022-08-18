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
        <div class="homeDeliveryTab">
            <div>
                <strong>일반배송</strong>
                <span>센텀시티점</span>
                <p>${deliveryDefault[0]} ${deliveryDefault[1]} ${deliveryDefault[2]}</p>
            </div>
        </div>
        <p id="notice">* 배송지 변경은 장바구니에서 가능합니다.</p>

        <div class="homeTitleWrap">
            <h2>배송시간 / 날짜선택</h2>
            <div class="homeStep">
                <span>지금 주문하면 .... 까지 점포배송 가능합니다</span>
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
                    <td><input type="radio" name="deliveryDate" value="날짜 + 10:00 ~ 13:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 10:00 ~ 13:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 10:00 ~ 13:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 10:00 ~ 13:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 10:00 ~ 13:00">주문가능</td>
                </tr>
                <tr>
                    <th>14:00 ~ 17:00</th>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 14:00 ~ 17:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 14:00 ~ 17:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 14:00 ~ 17:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 14:00 ~ 17:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 14:00 ~ 17:00">주문가능</td>
                </tr>
                <tr>
                    <th>18:00 ~ 21:00</th>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 18:00 ~ 21:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 18:00 ~ 21:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 18:00 ~ 21:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 18:00 ~ 21:00">주문가능</td>
                    <td><input type="radio" name="deliveryDate" value="날짜 + 18:00 ~ 21:00">주문가능</td>
                </tr>
            </table>
        </div>
        <div class="orderCheck">
            <div class="orderProducts">
                <h3>주문상품</h3>
                <ul>
					<c:forEach var="item" items="${orderList }">
	                    <li>
	                        <img src="${cpath}/resources/getImage1/${item.productImg}">
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
                    <span><p>150000</p>원</span>
                </div>
                <div class="payTabTotalprice">
                    <span>배송비</span>
                    <span><p>3000</p>원</span>
                </div>
                <div class="payTabTotalprice">
                    <span>할인금액</span>
                    <span><p>-1200</p>원</span>
                </div>
                <div class="resultPrice payTabTotalprice">
                    <span>결제예정금액</span>
                    <span><p>75000</p>원</span>
                </div>
                <div class="keepgoingBtn">
                    <button>계속하기</button>
                </div>
            </div>
        </div>
    </div>    
</main>


<script>
	const orderProducts = Array.from(document.querySelectorAll('.orderProducts > ul > li > img'))
	orderProducts.forEach(img => img.addEventListener('mouseover', orderProductsExpMouseover))
	orderProducts.forEach(img => img.addEventListener('mouseout', orderProductsExpMouseout))
</script>
<%@ include file="../footer.jsp" %>