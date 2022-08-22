<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<title>1:1 문의 내역 | MY 홈플러스 | 홈플러스</</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_main.css">
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style_mypage.css">
<style>
.counsel_modal {
	display: none;
}
.counsel_overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 70%;
	z-index: 5;
}
.counsel_content {
	position: absolute;
	z-index: 6;
	width: 700px;
	height: 660px;
	justify-content: center;
	align-items: center;
	background-color: white;
	overflow: auto;
	top: 50%;
  	left: 50%;
  	transform: translate(-50%, -50%);
}
.counsel_hidden {
	display: none;
}
.counsel_content > div:nth-child(1) {
	font-weight: bold;
	padding: 25px;
	display: flex;
	justify-content: space-between;
	border-bottom: 2px solid gray;	
}
.counsel_close {
	cursor: pointer;
}
.counsel_submit {
	text-align: center;
}
.counsel_form {
	padding: 20px 50px;
	width: 600px;
}
.counsel_table {
	border-collapse: collapse;
}
tr {
	height: 50px;
	border: 1px solid black;
	font-size: 12px;
}
th {
	text-align: left;
	width: 150px;
	background-color: #f5f5f5;
	padding-left: 10px;
}
td {
	padding-left: 20px;
}
.ask_wrap > .item {
	margin: 20px auto;
	width: 900px;
	height: 50px;
	display: flex;
	justify-content: space-between;
	border: 1px solid #dadada;
	cursor: pointer;
}
.ask_wrap > .item > .askType {
	width: 150px;
	height: 50px;
	text-align: center;
	padding-top: 13px;
	font-weight: bold;
}
.ask_wrap > .item > .title {
	width: 450px;
	height: 50px;
	padding-top: 15px;
	font-size: 15px;
}
.ask_wrap > .item > .writeDate {
	height: 50px;
	padding-top: 13px;
	color: #dadada;
	font-weight: bold;
}
.ask_wrap > .item > .waiting {
	height: 50px;
	padding-top: 13px;
	color: red;
	font-weight: bold;
}
.ask_wrap > .item > .direction {
	height: 50px;
	padding-top: 13px;
	padding-right: 10px;
}
.ask_wrap > .item > .menu, .content {
	display: none;
}

.askList_modal {
	display: none;
}
.askList_overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 70%;
	z-index: 5;
}
.askList_content {
	position: absolute;
	z-index: 6;
	width: 700px;
	height: 660px;
	justify-content: center;
	align-items: center;
	background-color: white;
	overflow: auto;
	top: 50%;
  	left: 50%;
  	transform: translate(-50%, -50%);
}
.askList_hidden {
	display: none;
}
</style>
</head>
<body>
<script>
	// 1:1 문의 모달창
	function counselOpenModal() {
		const counsel_modal = document.querySelector('.counsel_modal')
		counsel_modal.style.display = 'flex'
	}
	function counselCloesModal() {
		const counsel_modal = document.querySelector('.counsel_modal')
		counsel_modal.style.display = 'none'
	}
	
	// 1:1 문의 작성
	function askHandler(event) {
		event.preventDefault()
		
		const ob = {}
		const formData = new FormData(event.target)
		for(let key of formData.keys()) {
			ob[key] = formData.get(key)
		}
		
		const url = '${cpath}/mypage/counsel'
		const opt = {
			method: 'POST',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type': 'application/json; charset=utf-8'
			}
		}
		fetch(url, opt)
		.then(resp => resp.text())
		.then(text => {
			if(text == 1) {
				alert('작성성공')
				location.href = 'http://localhost:8080/project/mypage/counsel'
			}
		})
	}
	
	// 1:1 문의 컨벌트함수 (수정중...)
	function convertAsk(dto) {
		const item = document.createElement('div')
		item.classList.add('item')
		item.setAttribute('idx', dto.idx)					// 작성한 문의 상세보기
		item.setAttribute('member_idx', dto.member_idx)		// 작성자와 일치하는 문의만
		
		for(let key in dto) {
			const div = document.createElement('div')
			switch(key) {
			case 'member_idx':
			case 'idx':
			case 'img':
			case 'orderProduct':
			case 'askFile':
				continue;
			case 'writeDate':
				div.classList.add(key)
				div.innerText = new Date(dto[key]).toISOString().split('T')[0]
				item.appendChild(div)
				break;
			default:
				div.classList.add(key)
				div.innerText = dto[key]
				item.appendChild(div)
			}
		}
		const menu = document.createElement('div')
		menu.classList.add('menu')
		const waiting = document.createElement('div')
		waiting.classList.add('waiting')
		const direction = document.createElement('div')
		direction.classList.add('direction')
		
		const btn1 = document.createElement('button')
		btn1.innerText = '수정'
		const askAnswer = document.createElement('div')
		askAnswer.innerText = '답변대기중'
		const open = document.createElement('div')
		open.innerText = '▼'
		
		item.addEventListener('click', askOpenModal)
		
		menu.appendChild(btn1)
		waiting.appendChild(askAnswer)
		direction.appendChild(open)
		item.appendChild(menu)
		item.appendChild(waiting)
		item.appendChild(direction)
		
		return item
	}
		
	// 1:1 문의 내용
	function selectAskAll() {
		const wrap = document.querySelector('.ask_wrap')
		const url = '${cpath}/mypageing/counseling'
		
		fetch(url)
		.then(resp => resp.json())
		.then(json => {
			json.forEach(dto => wrap.appendChild(convertAsk(dto)))
		})
	}
		
	// 문의 내용 상세보기(...공사중...)
	async function askOpenModal(event) {
		console.log(event.target.parentNode.getAttribute('idx'))
		
		const idx = event.target.parentNode.getAttribute('idx')
		const url = '${cpath}/mypageing/counseling/' + idx
		
		const menu = document.querySelector('.menu')
		const content = document.querySelector('.content')
		menu.style.display = 'flex'
		content.style.display = 'flex'
		
		await fetch(url)
		.then(resp => resp.json())
		.then(json => {
			const askListContent = document.querySelector('.askList_content')
			askListContent.innerHTML = ''
						
			const title = document.createElement('div')
			title.className = 'title'
			title.innerText = json.title
			
			const askType = document.createElement('div')
			askType.className = 'askType'
			askType.innerText = json.askType
			
			const content = document.createElement('div')
			content.className = 'content'
			content.innerText = json.content
			
			const writeDate = document.createElement('div')
			writeDate.className = 'writeDate'
			writeDate.innerText = json.writeDate
			
			const btn = document.createElement('button')
			btn.setAttribute('idx', json.idx)
			btn.className = 'btn'
			btn.innerText = '수정'
			btn.addEventListener('click', modifyHandler)
			
			content.appendChild(title)
			content.appendChild(askType)
			content.appendChild(content)
			content.appendChild(writeDate)
			content.appendChild(btn)
		})
	}
</script>
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
                    <h2>상품문의</h2>
                </div>
                <div class="rightArea"><button>1:1 문의하기</button></div>
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
            <div class="ask_wrap"></div>
            
            <div class="askList_modal" class="askList_hidden">
            	<div class="askList_content"></div>
            	<div class="askList_overlay"></div>
            </div>
        </section>
    </div>
		
	<!-- 문의하기 (이미지 없이) -->
	<div class="counsel_modal" class="counsel_hidden">
		<div class="counsel_content">
			<div>
				<div>1:1 문의하기</div>
				<div class="counsel_close">X</div>
			</div>
							
			<form class="counsel_form" enctype="multipart/form-data">
				<input type="hidden" name="member_idx" value="${login.idx }">
				<table class="counsel_table">
				<tr>
					<th>문의 유형</th>
	 				<td>
	 					<select name="askType">
							<option>기타</option>
							<option>배송</option>
							<option>상품</option>
							<option>주문</option>
							<option>결제</option>
							<option>교환/반품/환불</option>
							<option>행사/쿠폰/포인트</option>
							<option>서비스</option>
						</select>
					</td>
				</tr>					
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" placeholder="최소 2자 이상 입력해주세요 (최대 25자)" required></td>
				</tr>										
				<tr>
					<th>내용</th>
					<td>
						<textarea name="content"
							  rows="10"
							  cols="55"
							  placeholder="문의 내용을 입력해 주세요 (최대 700자 이내)&#13;&#10;고객님의 개인정보가 기입되지 않도록 주의해주세요" required></textarea>
					</td>
				</tr>
<!-- 				<tr> -->
<!-- 					<th>이미지 등록(선택)</th> -->
<!-- 					<td><input type="file" name="askFile" accept="image/*"></td> -->
<!-- 				</tr>					 -->
				</table>
				<p class="counsel_submit"><input type="submit" value="등록"></p>
			</form>
		</div>
		<div class="counsel_overlay"></div>
	</div>
</main>

<script>
	const counselModal_overlay = document.querySelector('.counsel_overlay')		
	const counselModal_close = document.querySelector('.counsel_close')
	const counselModal_open = document.querySelector('.rightArea')
	const writeForm = document.forms[1]											// 1:1 문의 등록 폼
	
	counselModal_open.addEventListener('click', counselOpenModal)
	counselModal_overlay.addEventListener('click', counselCloesModal)
	counselModal_close.addEventListener('click', counselCloesModal)
	writeForm.addEventListener('submit', askHandler)							// 1:1 문의 등록
	window.addEventListener('load', selectAskAll)								// 1:1 문의 내역
</script>
<%@ include file="../footer.jsp" %>