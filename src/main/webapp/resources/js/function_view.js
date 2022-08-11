'use strict'

//// 찜하기 클릭이벤트
//function heartClick(event){
//	const 
//}


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
	
	// 디비에있는 고정값을 가져와야됨! 고쳐야된다@@@@!!!!!!!(innerText말고 value값으로)
	const price = document.querySelector('.OrgPrice > em').innerText
	
	let chprice = +price * cnt
	
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
	
	// 디비에있는 고정값을 가져와야됨! 고쳐야된다@@@@!!!!!!!(innerText말고 value값으로)
	let price = document.querySelector('.OrgPrice > em').innerText
	
	let chprice = document.querySelector('.qtyPrice1').innerText - +price
	
	if(cnt < 1){
		counter1.forEach(count => count.value = 1)
		return
	}
	qtyPrice.forEach(pri => pri.innerText = chprice)
	counter1.forEach(count => count.value = cnt)
	
	document.querySelectorAll('.product_buysum > strong').forEach(p=>p.innerText = chprice)
}