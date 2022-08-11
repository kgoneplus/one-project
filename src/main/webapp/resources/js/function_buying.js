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

// 장바구니 로드 핸들러
function cartLoadHandler() {

	const url = cpath + '/buying/cart/home/' + 1
	fetch(url).then(resp => resp.json())
	.then(json => {
		const tbody = document.querySelector('.cartProducts tbody')
		tbody.innerHTML = ''
		json.forEach(dto => {
			const tr = document.createElement('tr')
			tr.innerHTML = `<td><input type="checkbox" value="${dto.productMain_idx}"></td>
							<td>
								<div class="cartProdName">
									<img src="${cpath}/resources/pImg/${dto.productImg}">
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
									<span>${dto.productPrice}원</span>
									<div class="lastprice_icon">
										<div class="price_hidden">
											<dl>
												<dt>상품할인</dt>
												<dd>6000원</dd>
											</dl>
											<dl>
												<dt>총 할인금액</dt>
												<dd>11,990원</dd>
											</dl>
										</div>
									</div>
									<p>11,990원</p>
								</div>
							</td>
							<td>-</td>
							<td><button><div></div></button></td>`
			tbody.appendChild(tr)
			
			let quantity = document.querySelector("input[name='cnt']").value
			console.log(quantity)
			const mabtn = document.querySelector('.mabtn')
			mabtn.addEventListener('click', function () {
				quantity= +quantity + 1
			})
			const plbtn = document.querySelector('.plbtn')
			plbtn.addEventListener('click', function () {
				quantity = --quantity
			})
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
