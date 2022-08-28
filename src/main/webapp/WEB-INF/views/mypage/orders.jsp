<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>주문/배송 조회 | 홈플러스</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
<script src="${cpath}/resources/js/function_mypage.js"></script>
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
                    <li><a href="${cpath }/mypage/shipacc">배송 정보 관리</a></li>
                    <li><a href="${cpath }/mypage/agree">개인정보이용내역</a></li>
                    <li><a href="${cpath }/mypage/withdraw">회원탈퇴</a></li>
                </ul>
            </div>
        </aside>
              
        <section>
            <div class="mypageTitleBox mypageSubtitle">
                <div class="titleArea">
                    <h2>주문/배송 조회</h2>
                </div>
                <div class="rightArea"></div>
            </div>
            <div class="dateFilter">
                <form>
                    <div class="filterlist">
                        <div class="filterItem">
                            <p>조회기간</p>
                            <input type="date" name="sthStartDate">
                            <p>~</p>
                            <input type="date" name="sthEndDate">
                        </div>
                        <div class="filterItem">
                            <ul>
                                <li>1개월</li>
                                <li>3개월</li>
                                <li>6개월</li>
                            </ul>
                        </div>
                        <div class="filterItem"><button class="inquiry">조회</button></div>
                    </div>
                </form>
            </div>

<!--             <div class="wishListBox erasebottom"> -->
<!--                 <div class="mypageTitleBox"> -->
<!--                     <div class="ordertitleArea"> -->
<!--                         <h2>2022.07.27</h2> -->
<!--                         <span>주문번호 00000000</span> -->
<%--                         <a href="${cpath}/mypage/orderdetail">상세보기 ></a> --%>
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <div class="dateFilter"> -->
<!--                 <div class="claimstatus"> -->
<!--                     <div class="claimstatus_icon"></div> -->
<!--                     <p>취소완료</p> -->
<!--                 </div> -->
<!--                 <div class="orderProductlist"> -->
<!--                     <div class="orderProduct"> -->
<!--                         <img src=""> -->
<!--                         <a>항공직송 체리(미국) 450G</a> -->
<!--                         <span>17900원</span> | <span>1개</span> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="orderProductlist_overlay"></div> -->
<!--             </div> -->
			<c:forEach var="list" items="${finalOrderlist}">
            <div class="wishListBox erasebottom">
                <div class="mypageTitleBox">
                    <div class="ordertitleArea">
                        <h2>주문날짜 수정필요</h2>
                        <span>주문번호 수정필요</span>
<%--                         <a href="${cpath}/mypage/orderdetail">상세보기 ></a> --%>
                    </div>
                </div>
            </div>
            <div class="dateFilter">
                <div class="stepBox">
                    <ul>
                        <li class="stepBoxselected">결제완료</li>
                        <li>상품 준비중</li>
                        <li>배송중</li>
                        <li>배송완료</li>
                    </ul>
                </div>
                <div class="orderProductlist">
                	<c:forEach var="item" items="${list}">
	                    <div class="orderProduct">
	                        <img src="${cpath}/resources/getImage1/${item.productImg}">
	                        <a>${item.productName}</a>
	                        <span>${item.productPrice}원</span> | <span>${item.productCnt}개</span>
	                    </div>
                	</c:forEach>
                </div>
            </div>
            </c:forEach>
            <div class="orders_tablist">
	            <ul>
	                <li class="tablistSelected">배송 처리 상태 안내</li>
	                <li>상품추가주문(합배송) 안내</li>
	                <li>반품/교환 안내</li>
	                <li>취소/반품/교환 처리 상태 안내</li>
	                <li>영수증 발급/조회 안내</li>
	            </ul>
            </div>
            <div class="orders_tablist_content">
                <div class="deliverystep tablistContentSelected">
                    <ul>
                        <li>
                            <div class="iconBox">
                                <img src="${cpath }/resources/img/ico_delivery01.png">
                                <strong>결제완료</strong>
                                <p>요청하신 주문에 대한 결제가<br>완료된 상태입니다.</p>
                            </div>
                            <div class="deliverycontent">
                                <ul>
                                    <li>• 주문취소 가능</li>
                                    <li>• 배송지변경 가능</li>
                                    <li>• 배송시간변경 가능</li>
                                    <li>• 상품추가주문 가능</li>
                                    <li>• 주문취소 가능</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="iconBox">
                                <img src="${cpath }/resources/img/ico_delivery02.png">
                                <strong>상품준비중</strong>
                                <p>배송할 상품을 중비중에 있습니다.</p>
                            </div>
                            <div class="deliverycontent">
                                *매장상품은 전문피커가 장보기<br>
                               	대행중, 택배상품은 상품수급 및<br>
                             	포장중입니다.
                            </div>
                        </li>
                        <li>
                            <div class="iconBox">
                                <img src="${cpath }/resources/img/ico_delivery03.png">
                                <strong>배송중</strong>
                                <p>홈플러스 차량/오토바이/택배 등을<br>통해 상품을 배송중입니다.</p>
                            </div>
                            <div class="deliverycontent">
                               *픽업인 경우 [준비완료]로 표시<br>
                               	되며, 픽업장소에 상품이<br>
                             	준비된 상태입니다.
                            </div>
                        </li>
                        <li>
                            <div class="iconBox">
                                <img src="${cpath }/resources/img/ico_delivery04.png">
                                <strong>배송완료</strong>
                                <p>주문하신 상품의 배송이<br>완료되었습니다.</p>
                            </div>
                            <div class="deliverycontent">
                               *픽업인 경우 [픽업완료]로 표시<br>
                               	되며, 고객님이 상품픽업을<br>
                              	 완료한 상태 입니다.<br>
                               *반품/교환신청 가능
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="addProduct">
                	<div class="infoItem">
	                    <div class="addProduct_title">상품추가주문</div>
	                    <div class="addProduct_content">
	                    	<ul>
		                        <li>• 매장상품 주문 건에 한하여, 매장상품만 상품추가주문(합배송) 가능합니다. (택배상품 및 익스프레스상품은 상품추가주문이 불가합니다.)</li>
		                        <li>• 상품추가주문(합배송)은 매장상품 처리상태가 결제완료 일 때만 가능하며, 기존주문 당 1회만 가능합니다.</li>
		                        <li>• 합배송 주문 취소 시 기존주문에 다시 상품추가주문(합배송)은 불가합니다.</li>
		                        <li>• 상품추가주문(합배송) 결제 시 [카드 청구할인]은 기존주문과 합산하여 적용되지 않습니다.</li>
		                        <li>• 기존주문 시 결제한 매장상품 배송비가 있을 경우, 기존주문과 상품추가주문(합배송)의 결제금액을 합산하여 배송비를 재계산하고, 배송비 차액을 마일리지로 payback 해드립니다. (단, 기존주문 또는 상품추가주문(합배송)의 주문취소 시 마일리지는 회수됩니다.)</li>
		                        <li>• 배송비 마일리지 payback은 홈플러스 회원만 가능하며, 다른 payback이벤트와 중복 적용 되지 않습니다.</li>
		                        <li>• 마일리지는 배송완료 후 익일 18시 이후에 발급됩니다.</li>
	                    	</ul>
	                    </div>
                	</div>
                </div>
            	<div class="addProduct">
            		<div class="infoItem">
	            		<div class="addProduct_title">배송상품</div>
	                    <div class="addProduct_content">
	                    	<ul>
		                        <li>• 반품 및 교환은 상품을 받으신 날로부터 7일 이내(영업일 기준)에 가능합니다.</li>
		                        <li>• 교환은 동일상품만 가능하며, 교환신청상품 회수 완료 후 교환상품이 배송되므로 약 5~7일 소요됩니다.(단, 주말제외)</li>
		                        <li>• 반품 및 교환 사유 귀책이 구매자일 경우(고객의 실수 및 변심 등), 추가 배송비가 발생할 수 있으며, 추가 증정품을 수령한 경우 추가 증정품도 같이 반품해주셔야 합니다. (수거지/수령지가 초기 배송지와 다르게 제주/도서산간 지역으로 변경된 경우 추가 배송비가 발생합니다.)</li>
		                        <li>• 판매자별 반품/교환 정책이 다르므로, 자세한 정보는 상품상세 페이지 참고바랍니다.</li>
	                    	</ul>
	                    </div>
            		</div>
            	</div>
            	<div class="exchangestep">
            		<div class="infoItem">
	            		<div class="addProduct_title">취소</div>
	                    <div class="addProduct_content">
	                    	<ul>
		                        <li>• 취소신청 : 주문한 상품을 취소 신청한 상태입니다.</li>
		                        <li>• 취소처리중 : 취소 신청한 내용을 관리자가 확인 중입니다.</li>
		                        <li>• 취소완료 : 취소 신청한 상품 환불이 완료되었습니다.</li>
		                        <li>• 취소철회 : 고객님이 취소 요청한 내용을 철회한 상태입니다.</li>
		                        <li>• 취소거부 : 취소 요청한 상품을 이미 출고완료하여 취소처리가 불가한 상태입니다.</li>
	                    	</ul>
	                    </div>
            		</div>
            		<div class="infoItem">
	            		<div class="addProduct_title">반품</div>
	                    <div class="addProduct_content">
	                    	<ul>
		                        <li>• 반품신청 : 주문한 상품을 반품 신청한 상태입니다.</li>
		                        <li>• 반품처리중 : 반품 신청한 상품을 회수하여, 확인 중입니다.</li>
		                        <li>• 반품완료 : 취소신청한 상품 환불이 완료되었습니다.</li>
		                        <li>• 반품철회 : 고객님이 반품 요청한 내용을 철회한 상태입니다.</li>
		                        <li>• 반품거부 : 반품 요청한 상품을 확인하여 반품처리가 불가하다고 확인된 상태입니다.</li>
	                    	</ul>
	                    </div>
            		</div>
            	    <div class="infoItem">
	            		<div class="addProduct_title">교환</div>
	                    <div class="addProduct_content">
	                    	<ul>
		                        <li>• 교환신청 : 주문한 상품을 교환 신청한 상태입니다./li>
		                        <li>• 교환처리중 : 교환 신청한 상품을 회수하여 확인하고, 교환받을 상품을 준비하고 있습니다.</li>
		                        <li>• 교환완료 : 교환신청한 상품이 배송완료되어, 교환처리가 완료된 상태입니다.</li>
		                        <li>• 교환철회 : 고객님이 교환 요청한 내용을 철회한 상태입니다.</li>
		                        <li>• 교환거부 : 교환 요청한 상품을 확인하여 교환처리가 불가하다고 확인된 상태입니다.</li>
	                    	</ul>
	                    </div>
            		</div>
            	</div>
            	<div class="receiptInfo">
            		<div class="infoItem">
	            		<div class="addProduct_title">영수증 발급/조회</div>
	                    <div class="addProduct_content">
	                    	<ul>
		                        <li>• 온라인 쇼핑몰에서 발급하는 전자 영수증은 결제수단과 상관없이 발급 받으실 수 있으며, 결제하신 금액에 대해 실시간으로 영수하였음을 증명하는 전자문서 입니다.</li>
		                        <li>• 세금계산서는 2007년부터 현금 거래에 대해, 국세청에 내용이 자동 전송됨으로써 별도로 발급하여 드리지 않습니다.</li>
		                        <li>• 현금영수증의 경우 결제 완료 시 자동 발급되며, 현금 거래에 대한 증빙 자료 출력은 국세청 현금영수증 홈페이지를 참고하셔 주시기 바랍니다.</li>
		                        <li>• 자진 발급된 현금영수증을 소득공제나 지출증빙용으로 변경하시려면, 국세청 현금영수증 사이트에서 변경하시거나 국세청 현금영수증상담센터 (국번없이 126)로 문의하시기 바랍니다.</li>
		                        <li>• 기타 자세한 문의사항은 고객센터(1577-3355)로 연락 주시기 바랍니다.</li>
	                    	</ul>
	                    </div>
            		</div>
            	</div>
            </div>
        </section>
    </div>
</main>

<script>
	const ordersTablist = Array.from(document.querySelectorAll('.orders_tablist > ul > li'))
	const ordersTablistContent = Array.from(document.querySelectorAll('.orders_tablist_content > div'))
	ordersTablist.forEach(li => li.addEventListener('click', ordersTablistHandler))
</script>


<%@ include file="../footer.jsp" %>