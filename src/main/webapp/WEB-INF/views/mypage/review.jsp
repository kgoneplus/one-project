<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>리뷰 | MY 홈플러스 | 홈플러스</</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
<script src="${cpath }/resources/js/function_mypage.js"></script>
<style>
.review_modal {
	display: none;
}
.review_overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 70%;
	z-index: 5;
}
.review_content {
	position: absolute;
	z-index: 6;
	width: 548px;
	height: 600px;
	justify-content: center;
	align-items: center;
	background-color: white;
	overflow: auto;
	top: 50%;
  	left: 50%;
  	transform: translate(-50%, -50%);
  	border: 1px solid black;
}
.review_hidden {
	display: none;
}
.review_content > div:nth-child(1) {
	font-weight: bold;
	padding: 25px;
	display: flex;
	justify-content: space-between;
	border-bottom: 2px solid gray;	
}
.review_close {
	cursor: pointer;
}
.review_content > div:nth-child(2) {
	margin: 20px 15px;
	display: flex;
}
.review_content > div:nth-child(2) > div:nth-child(2) {
	margin: auto;
	font-weight: bolder;
}
.review_content > div:nth-child(3) {
	margin: 35px 25px;
	text-align: center;
	background-color: #f3f3f3;
	height: 100px;
	padding-top: 30px;
}
.review_content > div:nth-child(3) > div:first-child {
	margin: 10px 0;
}
.review_content > div:nth-child(3) {
	margin: 35px 25px;
	text-align: center;
	background-color: #f3f3f3;
	height: 100px;
}
.review_item_check {
	margin: 35px 25px;
}
.review_item_click {
	display: flex;
	justify-content: space-between;
	padding: 10px 0;
}
.review_item_click > p {
	width: 170px;
}
.review_item_check > div:nth-child(1) {
	font-weight: bold;
	font-size: 15px;
}
.review_item_click > div {
	border: 1px solid;
	width: 125px;
	height: 30px;
	text-align: center;
	padding-top: 8px;
	border-radius: 5px;
	cursor: pointer;
	color : black;
}
.review_item {
	margin: 35px 25px;
	text-align: center;
}
.review_item > div:nth-child(1) {
	font-weight: bold;
	font-size: 15px;
	margin: 10px 0;
}
.review_submit {
	text-align: center;
	padding-bottom: 20px;
}
.review_submit > input {
	width: 92px;
    height: 36px;
    border-radius: 2px;
    background-color: rgb(51, 51, 51);
    color: rgb(255, 255, 255);
    cursor: pointer;
}
.review_write > button {
    margin: 23px;
    width: 70px;
    height: 36px;
    border-radius: 2px;
    background-color: rgb(51, 51, 51);
    color: rgb(255, 255, 255);
    cursor: pointer;
}

.review_itemList {
	display: flex;
	justify-content: space-between;
	margin: 20px;
	border: 1px solid #cdcdcd;
	border-radius: 5px;
	padding-top: 4px;
}
.productImg > img {
	width: 80px;
	height: 80px;
	margin: 0 20px;
	border: 1px solid #cdcdcd
}
.productIdx {
	text-align: center;
    margin-top: 30px;
}
.productIdx > a {
	color: #b7b7b7;
	border-bottom: 1px solid;
	font-size: 20px;
}
.productName {
	margin-top: 10px;
	font-weight: bold;
	margin: auto;
}
</style>
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
                    <h2>상품 리뷰</h2>
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
            <div>            	
				<!-- 리뷰할 상품 목록 -->
	            <div id="review_wrap"></div>
	            
	            <!-- 상품 리뷰 모달(...공사중...) -->
	            <div id="review_modal" class="review_hidden">
					<div class="review_content">
						<div>
							<div>리뷰작성</div>
							<div class="review_close">X</div>
						</div>
						
						<div class="review_prod_img_name">
							<div>상품이미지</div>
							<div>상품이름</div>							
						</div>
						
						<form id="reviewInsertForm">
							<input type="hidden" name="member_idx" value="${login.idx }">
							
							<!-- 별 이미지로 바꿔야함 -->
							<div>
								<div>상품 별점을 남겨주세요!</div>
								<select name="Grade" required>
									<option value="">선택</option>
									<option value="1">1</option>
									<option value="1.5">1.5</option>
									<option value="2">2</option>
									<option value="2.5">2.5</option>
									<option value="3">3</option>
									<option value="3.5">3.5</option>
									<option value="4">4</option>
									<option value="4.5">4.5</option>
									<option value="5">5</option>
								</select>
							</div>
							
							<!-- pState -->
							<div class="review_item_check">
								<div>[상품상태] 상품의 상태는 어떤가요?</div>
								<div class="review_item_click">
									<label class="review_ladel">
										<input type="radio" name="pState" value="아주 좋아요" required>
										<span>아주 좋아요</span>
									</label>
									<label class="review_ladel">
										<input type="radio" name="pState" value="보통이에요">
										<span>보통이에요</span>
									</label>
									<label class="review_ladel">
										<input type="radio" name="pState" value="별로에요">
										<span>별로에요</span>
									</label>
								</div>
							</div>
							
							<!-- pSame -->
							<div class="review_item_check">
								<div>[상품일치여부] 구매한 상품과 받은 상품이 똑같은가요?</div>
								<div class="review_item_click">
									<label class="review_ladel">
										<input type="radio" name="pSame" value="똑같아요" required>
										<span>똑같아요</span>
									</label>
									<label class="review_ladel">
										<input type="radio" name="pSame" value="비슷해요">
										<span>비슷해요</span>
									</label>
									<label class="review_ladel">
										<input type="radio" name="pSame" value="달라요">
										<span>달라요</span>
									</label>
								</div>
							</div>
						
							<!-- price -->
							<div class="review_item_check">
								<div>[가격] 상품의 가격은 어떤가요?</div>
								<div class="review_item_click">
									<label class="review_ladel">
										<input type="radio" name="price" value="만족해요" required>
										<span>만족해요</span>
									</label>
									<label class="review_ladel">
										<input type="radio" name="price" value="보통이에요">
										<span>보통이에요</span>
									</label>
									<label class="review_ladel">
										<input type="radio" name="price" value="별로에요">
										<span>별로에요</span>
									</label>
								</div>
							</div>
						
							<div class="review_item">
								<div>어떤 점이 좋았나요?</div>
								<div class="review_textarea">
									<textarea name="content"	
											  rows="10"
											  cols="66"
											  placeholder="자세한 리뷰는 다른 고객님들의 구매에 큰 도움이 됩니다&#13;&#10;(10자 이상 500자 이내로 입력해주세요.)"
											  required></textarea>
								</div>
							</div>
			<!-- 				<div class="review_item"> -->
			<!-- 					<div>사진을 등록해주세요(선택)</div> -->
			<!-- 					<div id="review_upload"> -->
			<!-- 						<p><input type="file" name="uploadFile"></p> -->
			<!-- 					</div> -->
			<!-- 				</div> -->
						<p class="review_submit"><input type="submit" value="등록하기"></p>	
						</form>
					</div>
					<div class="review_overlay"></div>
				</div>
            </div>
        </section>
    </div>
</main>

<script>
	const reviewModal_close = document.querySelector('.review_close')
	const reviewModal_overlay = document.querySelector('.review_overlay')
	const reviewInsertForm = document.getElementById('reviewInsertForm')
	
    window.addEventListener('load', selectReviewAll)							// 리뷰할 상품 더미 출력
 	reviewModal_close.addEventListener('click', reviewCloesModal)
	reviewModal_overlay.addEventListener('click', reviewCloesModal)
	reviewInsertForm.addEventListener('submit', insertReview)
</script>
<%@ include file="../footer.jsp" %>