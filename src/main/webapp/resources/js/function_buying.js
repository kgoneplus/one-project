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
	
	const prductMain_idx = Array.from(document.querySelectorAll("input[type='checkbox']"))[idx + 1].value
	const ob = {
			'member_idx' : member_idx,
			'productMain_idx' : prductMain_idx,
			'cnt' : quantity.value
		}
	
	const url = cpath + '/buying/cart/home'
	const opt = {
			method: 'PUT',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
	}
	fetch(url, opt).then(resp => resp.text())
	.then(text => {
		if(text == 1) console.log('수정 성공')
		else console.log('수정 실패')
	})
	
	const dcP = target.getAttribute('productDiscount')
	const lastPrice = Array.from(document.querySelectorAll('.lastprice > p'))[idx]
	lastPrice.innerText = ((defaultPrice - dcP) * quantity.value).toLocaleString()
	
	const priceHidden = Array.from(document.querySelectorAll('.lastprice .price_hidden'))[idx]
	const discountPrice = Array.from(priceHidden.querySelectorAll('dd'))
	discountPrice.forEach(dd => {
		dd.innerText = (dcP * quantity.value) + '원'
	})
		
	const beforeDiscount = Array.from(document.querySelectorAll('.lastprice > span:first-child'))[idx]
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
	
	const prductMain_idx = Array.from(document.querySelectorAll("input[type='checkbox']"))[idx + 1].value
//	console.log('prductMain_idx : ', prductMain_idx)
	const ob = {
			'member_idx' : member_idx,
			'productMain_idx' : prductMain_idx,
			'cnt' : quantity.value
		}
	
	const url = cpath + '/buying/cart/home'
	const opt = {
			method: 'PUT',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
	}
	fetch(url, opt).then(resp => resp.text())
	.then(text => {
		if(text == 1) console.log('수정 성공')
		else console.log('수정 실패')
	})
	
	const dcP = target.getAttribute('productDiscount')
	const lastPrice = Array.from(document.querySelectorAll('.lastprice > p'))[idx]
	lastPrice.innerText = ((defaultPrice - dcP) * quantity.value).toLocaleString()
	
	const priceHidden = Array.from(document.querySelectorAll('.lastprice .price_hidden'))[idx]
	const discountPrice = Array.from(priceHidden.querySelectorAll('dd'))
	discountPrice.forEach(dd => {
		dd.innerText = (dcP * quantity.value) + '원'
	})
	
	const beforeDiscount = Array.from(document.querySelectorAll('.lastprice > span:first-child'))[idx]
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
	console.log(idx)
	
	const ob = {
		'member_idx' : member_idx,
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
	const url = cpath + '/buying/cart/home/' + member_idx
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
	
	const url = cpath + '/buying/cart/home/' + member_idx
	const opt = {
		method: 'PUT',
		body: JSON.stringify(checkedItemList),
		headers: {
			'Content-Type' : 'application/json; charset=utf-8'
		}
	}
	fetch(url, opt).then(resp => resp.text())
	.then(text => console.log(text))
	location.href = cpath + '/buying/deliveryInfo/' + member_idx;
}

// 장바구니 -> 결제예정 금액 변동
function paymentBox() {
	
	// 총 금액
	const totalPrice = document.querySelector('.payTab > .payTabTotalprice:first-child p')
//	totalPrice.innerText = 
	
	// 모든 총금액 배열
	let sum = 0
	const tPs = Array.from(document.querySelectorAll('.lastprice > span:first-child'))
	tPs.forEach(tp => {
		console.log(tp.innerText)
//		tp.innerText.replaceAll(',원', '')
	})
		
	// 결제예정 금액
	const resultPrice = document.querySelector('.resultPrice p')

}

// 장바구니 -> 배송관리 열기 핸들러
function deliveryManagement(event) {
//	event.stopPropagation()
	event.preventDefault()
	const deliveryContent = document.querySelector('.DeliveryContent')
	const deliveryOverlay = document.querySelector('.DeliveryOverlay')
	deliveryContent.style.display = 'block'
	deliveryOverlay.style.display = 'block'
		
	const tbody = document.querySelector('.DeliveryContent tbody')
	tbody.innerHTML = ''
	const url = cpath + '/buying/cart/delivery/' + member_idx	
	fetch(url).then(resp => resp.json())
	.then(json => {
		json.forEach(dto => {
			const tr = document.createElement('tr')
			const td1 = document.createElement('td')
			td1.innerHTML = `<input type="radio" value="${dto.dCode}">`
			tr.appendChild(td1)
			
			const td2 = document.createElement('td')
			td2.innerHTML = `${dto.receiverName}`
			tr.appendChild(td2)
			
			const td3 = document.createElement('td')
			td3.innerHTML = `${dto.addr1} ${dto.addr2} ${dto.addr3}`
			tr.appendChild(td3)
			
			const td4 = document.createElement('td')
			const mod = document.createElement('div')
			mod.innerText = '수정'
			const del = document.createElement('div')
			del.innerText = '삭제'
			td4.appendChild(mod)
			td4.appendChild(del)
			tr.appendChild(td4)
			
			tbody.appendChild(tr)
		})
	})
	
}

// 장바구니 -> 배송관리 닫기 핸들러
function deliveryManagementClose() {
	document.querySelector('.DeliveryContent').style.display = 'none'
	document.querySelector('.DeliveryOverlay').style.display = 'none'
	document.querySelector('.addDeliveryAddressContent').style.display = 'none'
}

// 장바구니 -> 배송관리 -> 배송지추가 열기 핸들러
function addDeliveryAddressHandler() {
	document.querySelector('.addDeliveryAddressContent').style.display = 'block'
}

//주소 데이터
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}

// 배송지 추가 insert 핸들러
function addressInsert(event) {
	event.preventDefault()
	const formData = new FormData(event.target)
	const ob = {
		'member_idx' : member_idx
	}
	for(let key of formData.keys()) {
		ob[key] = formData.get(key)
	}
	const url = cpath + '/buying/cart/delivery'
	const opt = {
			method: 'PUT',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
	}
	fetch(url, opt).then(resp => resp.text())
	.then(text => {
		if(text == 1) alert('배송지 추가 성공')
		else alert('배송지 추가 실패')
		location.reload(true)
	})
}

// 배송지 수정 update 핸들러

// 배송지 삭제 delete 핸들러

// 기본 배송지로 설정 핸들러(parent_member table address update)
