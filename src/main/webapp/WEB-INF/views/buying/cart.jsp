<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/결제 | 홈플러스 온라인, 맛있는 마트</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_buying.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath}/resources/js/function_buying.js"></script>
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
                <p>부산광역시 해운대구 우동 센텀드림월드 5층</p>
                <button>배송관리</button>
            </div>
        </div>

       
        <div class="orderCheck">
            <div class="orderProducts">
                <h3>일반배송</h3>
				<table class="cartProducts">
					<thead>
						<tr>
							<td><input type="checkbox"></td>
							<td>상품/옵션정보</td>
							<td>구매예정금액</td>
							<td>행사/할인</td>
							<td>선택</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox"></td>
							<td>
								<div class="cartProdName">
									<img src="">
									<div>
										올리브파래&들기름재래전장김 20G*6봉
										<div class="inpCounter">
											<input type="text" value="1" name="cnt">
											<button>+</button>
											<button>-</button>
										</div>
									</div>
								</div>
								<p>최대 10개 구매가능</p>
							</td>
							<td>
								<div class="lastprice">
					                <span>17,990 원</span>
					                <div class="lastprice_icon">
					                    <div class="price_hidden">
					                        <dl>
					                            <dt>상품할인</dt>
					                            <dd>6000원</dd>
					                        </dl>
					                        <dl>
					                            <dt>총 할인금액</dt>
					                            <dd>11,990원</dd>
					                        </dl>
					                    </div>
					                </div>
					                <p>11,990원</p>
					            </div>
					        </td>
							<td>-</td>
							<td><button><div></div></button></td>
						</tr>
					</tbody>
				</table>
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
                    <button>전체상품 주문하기</button>
                    <button>선택상품 주문하기</button>
                </div>
            </div>
        </div>
    </div>    
</main>


<%@ include file="../footer.jsp" %>