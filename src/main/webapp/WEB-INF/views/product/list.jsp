<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>Insert title here</title>

<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_search.css">
<script>
	const member_idx = '${login.idx}'
	const productMain_idx = '${prodOne.idx}'
</script>
<script src="${cpath}/resources/js/function_header.js"></script>
<script src="${cpath}/resources/js/function_search.js"></script>
</head>

<body>
<div class="all">
	<div id="overlay">
	</div>
 <div id="search_top">
        <div class="inputResult">
            <p>'<strong>${keyword.keyword }</strong>'검색결과</p>
            <p><strong>${keyword.count }</strong>개의 상품이 있습니다</p>
        </div>
 </div>

<div id="search_main">

    <div id="left_category_bar">
        <div>
            <h4>카테고리</h4>
            <ul>
				<li>복잡한스크립트</li>
            </ul>
        </div>
        <div>
            <h4>혜택</h4>
            <ul>
                <li><label><input type="checkbox">행사상품</label></li>
                <li><label><input type="checkbox">무료배송</label></li>

            </ul>
        </div>

        <div class="starscore">
            <h4>별점</h4>
            <ul>
                <li><label><input type="checkbox">5점<span></span>⭐⭐⭐⭐⭐</label></li>
                <li><label><input type="checkbox">4점<span></span>⭐⭐⭐⭐</label></li>
                <li><label><input type="checkbox">3점<span></span>⭐⭐⭐</label></li>
                <li><label><input type="checkbox">2점<span></span>⭐⭐</label></li>
                <li><label><input type="checkbox">1점<span></span>⭐</label></li>
            </ul>
        </div>
        <div class="price">
        	
	            <h4>가격</h4>
	            <ul>
	                <li><label><input type="radio" name="money" value="all">전체</label></li>
	                <li><label><input type="radio" name="money" value="price1">1만원 미만</label></li>
	                <li><label><input type="radio" name="money" value="price2">1만원 이상 ~ 3만원 미만</label></li>
	                <li><label><input type="radio" name="money" value="price3">3만원 이상 ~ 5만원 미만</label></li>
	                <li><label><input type="radio" name="money" value="price4">5만원 이상</label></li>
	                <li><input type="text" name="money" placeholder="원"> ~ <input type="text" name="money" placeholder="원"><button type="button"></button></li>
	            </ul>
          
        </div>
    </div>
    <div id="right_category_list">
		<div class="category_select">
            <div class="category_select_list">하기싫은스크립트공간</div>
            <div><button>전체 해제<p></p></button></div>
        </div>
	    <div class="category_topbar">
	        <div class="category_suggest">
	            <ul>
	                <li><a href="${cpath}/product/list?param=${param.param}&recome=best"><button type="button">추천순</button></a></li>
	                <li><a href="${cpath}/product/list?param=${param.param}&recome=sumbuying"><button type="button">많이 팔린순</button></a></li>
	                <li><a href="${cpath}/product/list?param=${param.param}&recome=minprice"><button type="button">낮은 가격순</button></a></li>
	                <li><a href="${cpath}/product/list?param=${param.param}&recome=maxprice"><button type="button">높은 가격순</button></a></li>
	                <li><a href="${cpath}/product/list?param=${param.param}&recome=lotofreview"><button type="button">리뷰 많은순</button></a></li>
	            </ul>
	        </div>
<!-- 	        <div class="category_input"> -->
<!-- 	            <input type="text" placeholder="결과 내 재검색"><button class="input_icon"></button> -->
<!-- 	            <button class="input_button1"></button> -->
<!-- 	            <button class="input_button2"></button> -->
<!-- 	        </div> -->
	    </div>
	    <hr>
	    <div class="category_bottombar">
<c:forEach var="dto" items="${catelist }"> 
	        <div class="category_ltem">
	            <div class="category_ltemimg">
	                <a href="${cpath }/product/view/${dto.idx}"><img src="${cpath }/resources/getImage1/${dto.productImg }" width="218.4" height="218.4" ></a>
	                <div class="category_ltemimg_hover">
	                    <a href="${cpath }/product/view/${dto.idx}" target="_blank"><button class="button1"><img src="${cpath }/resources/img/hover_icon1.png"></button></a>
	                     <a href="#"><button class="button2"><img src="${cpath }/resources/img/hover_icon2.png" idx="${dto.idx }"></button></a>
	                </div>
	                <div class="dicount_icon">행사<br>상품</div>
	            </div>
	            <p>${dto.productName }</p>
	            <div class="lastprice">
	                <span><fmt:formatNumber value="${dto.productPrice }" />원</span>
	                <div class="lastprice_icon">
	                    <div class="price_hidden">
	                        <dl>
	                            <dt>판매가</dt>
	                            <dd><fmt:formatNumber value="${dto.productPrice }" />원</dd>
	                        </dl>
	                        <dl>
	                            <dt>상품할인</dt>
	                            <dd>-${dto.productDiscount }원</dd>
	                        </dl>
	                        <dl>
	                            <dt>할인가</dt>
	                            <dd><fmt:formatNumber value="${dto.productPrice-dto.productDiscount }" />원</dd>
	                        </dl>
	                    </div>
	                </div>
	                <p><fmt:formatNumber value="${dto.productPrice-dto.productDiscount }" />원</p>
	            </div>
	            <div class="buyAvg">
	                <span>⭐</span>
	                <span>4.4(3884건)  |</span>
	                <span>월 54,101개 구매</span>
	            </div>
	        </div>

</c:forEach>	
	        </div>
	    </div>
</div>
</div>
<script>
	const mainoverlay = document.getElementById('overlay')
	const cartbtn = document.querySelectorAll('.button2') 
	
	mainoverlay.addEventListener('click', closeModal)
	cartbtn.forEach(btn => btn.addEventListener('click', searchCart))

	</script>


<%@ include file="../footer.jsp"%>