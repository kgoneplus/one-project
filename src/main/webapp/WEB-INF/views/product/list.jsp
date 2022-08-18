<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>Insert title here</title>

<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_search.css">
<script src="${cpath}/resources/js/function_header.js"></script>

</head>

<body>
<div class="all">
	<div id="overlay">
	</div>
 <div id="search_top">
        <div class="inputResult">
            <p>'<strong>${keyword }</strong>'검색결과</p>
            <p><strong>805</strong>개의 상품이 있습니다</p>
        </div>

        <div class="search_word">
            <table>
                <tr>
                    <th>연관검색어</th>
                    <td>
                        <a>자두</a>
                        <a>망고</a>
                        <a>황도</a>
                        <a>체리</a>
                        <a>포도</a>
                        <a>살구</a>
                        <a>수박</a>
                        <a>파인애플</a>
                        <a>메론</a>
                    </td>
                </tr>
            </table>
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
                <li><label><input type="radio">전체</label></li>
                <li><label><input type="radio">1만원원 미만</label></li>
                <li><label><input type="radio">1만원 ~ 3만원 미만</label></li>
                <li><label><input type="radio">3만원 ~ 5만원 미만</label></li>
                <li><label><input type="radio">5만원 이상</label></li>
                <li><input type="text" placeholder="원"> ~ <input type="text" placeholder="원"><button type="button"></button></li>
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
	                <li>추천순</li>
	                <li>많이 팔린순</li>
	                <li>낮은 가격순</li>
	                <li>높은 가격순</li>
	                <li>리뷰 많은순</li>
	            </ul>
	        </div>
	        <div class="category_input">
	            <input type="text" placeholder="결과 내 재검색"><button class="input_icon"></button>
	            <button class="input_button1"></button>
	            <button class="input_button2"></button>
	        </div>
	    </div>
	    <hr>
	    <div class="category_bottombar">
<c:forEach var="dto" items="${catelist }"> 
	        <div class="category_ltem">
	            <div class="category_ltemimg">
<<<<<<< HEAD
	                <a href="${cpath }/product/view/${dto.idx}"><img src="${cpath }/resources/pImg/${dto.productImg }" ></a>
=======
	                <a href="${cpath }/product/view"><img src="${cpath }/resources/getImage1/${dto.productImg }" width="218.4" height="218.4"></a>
>>>>>>> branch 'master' of https://github.com/kgoneplus/one-project.git
	                <div class="category_ltemimg_hover">
	                    <button class="button1"><img src="${cpath }/resources/img/hover_icon1.png"></button>
	                    <button class="button2"><img src="${cpath }/resources/img/hover_icon2.png"></button>
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
	                            <dd>-6000원</dd>
	                        </dl>
	                        <dl>
	                            <dt>할인가</dt>
	                            <dd>11,990원</dd>
	                        </dl>
	                    </div>
	                </div>
	                <p>11,990원</p>
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
	const category = document.querySelector('#cate > a')
	
	category.addEventListener('click', categoryModal)
	
</script>


<%@ include file="../footer.jsp"%>