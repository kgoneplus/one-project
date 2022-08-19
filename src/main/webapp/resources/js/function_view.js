'use strict'

// 장바구니 모달
function prodcartModal(event){
	const prodcartbtnOverlay = document.querySelectorAll('.product_cartbtnOverlay')
	prodcartbtnOverlay.style.display = 'block'
	
	const cartPopup = document.createElement('div')
	cartPopup.className = 'cartPopup'
	
	const p = document.createElement('p')
	p.classList.add('p')
	p.innerText = '장바구니에 상품을 담았습니다.'
	content.appendChild(p)
	
	const strong = document.createElement('strong')
	strong.classList.add('strong')
	strong.innerText = '장바구니로 이동하시겠습니까?'
	content.appendChild(strong)
	

}

// 찜상태그대로~
function heartloadHandler(event){
	const heartImg = Array.from(document.querySelectorAll('.heart'))
	const ob = {
			'productMain_idx': productMain_idx,
			'parent_member_idx': member_idx
		}

		const url = cpath + '/prodwishList/heartload'
		const opt = {
			method: 'POST',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
		}
		fetch(url,opt)
		.then(resp =>resp.text())
		.then(text=>{
			if(text != 0){
				heartImg.forEach(img => img.classList.add('heartOn'))
			}
		})
}

// 찜하기 클릭이벤트
function heartClick(event){
	const heartbtn = event.target.style.backgroundImage
 //세션에 로그인이되어있는지 체크
	if(member_idx == ""){
		if(confirm("로그인 회원만 이용가능합니다.")){
			location.href=`${cpath}/member/login`
		}
	}
	//로그인이 되어있으면 이미지바뀌기
	else{
		const heartImg = Array.from(document.querySelectorAll('.heart'))	
		const ob = {
			'productMain_idx': productMain_idx,
			'parent_member_idx': member_idx
		}

		const url = cpath + '/prodwishList'
		const opt = {
			method: 'POST',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
		}
		fetch(url,opt)
		.then(resp =>resp.text())
		.then(text=>{
			if(text == 1){
				heartImg.forEach(img => img.classList.add('heartOn'))
				alert('찜성공')
			}
			else {
				heartImg.forEach(img => img.classList.remove('heartOn'))
				alert('찜취소')
			}
		})
	}
}

// convert
function convert(dto) {
	const hotslide_Swrap = document.createElement('div')
	hotslide_Swrap.classNmae = 'hotslide_Swrap'
	
	const hotslideImg = document.createElement('div')
	hotslideImg.className = 'hotslideImg'
	hotslideImg.style.backgroundImage = `url('${cpath}/resources/getImage1/${dto.productImg}')`
	hotslide_Swrap.appendChild(hotslideImg)
	
	const productPrice = document.createElement('span')
	productPrice.innerText = dto.productPrice
	hotslide_Swrap.appendChild(productPrice)
	
	const prodName = document.createElement('p')
	prodName.innerText = dto.productName
	hotslide_Swrap.appendChild(prodName)
	
	return hotslide_Swrap
}

// 전체 인기상품 핸들러
function allcateloadHandler(){
	console.log()
	const url = cpath + '/product/view/allcateload'
	fetch(url)
	.then(resp => resp.json())
	.then(json => {
		const hotslide_wrap = document.querySelector('.allhotProduct .hotslide_wrap')
		json.forEach(dto => {
			hotslide_wrap.appendChild(convert(dto))
		})
	})
}

// 카테고리 내 인기상품 핸들러
function cateloadHandler(categoryCode){
	console.log(categoryCode)
	const url = cpath + '/product/view/cateload/' + categoryCode
	fetch(url)
	.then(resp => resp.json())
	.then(json => {
		const hotslide_wrap = document.querySelector('.hotslide_wrap')
		json.forEach(dto => {
			hotslide_wrap.appendChild(convert(dto))
		})
	})
}

// 전체 인기상품 슬라이드
function allhotSlide(event){
	let dir = -1
	let unit = 0
	let cnt = 0
	if(event != undefined && event.target.classList.contains('prevBtn')) {
        dir = 1
        cnt -= 1
    }

    const src = document.querySelectorAll('.allhot')[cnt++]
    const wrap = document.querySelectorAll('.hotslide_wrap')[1]
    
    
    if(cnt > 3) {
        cnt = 0
        wrap.style.marginLeft = 0
        wrap.style.transitionDuration = 'unset'
    }
    else {
        unit = 550 * cnt
        wrap.style.marginLeft = -unit + 'px'
        wrap.style.transitionDuration = '0.4s'
    }
}

// 카테고리 내 인기상품 슬라이드
function catehotSlide(event){
	let dir = -1
	let unit = 0
	let cnt = 0
	if(event != undefined && event.target.classList.contains('prevBtn')) {
        dir = 1
        cnt -= 1
    }

    const src = document.querySelectorAll('.hotslideImg')[cnt++]
    const wrap = document.querySelector('.hotslide_wrap')
    
    
    if(cnt > 3) {
        cnt = 0
        wrap.style.marginLeft = 0
        wrap.style.transitionDuration = 'unset'
    }
    else {
        unit = 550 * cnt
        wrap.style.marginLeft = -unit + 'px'
        wrap.style.transitionDuration = '0.4s'
    }
}

// 상품메인 상세 사진 클릭이벤트
function pdtviewSlide(event){
	const pdtslideArray = event.target.style.backgroundImage
	const mainImg = document.querySelector('.product_mainimg')
	mainImg.style.backgroundImage = pdtslideArray
	
//	pdtslideArray.forEach(img => img.classList.remove('selected'))
//    event.target.classList.add('selected')
}

// 상품상세 사진 슬라이드
function prodslide(event){
	let dir = -1
	let unit = 0
	let cnt = 0
	if(event != undefined && event.target.classList.contains('prevBtn')) {
        dir = 1
        cnt -= 1
    }

    const src = document.querySelectorAll('.prodslideImg')[cnt++]
    const wrap = document.querySelector('.prodImg_wrap')
    
    
    if(cnt > 4) {
        cnt = 0
        wrap.style.marginLeft = 0
        wrap.style.transitionDuration = 'unset'
    }
    else {
        unit = 520 * cnt
        wrap.style.marginLeft = -unit + 'px'
        wrap.style.transitionDuration = '0.4s'
    }
}

// 상품상세, 리뷰, 배송교환 클릭이벤트
function pdtClickHandler(event){	
	pdtArray.forEach(button => button.classList.remove('selected'))
    event.target.classList.add('selected')

    const index = pdtArray.indexOf(event.target)
    
    divArray.forEach(div => div.classList.remove('selected'))
    divArray[index].classList.add('selected')
}

// plus(+)함수
function plCounter(event){
	let counter1 = Array.from(document.querySelectorAll('.count'))
	let cnt = document.querySelector('.count').value
	cnt = +cnt + 1
	
	let qtyPrice = Array.from(document.querySelectorAll('.qtyPrice1'))
	
	const price = document.querySelector('.OrgPrice > em').innerText.replace(',', '')

	let chprice = price * +cnt
	chprice = Intl.NumberFormat('ko-kr').format(chprice)
	
	counter1.forEach(count => count.value = cnt)
	qtyPrice.forEach(pri => pri.innerText = chprice)
	
	document.querySelectorAll('.product_buysum > strong').forEach(p=>p.innerText = chprice)
}

// subtract(-)함수
function maCounter(event){
	let counter1 = Array.from(document.querySelectorAll('.count'))
	let cnt = document.querySelector('.count').value
	cnt = +cnt - 1
	
	let qtyPrice = Array.from(document.querySelectorAll('.qtyPrice1'))
	
	let price = document.querySelector('.OrgPrice > em').innerText.replace(',', '')
	
	let chprice = document.querySelector('.qtyPrice1').innerText.replace(',', '') - price
	chprice = Intl.NumberFormat('ko-kr').format(chprice)
	
	if(cnt < 1){
		counter1.forEach(count => count.value = 1)
		return
	}
	qtyPrice.forEach(pri => pri.innerText = chprice)
	counter1.forEach(count => count.value = cnt)
	
	document.querySelectorAll('.product_buysum > strong').forEach(p=>p.innerText = chprice)
}