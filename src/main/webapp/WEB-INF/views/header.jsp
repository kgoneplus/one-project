<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<script>
	const cpath = '${cpath}'
</script>
<script src="${cpath}/resources/js/function_main.js"></script>
</head>
<body>
	 <header>      
        <div class="top">   
            <div class="left">
                <a href="${cpath }"><img src="${cpath }/resources/img/oneplus.png" width="160px" height="40px"></a>
            </div>
            
            <div class="input">
                <input type="search" placeholder=" 검색어를 입력하세요" >
            </div>
            
            <div class="right">
                   <div><a href="${cpath }/member/login"><img src="${cpath }/resources/img/login.png" width="40px" height="40px"></a></div>
                   <div class="member_img">
                        <a href="${cpath }/mypage/mypageMain"><img src="${cpath }/resources/img/member.png" width="40px" height="40px"></a>  
                        <ul> 
                            <li><a href="#">주문/배송조회</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">회원정보</a></li>
                        </ul> 
                </div>   
                <div><a href="#"><img src="${cpath }/resources/img/cart.png" width="40px" height="40px"></a></div>
            </div>
        </div>
        <nav>
            <ul>
                <li id="cate">
                    <a href="#">≡ 카테고리</a>
                    <div class="allmenu">
                        <div class="left">
                            <ul>
                                <li>
                                    <a href="#">과일</a>
                                    <ul class="allmenu2">
                                        <li>
                                            <ol><a href="#">사과/배</a></ol>
                                            <ol><a href="#">감귤/만감류</a></ol>
                                            <ol><a href="#">토마토</a></ol>
                                            <ol><a href="#">딸기/체리/블루베리</a></ol>
                                            <ol><a href="#">감/홍시/곶감/밤</a></ol>
                                            <ol><a href="#">수박/메론/참외</a></ol>
                                            <ol><a href="#">포도/자두/복숭아</a></ol>
                                            <ol><a href="#">바나나/파인애플</a></ol>
                                            <ol><a href="#">오렌지/자몽/레몬</a></ol>
                                            <ul class="allmenu3">
                                                <li>
                                                    <ol><a href="#">배</a></ol>
                                                    <ol><a href="#">사과</a></ol>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

                                <li><a href="#">쌀/잡곡</a></li>
                                <li><a href="#">채소</a></li>
                                <li><a href="#">견과</a></li>
                                <li><a href="#">수산물/건어물</a></li>
                                <li><a href="#">정육/계란</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li><a href="#">신상품</a></li>
                <li><a href="#">단독특가</a></li>
                <li><a href="#">베스트</a></li>
                <li><a href="#">자주구매</a></li>
                <li><a href="#">택배배송</a></li>
            </ul>

        </nav>
    </header>
