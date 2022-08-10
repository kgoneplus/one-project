<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_view.css">
<script src="${cpath}/resources/js/function_view.js"></script>
</head>
<body>

<view>
        <viewmain>
            <div id="viewleft">
                <div class="product_mainimg" style="background-image: url(${cpath}/resources/img/prodslideImg1.jpeg);"></div>
                <!-- 자바스크립트 슬라이드이미지넣어야함! -->
                <div class="product_slide">
					<div class="prodImg_wrap">
						<div class="prodslideImg" 
							style="background-image: url(${cpath}/resources/img/prodslideImg1.jpeg);"></div>
						<div class="prodslideImg" 
							style="background-image: url(${cpath}/resources/img/prodslideImg2.jpeg);"></div>
						<div class="prodslideImg" 
							style="background-image: url(${cpath}/resources/img/prodslideImg3.jpeg);"></div>
						<div class="prodslideImg" 
							style="background-image: url(${cpath}/resources/img/prodslideImg4.jpeg);"></div>
						<div class="prodslideImg" 
							style="background-image: url(${cpath}/resources/img/prodslideImg5.jpeg);"></div>
					</div>
					<div class="prodslideBtn">
						<div>
							<button type="button" class="prevBtn"></button>
						</div>
						<div>
							<button type="button" class="nextBtn"></button>
						</div>
					</div>
                </div> 
                
            </div>
            <div id="viewright">
                <div class="productTitle font20"><strong>제스프리 썬 골드키위 8-10입(팩)</strong></div>
                <p class="madeln">원산지: 뉴질랜드</p>
                <div class="productOrgprice"><p>판매가</p><span class="OrgPrice"><em>12990</em>원</span>
                    <span class="nanoPrice">(1개당 12,990원)</span>
                </div>
                <div class="productCardDC"><p>카드할인가</p><span class="cardDC">9,990원</span>
                    <span class="nanoPrice">(1개당 9,990원)</span>
                </div>
                <table id="prodtable">
                    <tr>
                        <th>카드혜택</th>
                        <td>
                            <span>무이자 할부 정보<button type="button" class="btn"></button></span>
                            <span>포인트 결제<button type="button" class="btn"></button></span>
                        </td>
                    </tr>
                    <tr>
                        <th>적립혜택</th>
                        <td>마이홈플러스 포인트</td>
                    </tr>
                    <tr>
                        <th>배송비</th>
                        <td >3000원 <span class="nanoPrice">40,000원 이상 구매시 무료</span></td>
                    </tr>
                    <tr>
                        <th>배송정보</th>
                        <td>배송지에 따라 배송정보/가격/행사가 다를 수 있으므로,<br>
                            <a href="#">로그인</a> 후 확인해주세요</td>
                    </tr>
                </table>
                <div class="buycount">
                    <div class="productTitle">제스프리 썬 골드키위 8-10입(팩)</div>
                    <div class="qtyCounter">
                        <div class="counter">
                            <button type="button" class="mabtn">-</button>
                            <input class="count" value="1">
                            <button type="button" class="plbtn">+</button>
                        </div>
                        <div class="qtyPrice">
                            <strong class="qtyPrice1">12990</strong>원
                        </div>
                    </div>
                </div>
                <p class="txtMaxbuy">최대12개 구매가능</p>

            </div>
        </viewmain>
        <viewmain>
            <div id="viewleft">
                <div class="product_reviewSummary"></div>
            </div>
            <div id="viewright">
                <div class="product_buytotal">
                    <div class="product_buytotal1">구매예정금액</div>
                    <div class="product_buysum"><strong>12990</strong>원</div>
                </div>
                <div class="product_buybtn">
                    <button type="button" class="product_heartbtn"><i class="heart"></i></button>
                    <button type="button" class="product_nowbtn">바로구매</button>
                    <button type="button" class="product_cartbtn">장바구니</button>
                </div>
            </div>
        </viewmain>
        <viewmain>
            <div id="viewleft">
                <div class="catehotProduct">
                    <div class="hotItem">카테고리 내 인기상품</div>
                    <div class="hotslide"></div>
                </div>
            </div>
            <div id="viewright">
                <div class="allhotProduct">
                    <div class="hotItem">실시간 인기상품</div>
                    <div class="hotslide"></div>
                </div>
            </div>
        </viewmain>
        <div id="viewmain1">
            <div class="viewmain_header">
                <div class="prodDetailTab">
                    <button type="button" class="product_detail selected prodDetailbutton">상품상세</button>
                    <button type="button" class="product_review prodDetailbutton">상품리뷰</button>
                    <button type="button" class="product_as prodDetailbutton">배송/교환/반품</button>
                </div>
            </div>
            <div class="prodInner">
            	<div class="prodInner2">
	                <div class="prodimg selected">
	                    <img src="${cpath }/resources/img/viewimg1.jpeg">
	                    <img src="${cpath }/resources/img/productmainimg.jpg">
	                    <div class="prodfooter">
                <div class="detailsubTitle"><h3>상품고시정보</h3></div>
                <table id="prodDetailstable">
                    <tr>
                        <td>상품명</td>
                        <td>제스프리 썬 골드키위 8-10입(팩)</td>
                    </tr>
                    <tr>
                        <td>상품코드/모델</td>
                        <td>115034315 (상품문의 시 필요할 수 있으므로 참고하시기 바랍니다.)</td>
                    </tr>
                    <tr>
                        <td>상품구성</td>
                        <td>1.1kg 내외</td>
                    </tr>
                    <tr>
                        <td>포장단위별 내용물의 용량(중량), 수량, 크기</td>
                        <td>1.1kg 내외</td>
                    </tr>
                    <tr>
                        <td>원산지</td>
                        <td>뉴질랜드</td>
                    </tr>
                    <tr>
                        <td>관련법상 표시사항</td>
                        <td>해당 사항 없음</td>
                    </tr>
                    <tr>
                        <td>생산자 및 소재지</td>
                        <td>순수유통</td>
                    </tr>
                    <tr>
                        <td>제조연월일 및 유통기한</td>
                        <td>점포 상품으로 각 점포별 제조일과 입고일이 상이하여, 유통기한이 다릅니다. 점포상품과 동일한 품질을 유지한 상품입니다.</td>
                    </tr>
                    <tr>
                        <td>보관방법/취급방법</td>
                        <td>직사광선을 피해 서늘한 장소에 보관하시기 바랍니다.</td>
                    </tr>
                    <tr>
                        <td>A/S책임자 및 소비자상담 관련 전화번호</td>
                        <td>1577-3355</td>
                    </tr>
                    <tr>
                        <td>식품 등의 표시, 광고에 관한 법률에 따른 소비자안전을 위한 주의사항</td>
                        <td>해당없음</td>
                    </tr>
                </table>
            </div>
	                </div>
	                <div class="prodreview">
	                    <p>테스트페이지1</p>
	                </div>
	                <div class="prodDelivery">
	                	<div class="prodDetailArea">
	                		<div class="detailsubTitle_delivery"><h3>배송안내</h3></div>
			                    <div class="prodDeliveryTypeBox">
			                    	<ul class="express">
			                    		<li>
			                    			<i class="ico ico01"></i>
			                    			<div class="prodDeliveryTypeTxt">
			                    				<strong class="prodDeliveryType">점포배송(자차배송)</strong>
			                    				<em>내가 원하는 아무때나!</em>
			                    				<p>지정한 날짜와 시간에 정확하게 도착해요.</p>
			                    			</div>
			                    		</li>
			                    		<li>
			                    			<i class="ico ico02"></i>
			                    			<div class="prodDeliveryTypeTxt">
			                    				<strong class="prodDeliveryType">즉시배송</strong>
			                    				<em>주문 시 1시간 내 배송!</em>
			                    				<p>가까운 익스프레스 매장에서 바로 도착해요.</p>
			                    			</div>
			                    		</li>
			                    	</ul>
			                  	</div>
			                  	<div class="prodDeliveryTable1">
			                  		<table>
			                  			<tr>
			                  				<th>배송비</th>
			                  				<td>3,000원 (40,000원 이상 구매 시 무료) / 묶음배송(판매자별)</td>
			                  			</tr>
			                  		</table>
			                  	</div>
			                  	<div class="prodDeliveryTable1 tbbd1">
			                  		<table>
			                  			<tr>
			                  				<th></th>
			                  				<th>점포배송(자차배송)</th>
			                  				<th>즉시배송</th>
			                  			</tr>
			                  			<tr>
			                  				<th>서비스 지역</th>
			                  				<td>배송지 주변에 온라인 장보기대행 서비스를 시행하는 홈플러스 매장 (대형마트)이 있는 지역</td>
			                  				<td>배송지 주변에 익스프레스 서비스를 시행하는 홈플러스 익스프레스 매장이 있는 지역</td>
			                  			</tr>
			                  			<tr>
			                  				<th>배송방법</th>
			                  				<td>특수 제작된(냉장/냉동고 장착) 차량으로 직접 배송</td>
			                  				<td>오토바이 퀵으로 배송</td>
			                  			</tr>
			                  			<tr>
			                  				<th>배송시간</th>
			                  				<td>현재시점에서 4일내 시간별로 선택가능 (예약마감 시간대 제외)</td>
			                  				<td>주문 시 1시간 내 배송
												(단, 휴무일, 예약마감 시간대 제외, 기상악화나 천재지변 등의 상황에 의해 다소 지연될 수 있음)</td>
			                  			</tr>
			                  			<tr>
			                  				<th>배송비</th>
			                  				<td>배송매장/배송시간에 따라 차등적용</td>
			                  				<td>기준 금액 이상 주문 가능하며 유료</td>
			                  			</tr>
			                  		</table>
			                  	</div>
			                  	<div class="prodDeliveryTable1 tbbd1 tbbd2">
			                  	<div class="detailsubTitle_delivery"><h3>교환/반품안내</h3></div>
			                  		<table>
			                  			<tr>
			                  				<th>교환/반품 안내</th>
			                  				<td>
			                  					<ul class="tableList3">
			                  						<li>반품 및 교환은 상품을 받으신 날로부터 30일 이내 가능합니다. (단, 신선제품의 경우 7일 이내)</li>
			                  						<li>상품 등의 내용이 표시광고 내용과 다르거나 계약내용과 다른 경우 상품을 받은 날로부터 3개월 이내 또는 사실을 인지하신 날로부터 30일 이내에 반품/교환이 가능합니다.</li>
			                  						<li>홈페이지에서의 교환은 매장상품, 홈플러스 직배송상품에 한하여 가능하며, 업체 택배상품은 반품 후 재구매 하셔야 합니다.</li>
			                  						<li>반품하실 경우, 상품구매 시 적립된 포인트는 회수되며 적용된 쿠폰은 유효기간이 남은 쿠폰에 한하여 반환됩니다.</li>
			                 						<li>교환하실 경우, 동일상품으로만 교환이 가능합니다.</li>
			                  						<li>고객님의 실수나 변심에 의한 반품/교환인 경우, 카드결제에 대한 취소 수수료 및 반품배송료(회수비용)를 부담하셔야 합니다. 반품배송료는 매장기사가 방문하여 상품 회수할 때 지급해주시기 바랍니다.
														※ 마트 매장상품 반품 배송료 4천원, 익스프레스 매장상품 반품 배송료 3천원</li>
			                  						<li>지급 받으신 사은품은 회수되며 카드 청구할인과 무이자행사의 적용도 함께 취소됩니다. (고객님의 변심에 의한 부분 반품인 경우, 잔여금액이 장바구니쿠폰 할인 기준 금액 미만이면 자동차감 후 환불 됩니다.)</li>
			                  						<li>반품 및 교환을 매장에서 직접 하시려면 상품수령 시 받으신 주문내역서(영수증)을 반드시 지참하셔야하며, 사은품을 수령한 경우 사은품도 같이 반품 해주셔야 합니다.</li>
			                  					</ul>
			                  				</td>
			                  			</tr>
			                  			<tr>
			                  				<th>교환/반품 가능기준</th>
			                  				<td>
			                  					<ul class="tableList3">
			                  						<li>배송된 상품이 주문 내역과 상이하거나 웹 상에서 제공된 정보와 상이할 경우</li>
			                  						<li>파손, 손상되거나 심하게 오염되어 있을 경우</li>
			                  						<li>[방문판매에 대한 법]상 표시하여야 할 사항을 표시하지 않은 상태에서 주문이 이뤄질 경우</li>
			                  						<li>상품이나 배송상 문제는 없지만 단지 상품이 마음에 들지 않을 경우에는 고객 변심에 의한 교환/반품 시 배송완료 후 30일 이내에 홈플러스 매장에 방문하여 교환/반품 가능 (단, 기사님 방문을 요청하실 경우 반송에 필요한 배송비가 발생됩니다.)</li>
			                  					</ul>
			                  				</td>
			                  			</tr>
			                  			<tr>
			                  				<th>교환/반품 불가기준</th>
			                  				<td>
			                  					<ul class="tableList3">
			                  						<li>고객님이 책임 사유 있는 사유로 포장된 상품이 훼손된 경우</li>
			                  						<li>배송된 상품의 박스를 개봉하여 하자 없음을 확인 후 설치가 완료된 경우 (예 : 가전제품, 가구, 헬스기기 등)</li>
			                  						<li>고객님의 사용 또는 일부 소비에 의하여 상품 등의 가치가 현저히 감소한 경우 (예 : 가공식품, 신선식품)</li>
			                  						<li>시간이 경과되어 재판매가 곤란할 정도로 상품 등의 가치가 상실된 경우 (예 : 가공식품 등)</li>
			                  						<li>복제가 가능한 상품 등의 포장을 훼손한 경우 (예 : 도서, DVD, CD, 등 복제가 가능한 상품)</li>
			                  						<li>포장 개봉 시 상품가치가 훼손되는 식품, 화장품, 완구, 소프트웨어 등의 상품일 경우</li>
			                  						<li>기타 전자상거래 등에서의 소비자보호에 관한 법률이 정하는 소비자 청약철회 제한 내용에 해당되는 경우</li>
			                  					</ul>
			                  				</td>
			                  			</tr>
			                  		</table>
			                  		<div class="txtCaution">
			                  			<strong>유의사항</strong>
			                  			<ul>
			                  				<li>반품/교환은 [마이페이지] > [주문배송조회]에서 신청 가능하며, 점포상품 교환은 고객센터를 통해서만 신청 가능합니다. 기타 궁금하신 사항은 [고객센터] > [FAQ]를 참고해주세요.</li>
			                  				<li>온라인 쇼핑에서 판매하는 상품은 상기 규정이외 정당한 소비가 피해에 대하여 소비자 기본법에 의한 소비자 분쟁 해결 기준에 의거 수리, 교환, 환불해 드립니다.</li>
			                  			</ul>
			                  		</div>
			                  	</div>
	                	</div>
	                </div>
	                 
            	</div>
                
                <div class="prodremocon">
                    <div class="buycount remo">
                        <div class="productTitle">제스프리 썬 골드키위 8-10입(팩)</div>
                        <div class="qtyCounter">
                            <div class="counter">
                                <button type="button" class="mabtn">-</button>
                                <input class="count" value="1">
                                <button type="button" class="plbtn">+</button>
                            </div>
                            <div class="qtyPrice">
                                <strong class="qtyPrice1">12990</strong>원
                            </div>
                        </div>
                    </div>
                    <div class="product_buytotal">
                        <div class="product_buytotal1">구매예정금액</div>
                        <div class="product_buysum"><strong>12990</strong>원</div>
                    </div>
                    <div class="product_buybtn">
                        <button type="button" class="product_heartbtn"><i class="heart"></i></button>
                        <button type="button" class="product_nowbtn">바로구매</button>
                    </div>
                    <button type="button" class="product_cartbtn">장바구니</button>
                </div>
            </div>

            
        </div>
        
    </view>

<script>
	const plbtn1 = Array.from(document.querySelectorAll('.plbtn'))
	plbtn1.forEach(btn => btn.addEventListener('click', plCounter))
	
	const mabtn1 = Array.from(document.querySelectorAll('.mabtn'))
	mabtn1.forEach(btn => btn.addEventListener('click', maCounter))
	
	const pdtArray = Array.from(document.querySelectorAll('.prodDetailTab > button'))
	const divArray = Array.from(document.querySelectorAll('div.prodInner2 > div'))
	pdtArray.forEach(button => button.addEventListener('click', pdtClickHandler))
	
	document.querySelector('.prevBtn').onclick = prodslide
	document.querySelector('.nextBtn').onclick = prodslide
	
// 	const pdtslideArray = Array.from(document.querySelectorAll('.prodImg_wrap > .prodslideImg'))
// 	const slidedivArray = Array.from(document.querySelectorAll('div.product_mainimg > div'))
// 	pdtslideArray.forEach(button => button.addEventListener('click', pdtslideClickHandler))
	
	const pdtslideArray = Array.from(document.querySelectorAll('.prodImg_wrap > .prodslideImg'))
	pdtslideArray.forEach(img => img.addEventListener('click', pdtviewSlide))
	
</script>

<%@ include file="../footer.jsp"%>