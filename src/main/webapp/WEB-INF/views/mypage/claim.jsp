<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<title>취소/반품/교환 조회 | MY 홈플러스 | 홈플러스</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
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
                    <li><a href="${cpath }/mypage/qna">상품문의</a></li>
                </ul>
            </div>
            
            <div class="mypageLeftWrapper">
                <h3>MY 회원정보</h3>
                <ul>
                    <li><a href="${cpath }/mypage/myinfo">회원 정보 관리</a></li>
                    <li><a href="${cpath }/mypage/shipacc">배송 정보 관리</a></li>
                    <li><a href="${cpath }/mypage/agree">개인정보이용내역</a></li>
                    <li><a href="${cpath }/mypage/withdraw">회원탈퇴</a></li>
                </ul>
            </div>
        </aside>
              
        <section>
            <div class="mypageTitleBox mypageSubtitle">
                <div class="titleArea">
                    <h2>취소/반품/교환 조회</h2>
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

            <div class="wishListBox erasebottom">
                <div class="mypageTitleBox">
                    <div class="ordertitleArea">
                        <h2>2022.07.27</h2>
                        <span>주문번호 00000000</span>
                        <a href="${cpath}/mypage/orderdetail">상세보기 ></a>
                    </div>
                </div>
            </div>
            <div class="dateFilter">
                <div class="claimstatus">
                    <div class="claimstatus_icon"></div>
                    <p>취소완료</p>
                </div>
                <div class="orderProductlist">
                    <div class="orderProduct">
                        <img src="">
                        <a>항공직송 체리(미국) 450G</a>
                        <span>17900원</span> | <span>1개</span>
                    </div>
                </div>
            </div>

        </section>
    </div>
</main>

<%@ include file="../footer.jsp" %>