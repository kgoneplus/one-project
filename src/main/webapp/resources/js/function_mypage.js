'use strict'

// 상품 리뷰 별점
 const drawStar = (target) => {
    document.querySelector(`.star span`).style.width = `${target.value * 20}%`;
    console.log(target.value)
  }

// 리뷰 작성하기
function insertReview(event) {
	event.preventDefault()
	const review_submit = document.querySelector('.review_submit')
	const idx = review_submit.getAttribute('productidx')
	console.log(idx)
	const ob = {
		'productMain_idx':idx
	}
	const formData = new FormData(event.target)
	for(let key of formData.keys()) {
		ob[key] = formData.get(key)
	}
	console.log(ob)
	const url = cpath + '/mypageing/reviewWrite'
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
			location.href = 'http://localhost:8080/project/mypage/review'
		}
		else if(text == -1) {
			alert('이미 작성한 리뷰입니다')
			location.href = 'http://localhost:8080/project/mypage/review'
		}		
	})
}

// 리뷰 모달
function reviewOpenModal(event) {
	const review_modal = document.getElementById('review_modal')
	review_modal.style.display = 'flex'
	console.log('productidx : ' + event.target.getAttribute('productidx'))
	
	const target = event.target.getAttribute('productidx')
	console.log('productidx_target : ' + target)
	
	const review_submit = document.querySelector('.review_submit')
	review_submit.setAttribute('productIdx', target)
}	
function reviewCloesModal() {
	const review_modal = document.getElementById('review_modal')
	review_modal.style.display = 'none'
}	

// 주문배송조회 페이지 -> 안내 탭 카테고리 클릭 핸들러
function ordersTablistHandler(event) {
	const ordersTablist = Array.from(document.querySelectorAll('.orders_tablist > ul > li'))
	const ordersTablistContent = Array.from(document.querySelectorAll('.orders_tablist_content > div'))
	
	ordersTablist.forEach(li => li.classList.remove('tablistSelected'))
	const idx = ordersTablist.indexOf(event.target)
	ordersTablist[idx].classList.add('tablistSelected')
	
	ordersTablistContent.forEach(div => div.classList.remove('tablistContentSelected'))
	ordersTablistContent[idx].classList.add('tablistContentSelected')
}

//1:1 문의 모달창
function counselOpenModal() {
	const counsel_modal = document.querySelector('.counsel_modal')
	counsel_modal.style.display = 'flex'
}
function counselCloesModal() {
	const counsel_modal = document.querySelector('.counsel_modal')
	counsel_modal.style.display = 'none'
}

// 1:1 문의 상세보기 닫기
function askCloesModal() {
	document.getElementById('askList_modal').classList.add('askList_hidden')
}

// 1:1 문의 작성
function askHandler(event) {
	event.preventDefault()
	
	const ob = {}
	const formData = new FormData(event.target)
	for(let key of formData.keys()) {
		ob[key] = formData.get(key)
	}
	
	const url = cpath + '/mypage/counsel'
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

// 1:1 문의 컨벌트함수
function convertAsk(dto) {
	const item = document.createElement('div')
	item.classList.add('item')
	item.setAttribute('idx', dto.idx)
	item.setAttribute('member_idx', dto.member_idx)
	
	for(let key in dto) {
		const div = document.createElement('div')
		switch(key) {
		case 'member_idx':
		case 'idx':
		case 'img':
		case 'orderProduct':
		case 'askFile':
		case 'content':
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
	const waiting = document.createElement('div')
	waiting.classList.add('waiting')
	const direction = document.createElement('div')
	direction.classList.add('direction')
	
	const askAnswer = document.createElement('div')
	askAnswer.innerText = '답변대기중'
	const open = document.createElement('div')
	open.innerText = '▼'
	
	item.addEventListener('click', askOpenModal)
	
	waiting.appendChild(askAnswer)
	direction.appendChild(open)
	item.appendChild(waiting)
	item.appendChild(direction)
	
	return item
}
	
// 1:1 문의 내용 목록
function selectAskAll(idx) {
	const wrap = document.querySelector('.ask_wrap')
	const url = cpath + '/mypageing/counsel/' + idx
	console.log('함수에서 받은값 : ' + idx)
	fetch(url)
	.then(resp => resp.json())
	.then(json => {
		json.forEach(dto => wrap.appendChild(convertAsk(dto)))
	})
}

// 리뷰 컨벌트
function convertReview(dto) {
	const item = document.createElement('div')
	item.classList.add('review_itemList')
	
	item.innerHTML += `<div class="productImg"><img src="${cpath}/resources/getImage1/${dto.productImg}"></div>`
	item.innerHTML += `<div class="productIdx"><a href="${cpath}/product/view/${dto.idx}">${dto.idx}</a></div>`
	item.innerHTML += `<div class="productName"><a href="${cpath}/product/view/${dto.idx}">${dto.productName}</a></div>`
	item.innerHTML += `<div class="review_write"><button productIdx="${dto.idx}">리뷰작성</button></div>`
	
	const reviewModal_open = item.querySelector('.review_write')
	reviewModal_open.addEventListener('click', reviewOpenModal)
	
	return item
}

// 리뷰할 상품 불러오기
function selectReviewAll(idx) {
	const wrap = document.getElementById('review_wrap')
	const url = cpath + '/mypageing/reviewing/' + idx
	console.log('리뷰 함수에서 받은값 : ' + idx)
	fetch(url)
	.then(resp => resp.json())
	.then(json => { 
		json.forEach(dto => wrap.appendChild(convertReview(dto)))
	})
}
	
// 문의 내용 상세보기(관리자 코멘트)
function askOpenModal(event) {
	const idx = event.target.parentNode.getAttribute('idx')
	const url = cpath + '/mypageing/counseling/' + idx
	
	fetch(url)
	.then(resp => resp.json())
	.then(json => {
		const askListTop = document.querySelector('.askList_top')
		askListTop.innerHTML = ''
		const askListMid = document.querySelector('.askList_mid')
		askListMid.innerHTML = ''
		const askListBotton = document.querySelector('.askList_bottom')
		askListBotton.innerHTML = ''
			
				
		const askType = document.createElement('div')
		askType.className = 'askType'
		askType.innerText = json.askType
		
		const title = document.createElement('div')
		title.className = 'title'
		title.innerText = json.title
		
		const writeDate = document.createElement('div')
		writeDate.className = 'writeDate'
		writeDate.innerText = new Date(json.writeDate).toISOString().split('T')[0]
		
		const content = document.createElement('div')
		content.className = 'content'
		content.innerText = json.content
		
		const btn = document.createElement('button')
		btn.setAttribute('idx', json.idx)
		btn.className = 'btn'
		btn.innerText = '문의 취소'
		btn.addEventListener('click', askDeleteHandler)
		
		const div = document.createElement('div')
		div.className = 'div'
		
		askListTop.appendChild(askType)
		askListTop.appendChild(title)
		askListTop.appendChild(writeDate)
		askListMid.appendChild(content)
		askListBotton.appendChild(div)
		askListBotton.appendChild(btn)
	})
	document.getElementById('askList_modal').classList.remove('askList_hidden')
}

// 문의 내역 삭제
function askDeleteHandler(event) {
	const idx = event.target.getAttribute('idx')
	const flag = confirm('정말 삭제하시겠습니까?')
	if(flag == false) {
		return
	}
	const url = cpath + '/mypageing/counseling/' + idx
	const opt = {
		method: 'DELETE'
	}
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		if(text == 1) {
			alert('삭제 성공')
			location.reload(true)
		}
	})
}

// 찜목록 불러오기
function selectProductWishlist() {
	const wishListProd = document.querySelector('.wishListProd')
	const ul = document.createElement('ul')
	
	let member_idx = 0
	if((document.location.href).includes('wishlist')) {
		member_idx = document.querySelector('.titleArea').getAttribute('member_idx')
	}else {
		member_idx = document.querySelector('.userBaseInfo_name').getAttribute('member_idx')
	}
	const url = cpath + '/mypage/wishlists/' + member_idx
	fetch(url).then(resp => resp.json())
	.then(json => {
//		console.log(json)
		json.forEach(prod => {
			const li = document.createElement('li')
			li.style.backgroundImage = `url(${cpath}/resources/getImage1/${prod.productImg})`
			const a = document.createElement('a')
			a.href = `${cpath}/product/view/${prod.idx}`
			const span = document.createElement('span')
			span.innerText = prod.productName
			a.appendChild(span)
			li.appendChild(a)
			ul.appendChild(li)
		})
	})	
	wishListProd.appendChild(ul)
}