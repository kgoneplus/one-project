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

// 장바구니 -> 전체상품 주문하기, 선택상품 주문하기 클릭 시 배송정보로 이동
function cartToDeliveryInfo() {

	const checkedItemList = Array.from(document.querySelectorAll("input[type='checkbox']:checked")).map(item => item.value)
	
	const url = cpath + '/buying/deliveryInfo'
	const opt = {
			method: 'POST'
	}
}

