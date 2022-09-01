'use strict'

//주소 데이터
function sample6_execDaumPostcode(event) {
	let target = event.target
	let flag = true
	while(flag) {
		target = target.parentNode
		for(let i = 0; target.classList != undefined && i < target.classList.length; i++) {
			const className = target.classList[i]
			if(className.includes('DeliveryAddressContent')) {
				flag = false
				break
			}
		}
	}
//	console.log(target.className.substring(0, 3))
	let index = 0
	if(target.className.substring(0, 3) == 'mod')
		index = 1
	
	
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
                document.querySelectorAll("#sample6_extraAddress")[index].value = extraAddr;
            
            } else {
                document.querySelectorAll("#sample6_extraAddress")[index].value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.querySelectorAll('#sample6_postcode')[index].value = data.zonecode;
            document.querySelectorAll("#sample6_address")[index].value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.querySelectorAll("#sample6_detailAddress")[index].focus();
        }
    }).open();
}

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
	
	paymentBox()
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

	paymentBox()
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
									<img src="${cpath}/resources/getImage1/${dto.productImg}" onclick="location.href='${cpath}/product/view/${dto.productMain_idx}'">
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
		
		const checkboxes = Array.from(document.querySelectorAll("input[type='checkbox']"))
		checkboxes.forEach(checkbox => checkbox.addEventListener('change', paymentBox))
		
	})
	document.getElementById('allChecked').addEventListener('change', cartAllItemClick)

}

//장바구니 -> 결제예정 금액 변동
function loadPaymentBox(json) {
	
	// 총 금액 div
	const totalPrice = document.querySelector('.payTab > .payTabTotalprice:first-child p')
	// 할인 금액 div
	const discountPrice = document.querySelector('.payTab > .payTabTotalprice:nth-child(3) p')
	// 배송비 div
	const deliveryP = document.querySelector('.payTab > .payTabTotalprice:nth-child(2) p')
	// 결제예정 금액 div
	const resultPrice = document.querySelector('.resultPrice p')
	
	let tP = 0
	let pay = 0
	let discount = 0
		
	json.forEach(dto => {
		tP = tP + (dto.productPrice * dto.cnt)
		discount += (dto.productDiscount * dto.cnt)
		pay = tP - discount
	})
	totalPrice.innerText = tP.toLocaleString()
	discountPrice.innerText = '-' + discount
	if(tP >= 40000) {
		deliveryP.innerText = 0
	}
	else {
		deliveryP.innerText = 3000
		pay = pay + 3000
	}
	resultPrice.innerText = pay.toLocaleString()
}

// 장바구니 -> 선택시 paymentBox 가격 변경
async function paymentBox() {
	let checkedItemList = Array.from(document.querySelectorAll("input[type='checkbox']:checked")).map(item => item.value)
	checkedItemList = checkedItemList.filter(item => item != 'on')
	
	const url = cpath + '/buying/cart/pay/' + member_idx
	const opt = {
		method: 'POST',
		body: JSON.stringify(checkedItemList),
		headers: {
			'Content-Type' : 'application/json; charset=utf-8'
		}
	}
	await fetch(url, opt).then(resp => resp.json())
	.then(json => {loadPaymentBox(json)})
}

// 장바구니 -> 전체 선택시, 아이템 전체 선택되는 함수
function cartAllItemClick(event) {
	const ItemList = Array.from(document.querySelectorAll("input[type='checkbox']"))
	const allcheck = document.getElementById('allChecked')
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

//배송지 수정 update 핸들러
function modDeliveryAddress(event) {
	const ob = {
			'member_idx': member_idx,
			'dCode' : event.target.getAttribute('dCode')
	}
	const url = cpath + '/buying/cart/delivery'
	const opt = {
			method : 'PUT',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
	}
	fetch(url, opt).then(resp => resp.json())
	.then(json => {
		const modDeliveryAddressContent = document.querySelector('.modDeliveryAddressContent')
		modDeliveryAddressContent.style.display = 'block'
		document.querySelector('.DeliveryContent').style.display = 'none'
		modDeliveryAddressContent.innerHTML = ''
		modDeliveryAddressContent.innerHTML = ` <h3>배송지 수정</h3>
												<hr>
												<form>
													<div>받는분</div>
													<input type="hidden" name="member_idx" value="${json.member_idx}">
													<input type="hidden" name="dCode" value="${json.dCode}">
													<input type="text" name="receiverName" placeholder="${json.receiverName}" required>
												
													<div>핸드폰번호</div>
													<input type="text" name="receiverPhonenum" placeholder="${json.receiverPhonenum}" required>
														
													<div>주소</div>
													<input type="text" name="addr1" id="sample6_postcode" placeholder="${json.addr1}" required>
													<input type="button" value="우편번호 찾기" required><br>
												
													<input type="text" name="addr2" id="sample6_address" placeholder="${json.addr2}" required><br>
													<input type="text" name="addr3" id="sample6_detailAddress" placeholder="${json.addr3}" required>
													<input type="text" name="addr4" id="sample6_extraAddress" placeholder="${json.addr4}" required>
													
													<input type="submit" value="확인">
													<input type="button" value="취소" onclick="deliveryManagementClose()">
												</form>`
		
		modDeliveryAddressContent.querySelector('input[value="우편번호 찾기"]').addEventListener('click', sample6_execDaumPostcode)
			
		const form = document.querySelector('.modDeliveryAddressContent > form')
		form.addEventListener('submit', function (event) {
			const formData = new FormData(event.target)
			const ob = {}
			for(let key of formData.keys()) {
				ob[key] = formData.get(key)
			}
			const url = cpath + '/buying/cart/delivery/insert'
			const opt = {
					method: 'POST',
					body: JSON.stringify(ob),
					headers: {
						'Content-Type' : 'application/json; charset=utf-8'
					}
			}
			fetch(url, opt).then(resp => resp.text())
			.then(text => {
				if(text == 1) alert('수정 성공')
				else alert('수정 실패')
			})
		})
	})
	
	
}

// 배송지 삭제 delete 핸들러
function delDeliveryAddress(event) {
	const ob = {
			'member_idx': member_idx,
			'dCode' : event.target.getAttribute('dCode')
	}
	const url = cpath + '/buying/cart/delivery'
	const opt = {
			method : 'DELETE',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
	}
	fetch(url, opt).then(resp => resp.text())
	.then(text => {
		if(text == 1) alert('삭제 성공')
		location.reload(true)
	})
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
			td1.innerHTML = `<input type="radio" name="dCode" value="${dto.dCode}">`
			tr.appendChild(td1)
			
			const td2 = document.createElement('td')
			td2.innerHTML = `${dto.receiverName}`
			tr.appendChild(td2)
			
			const td3 = document.createElement('td')
			td3.innerHTML = `${dto.address}`
			tr.appendChild(td3)
			
			const td4 = document.createElement('td')
			const mod = document.createElement('div')
			mod.innerText = '수정'
			mod.setAttribute('dCode', `${dto.dCode}`)
			mod.addEventListener('click', modDeliveryAddress)
			const del = document.createElement('div')
			del.innerText = '삭제'
			del.setAttribute('dCode', `${dto.dCode}`)
			del.addEventListener('click', delDeliveryAddress)
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
	document.querySelector('.modDeliveryAddressContent').style.display = 'none'
}

// 장바구니 -> 배송관리 -> 배송지추가 열기 핸들러
function addDeliveryAddressHandler() {
	document.querySelector('.addDeliveryAddressContent').style.display = 'block'
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
			method: 'POST',
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

// 기본 배송지로 설정 핸들러(parent_member table address update)
function updatedefaultAddress() {

	const ob = {
			'dCode_old' : document.querySelector(".deliveryCheckbox > input[name='dCode']").value,
			'dCode_new' : document.querySelector("input[type='radio']:checked").value
	}
//	console.log(ob)
	const url = cpath + '/buying/cart/deliveryUpdate'
	const opt = {
			method: 'PUT',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
	}
	fetch(url, opt).then(resp => resp.text())
	.then(text => {
		if(text == 1) alert('수정 성공')
		else alert('수정 실패')
		location.href = cpath + '/buying/cart/' + member_idx
	})
}

// 결제 전 주문 insert
async function orderInsertHandler() {
	const deliveryDate = document.querySelector("input[type='radio']:checked")
	const url = cpath + '/buying/insertOrder' 
	const ob = {
			'member_idx' : member_idx,
			'deliveryDate' : deliveryDate.value,
			'receiverName' : document.querySelector('.homeDeliveryTab').getAttribute('receiverName'),
			'receiverPhonenum' : document.querySelector('.homeDeliveryTab').getAttribute('receiverPhonenum'),
			'address' : document.querySelector('.homeDeliveryTab > div p').innerText,
			'totalPrice' : document.querySelector('.payTab > .payTabTotalprice:first-child p').innerText.replace(',', ''),
			'discountPrice' : document.querySelector('.payTab > .payTabTotalprice:nth-child(3) p').innerText.replace(',', ''),
			'deliveryFee' : document.querySelector('.payTab > .payTabTotalprice:nth-child(2) p').innerText.replace(',', ''),
			'purchase' : document.querySelector('.resultPrice p').innerText.replace(',', '')
	}
//	console.log(ob)
	const opt = {
			method: 'POST',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
	}
	return await fetch(url, opt).then(resp => resp.text())
	.then(text => {
		if(text == 0) {
			alert('주문테이블에 추가 실패')
			return 0
		}
		alert('주문테이블에 추가 성공')
		return text
	})
}

// 주문정보 selectOne
async function selectOneOrders(ordersidx) {
	const url = cpath + '/buying/getOrders/' + ordersidx
	return await fetch(url).then(resp => resp.json())
	.then(json => {
		return json
	})
}

async function selectMember(idx) {
	const url = cpath + '/buying/getMember/' + idx
	return await fetch(url).then(resp => resp.json())
	.then(json => {
		return json
	})
}

// 주문 후 장바구니 테이블에서 삭제
async function deleteproductCartHandler(ordersidx) {
	const url = cpath + '/buying/cart/delete/' + ordersidx
    const opt = {
  		  method: 'DELETE'
    }
    return await fetch(url, opt).then(resp => resp.text())
}

// 아임포트 api
async function iamport(ordersidx) {
	var result = await selectOneOrders(ordersidx);
	var orderer = await selectMember(result.member_idx);
//	console.log(orderer)
	IMP.init('imp35518566');
	IMP.request_pay({
	    pg: "kakaopay",
	    pay_method: "card",
	    merchant_uid : 'merchant_'+ new Date().getTime(),
	    name : '주문번호 ' + ordersidx,
	    amount : result.purchase,
	    buyer_email : 'iamport@siot.do',
	    buyer_name : orderer.name,
	    buyer_tel : orderer.phonenum,
	    buyer_addr : orderer.address
	  }, async function(rsp) {
          if ( rsp.success ) {
        	  // 장바구니 테이블 삭제 & 결제완료로 상태 바꾸기
              const cart = await deleteproductCartHandler(ordersidx);
              if(cart == 1) alert('장바구니 삭제완료')
              else alert('장바구니는 안지워졌네...')
              
              // 결제 중간에 취소했을 때는 주문 테이블에서 삭제하기
              location.href = cpath + '/mypage/orders'
          } else {
              msg = '결제에 실패하였습니다.';
              msg += '에러내용 : ' + rsp.error_msg;
              history.back()
              alert(msg);
          }
      });
}

// 결제 버튼 핸들러
async function kakaopay() {
	let ordersidx = await orderInsertHandler()
	iamport(ordersidx)	
}