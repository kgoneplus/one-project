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
	event.preventDefault()
	let target = event.target
	while(target.tagName != 'TR') {
		target = target.parentNode
	}
	const trArray = Array.from(document.querySelectorAll('.cartProducts tbody > tr'))
	const idx = trArray.indexOf(target)
	
	let quantity = Array.from(document.querySelectorAll("input[name='cnt']"))[idx]
	const cnt = quantity.value 
	if(cnt == 1) quantity.value = 1
	else quantity.value = cnt - 1
	
	const lastPrice = Array.from(document.querySelectorAll('.lastprice > p'))[idx]
	const p = lastPrice.innerText.replaceAll(',', '')
//	const p = dto.productPrice
	lastPrice.value = p * quantity.value
//	lastPrice = quantity.value * lastPrice
}

// 장바구니 -> 수량 증가 핸들러
function plbtnClickHandler(event) {
	event.preventDefault()
	let target = event.target
	while(target.tagName != 'TR') {
		target = target.parentNode
	}
	const trArray = Array.from(document.querySelectorAll('.cartProducts tbody > tr'))
	const idx = trArray.indexOf(target)
	
	let quantity = Array.from(document.querySelectorAll("input[name='cnt']"))[idx]
	const cnt = quantity.value 
	// 최대수량 값 가져온걸로 고정시켜야함 수정 필요 ★
	if(cnt == 10) quantity.value = 10
	else quantity.value = +cnt + 1
}

// 장바구니 로드 핸들러
function cartLoadHandler() {

	const url = cpath + '/buying/cart/home/' + 1
	fetch(url).then(resp => resp.json())
	.then(json => {
		const tbody = document.querySelector('.cartProducts tbody')
		tbody.innerHTML = ''
		json.forEach(dto => {
			console.log(dto)
			let korPrice = (dto.productPrice * dto.cnt).toLocaleString()
			let discountPrice = ((dto.productPrice - dto.productDiscount)*dto.cnt).toLocaleString()
			const tr = document.createElement('tr')
			tr.innerHTML = `<td><input type="checkbox" value="${dto.productMain_idx}"></td>
							<td>
								<div class="cartProdName">
									<img src="${cpath}/resources/getImage1/${dto.productImg}">
									<div>
										${dto.productName}
										<div class="counter">
											<button class="mabtn">-</button>
											<input type="text" value="${dto.cnt}" name="cnt">
											<button class="plbtn">+</button>
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
												<dd>${dto.productDiscount}원</dd>
											</dl>
											<dl>
												<dt>총 할인금액</dt>
												<dd>${dto.productDiscount}원</dd>
											</dl>
										</div>
									</div>
									<p>${discountPrice}</p><span>원</span>
								</div>
							</td>
							<td>-</td>
							<td><button><div></div></button></td>`
			tbody.appendChild(tr)
			
//			let mabtn = document.querySelector('.mabtn')
//			mabtn.addEventListener('click', mabtnClickHandler(dto))
//			let plbtn = document.querySelector('.plbtn')
//			plbtn,addEventListener('click', plbtnClickHandler(dto))
			
			const mabtns = Array.from(document.querySelectorAll('.mabtn'))
			mabtns.forEach(btn => btn.addEventListener('click', mabtnClickHandler))
			const plbtns = Array.from(document.querySelectorAll('.plbtn'))
			plbtns.forEach(btn => btn.addEventListener('click', plbtnClickHandler))
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
	console.log(checkedItemList)
	
}

// 장바구니 -> 수량 조정
