'use strict'
// var, let, const 가 없으면 변수 선언 안됨

// 슬라이더 이벤트
 function slide(event) {
	 
    let dir = -1
    if(event != undefined && event.target.classList.contains('prev')) {
        dir = 1
        cnt -= 2
    }
    const src = document.querySelectorAll('.mainImg')[cnt++]
    const wrap = document.querySelector('.mainImg_wrap')
    
    console.log(cnt, wrap.style.marginLeft, dir)

    if(cnt > 4) {
        cnt = 0
        wrap.style.marginLeft = 0
        wrap.style.transitionDuration = 'unset'
    }
    else if(cnt < 0) {
        cnt = 4
        wrap.style.marginLeft = -4800 + 'px'
        wrap.style.transitionDuration = '0.4s'
    } 
    else {
        unit = 1200 * cnt
        wrap.style.marginLeft = -unit + 'px'
        wrap.style.transitionDuration = '0.4s'
    }
}
 
 // 리모컨 스크롤 탑이벤트
 function scrollToTop() {
	 let target = document.documentElement
		target.scrollTop = 0
 }
 
 // convert함수
 function convert(ob) {
	 const product = document.createElement('div')
	 product.className = 'product'
	 product.innerHTML = ''
		 
	 const price = ob.productPrice
	 const korPrice = price.toLocaleString()
	 let discountPrice = price - ob.productDiscount
	 discountPrice = discountPrice.toLocaleString()
	 // productImg 이미지 파일이름 수정하기
	 product.innerHTML += `<div class="productImg">
								<img src="${cpath}/resources/getImage1/${ob.productImg}">
							</div>
							<div class="productInfo">
								<div class="productTitle">
									 ${ob.productName}
								</div>
								<div class="priceWrap">
									<div class="productOrgPrice">
										<strong>${korPrice}</strong>원
									</div>
									<div class="productPrice">

										<span class="countDC">30%</span> <strong>${discountPrice}</strong>원

										<span class="countDC">${ob.deliveryfee}</span> <strong>${ob.productPrice}</strong>원
									</div>
									<span class="priceQty">${ob.productSize}</span>
								</div>
								<div class="productScore">
									<span><img src="${cpath }/resources/img/star3.png"></span> <span>4.3(9건)</span>
									| <span>월 ${ob.buyCnt}개 구매</span>
								</div>
							</div>`				
		 return product
 }

 
 // 메인화면 아이템 로드 핸들러
 function mainLoadHandler(mainList_cate) {
	 const list = document.querySelector('.list')
	 list.innerHTML = ''
	 const url = cpath + '/mainload?mainList_cate=' + mainList_cate
	 fetch(url) 
	 .then(resp => resp.json())
	 .then(json => {
		json.forEach(product => list.appendChild(convert(product)))
	 })
 }
 
 
 // 메인화면 아이템 카테고리 선택
 function mainSelectLiClick(event) {
	const listLiArray = Array.from(document.querySelectorAll('.main_list_nav > ul > li'))
	listLiArray.forEach(li => li.classList.remove('main_list_liselected'))
	const li = event.target
	li.classList.add('main_list_liselected')
	const mainList_cate = li.getAttribute('mainlist_cate')
	li.addEventListener('click', mainLoadHandler(mainList_cate))
	

 }