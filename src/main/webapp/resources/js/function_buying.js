'use strict'

// 배송정보 페이지 -> 상품 이미지 마우스오버시 상세설명 나타나는 이벤트
function orderProductsExpMouseover(event) {
	const idx = orderProducts.indexOf(event.target)
	const imgExps = Array.from(document.querySelectorAll('.orderProducts > ul  > li > .imgExp'))
	imgExps[idx].style.display = 'block'
}

//배송정보 페이지 -> 상품 이미지 마우스아웃시 상세설명 사라지는 이벤트
function orderProductsExpMouseout(event) {
	const idx = orderProducts.indexOf(event.target)
	const imgExps = Array.from(document.querySelectorAll('.orderProducts > ul  > li > .imgExp'))
	imgExps[idx].style.display = 'none'
}

// 장바구니 -> 수량 감소 핸들러
function mabtnClickHandler(event) {
	let target = event.target
	while(target.tagName != 'TR') {
		target = target.parentNode
	}
	const defaultPrice = target.getAttribute('productPrice')
	const trArray = Array.from(document.querySelectorAll('.cartProducts tbody > tr'))
	let idx = trArray.indexOf(target)
	
	let quantity = Array.from(document.querySelectorAll("input[name='cnt']"))[idx]
	let cnt = quantity.value 
	if(cnt == 1) quantity.value = 1
	else quantity.value = cnt - 1
	
	const dcP = target.getAttribute('productDiscount')
	const lastPrice = Array.from(document.querySelectorAll('.lastprice > p'))[idx]
	lastPrice.innerText = ''
	lastPrice.innerText = ((defaultPrice - dcP) * quantity.value).toLocaleString()
	
	const priceHidden = Array.from(document.querySelectorAll('.lastprice .price_hidden'))[idx]
	const discountPrice = Array.from(priceHidden.querySelectorAll('dd'))
	discountPrice.forEach(dd => {
		dd.innerText = ''
		dd.innerText = (dcP * quantity.value) + '원'
	})
		
	const beforeDiscount = Array.from(document.querySelectorAll('.lastprice > span:first-child'))[idx]
	beforeDiscount.innerText = ''
	beforeDiscount.innerText = (defaultPrice * quantity.value).toLocaleString() + '원'
}

// 장바구니 -> 수량 증가 핸들러
function plbtnClickHandler(event) {
	let target = event.target
	while(target.tagName != 'TR') {
		target = target.parentNode
	}
	const defaultPrice = target.getAttribute('productPrice')
	const trArray = Array.from(document.querySelectorAll('.cartProducts tbody > tr'))
	let idx = trArray.indexOf(target)
	
	let quantity = Array.from(document.querySelectorAll("input[name='cnt']"))[idx]
	let cnt = quantity.value 
	const maxCnt = target.getAttribute('maxbuyCnt')
	if(cnt == maxCnt) quantity.value = maxCnt
	else quantity.value = +cnt + 1
	
	const dcP = target.getAttribute('productDiscount')
	const lastPrice = Array.from(document.querySelectorAll('.lastprice > p'))[idx]
	lastPrice.innerText = ''
	lastPrice.innerText = ((defaultPrice - dcP) * quantity.value).toLocaleString()
	
	const priceHidden = Array.from(document.querySelectorAll('.lastprice .price_hidden'))[idx]
	const discountPrice = Array.from(priceHidden.querySelectorAll('dd'))
	discountPrice.forEach(dd => {
		dd.innerText = ''
		dd.innerText = (dcP * quantity.value) + '원'
	})
	
	const beforeDiscount = Array.from(document.querySelectorAll('.lastprice > span:first-child'))[idx]
	beforeDiscount.innerText = ''
	beforeDiscount.innerText = (defaultPrice * quantity.value).toLocaleString() + '원'
}

// 장바구니 -> 장바구니 목록 삭제 버튼
function cartDeleteHandler(event) {
	event.preventDefault()
	let target = event.target
	while(target.tagName != 'TR') {
		target = target.parentNode
	}
	const trArray = Array.from(document.querySelectorAll('.cartProducts tbody > tr'))
	let idx = trArray.indexOf(target)
	
	let checkedItemList = Array.from(document.querySelectorAll("input[type='checkbox']")).map(item => item.value)
	checkedItemList = checkedItemList.filter(item => item != 'on')
	idx = checkedItemList[idx]
	
	const ob = {
		'member_idx' : 1,
		'productMain_idx' : idx
	}
	const url = cpath + '/buying/cart/home'
	const opt = {
		method: 'DELETE',
		body: JSON.stringify(ob),
		headers: {
			'Content-Type' : 'application/json; charset=utf-8'
		}
	}
	fetch(url, opt).then(resp => resp.text())
	.then(text => {
		if(text == 1) alert('삭제 성공')
		else alert('삭제 실패')
		location.reload();
	})
}

// 장바구니 로드 핸들러
function cartLoadHandler() {
	const url = cpath + '/buying/cart/home/' + 1
	fetch(url).then(resp => resp.json())
	.then(json => {
		const tbody = document.querySelector('.cartProducts tbody')
		tbody.innerHTML = ''
		json.forEach(dto => {
//			console.log(dto)
			let korPrice = (dto.productPrice * dto.cnt).toLocaleString()
			let discountPrice = ((dto.productPrice - dto.productDiscount)*dto.cnt).toLocaleString()
			const tr = document.createElement('tr')
			tr.setAttribute('productPrice', dto.productPrice)
			tr.setAttribute('productDiscount', dto.productDiscount)
			tr.setAttribute('maxbuyCnt', dto.maxbuyCnt)
			tr.innerHTML = `<td><input type="checkbox" name="productMain_idx" value="${dto.productMain_idx}"></td>
							<td>
								<div class="cartProdName">
									<img src="${cpath}/resources/getImage1/${dto.productImg}">
									<div>
										${dto.productName}
										<div class="counter">
											<button type="button" class="mabtn" onclick="mabtnClickHandler(event)">-</button>
											<input type="text" value="${dto.cnt}" name="cnt">
											<button type="button" class="plbtn" onclick="plbtnClickHandler(event)">+</button>
										</div>
									</div>
								</div>
								<p>최대 ${dto.maxbuyCnt}개 구매가능</p>
							</td>
							<td>
								<div class="lastprice">
									<span>${korPrice}원</span>
									<div class="lastprice_icon">
										<div class="price_hidden">
											<dl>
												<dt>상품할인</dt>
												<dd>${dto.productDiscount * dto.cnt}원</dd>
											</dl>
											<dl>
												<dt>총 할인금액</dt>
												<dd>${dto.productDiscount * dto.cnt}원</dd>
											</dl>
										</div>
									</div>
									<p>${discountPrice}</p><span>원</span>
								</div>
							</td>
							<td>-</td>
							<td><button class="cartDeleteBtn" onclick="cartDeleteHandler(event)"><div></div></button></td>`
			tbody.appendChild(tr)
		})
	})

		
}

// 장바구니 -> 전체 선택시, 아이템 전체 선택되는 함수
function cartAllItemClick(event) {
	const ItemList = Array.from(document.querySelectorAll("input[type='checkbox']"))
	ItemList.forEach((checkbox) => {
	    checkbox.checked = allcheck.checked
	})	
}

// 장바구니 -> 전체상품 주문하기, 선택상품 주문하기 클릭 시 배송정보로 이동(상품번호 포함해서)
function cartToDeliveryInfo(event) {
	// 선택상품 주문하기
	let checkedItemList = Array.from(document.querySelectorAll("input[type='checkbox']:checked")).map(item => item.value)

	// 전체 상품주문하기
	if(event.target.classList.contains('orderAll')) {
		checkedItemList = Array.from(document.querySelectorAll("input[type='checkbox']")).map(item => item.value)
	}
	checkedItemList = checkedItemList.filter(item => item != 'on')
//	console.log(checkedItemList)

	const url = cpath + '/buying/cart/deliveryInfo'
	const opt = {
		method: 'GET',
		body: JSON.stringify(checkedItemList),
		headers: {
			'Content-Type' : 'application/json; charset=utf-8'
		}
	}
//	location.href = cpath + '/buying/deliveryInfo/'
}

// 장바구니 -> 결제예정 금액 변동
function paymentBox() {
	
	// 총 금액
	const totalPrice = document.querySelector('.payTab > .payTabTotalprice:first-child p')
//	totalPrice.innerText = 
	
	//모든 총금액 배열
	let sum = 0
	const tPs = Array.from(document.querySelectorAll('.lastprice > span:first-child'))
	tPs.forEach(tp => {
		console.log(tp.innerText)
//		tp.innerText.replaceAll(',원', '')
	})
	
	
	// 결제예정 금액
	const resultPrice = document.querySelector('.resultPrice p')

}

// 장바구니 -> 배송관리 핸들러
function deliveryManagement() {
	
}
