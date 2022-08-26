'use strict'

// userid 리뷰 스타
function userReveiwImg(text, index){
	const tdstar = Array.from(document.querySelectorAll('.prodreviewTable .tdstar'))[index]
	const scopeImg = Array.from(tdstar.querySelectorAll('.scopeImg'))
	let lastindex = 0;
	for(let i = 0; i <= text; i++) {
		scopeImg[i].style.width = '100%'
		lastindex = i
	}
	scopeImg[lastindex].style.width = +(text.substring(2))/1.6 * 10 + '%'
}

// 페이지 attribute 변경
function changePageAttribute(event) {
	let page = document.querySelector('.prodreview')
	let begin = document.querySelector('.tdstar').getAttribute('begin')
	let end = document.querySelector('.tdstar').getAttribute('end')
	
	if(event.target.classList.contains('prev')) {
		page.setAttribute('page', +begin - 5)
	}
	else if(event.target.classList.contains('next')) {
		page.setAttribute('page', +end + 1)
	}
	else {
		page.setAttribute('page', event.target.innerText.substring(1,2))
	}
	prodreviewList(event)
}

// 상품별 리뷰 리스트
async function prodreviewList(event){	
	let page = document.querySelector('.prodreview').getAttribute('page')
	const prodreview = document.querySelector('.prodreviewTable')
	prodreview.innerHTML = ''
	
	const ob = {
		'productMain_idx' : productMain_idx,
		'page' : page,
		'filter' : filter.value
	}
	const url = cpath + '/product/prodreviewList'
	const opt = {
			method: 'POST',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
		}
	await fetch(url,opt)
	.then(resp =>resp.json())
	.then(json=>{
		json.list.forEach((dto, index) =>{
			const trtable = document.createElement('tr')
			
			const tdstar = document.createElement('td')
			tdstar.className = 'tdstar'
			tdstar.setAttribute("index", index)
			tdstar.setAttribute("begin", json.paging.begin)
			tdstar.setAttribute("end", json.paging.end)
			tdstar.innerHTML = `<div class="scopeGrade"><span class="scopeGradeImg"><i class="scopeImg"></i></span></div>
			                	<div class="scopeGrade"><span class="scopeGradeImg"><i class="scopeImg"></i></span></div>
			                	<div class="scopeGrade"><span class="scopeGradeImg"><i class="scopeImg"></i></span></div>
			                	<div class="scopeGrade"><span class="scopeGradeImg"><i class="scopeImg"></i></span></div>
			                	<div class="scopeGrade"><span class="scopeGradeImg"><i class="scopeImg"></i></span></div>`
			trtable.appendChild(tdstar)
			
			const tdcontent = document.createElement('td')
			tdcontent.className = 'tdcontent'
			tdcontent.innerHTML = dto.content
			trtable.appendChild(tdcontent)	
			
			const tduserid = document.createElement('td')
			tduserid.className = 'tduserid'
			tduserid.innerHTML = dto.member_idx
			trtable.appendChild(tduserid)	
			
			const tdsysdate = document.createElement('td')
			tdsysdate.className = 'tdsysdate'
			const d = new Date(dto.makeDate).toISOString().split('T')[0]
			tdsysdate.innerHTML = d
			trtable.appendChild(tdsysdate)
			
			prodreview.appendChild(trtable)
			userReveiwImg(dto.reviewGrade+"", index)
		})
		const pagingNumber = document.querySelector('.pagingNumber')
		pagingNumber.innerHTML = ''
		if(json.paging.prev) {
			pagingNumber.innerHTML += `<span><button class="prev" onclick="changePageAttribute(event)">이전</button><span>`
		}
		
		for(let i=json.paging.begin; i<=json.paging.end; i++) {
			pagingNumber.innerHTML += `<span class="nowpage nowpage${i}"><button onclick="changePageAttribute(event)">[${i }]</button><span>`
		}
		if(json.paging.next) {
			pagingNumber.innerHTML += `<span><button class="next" onclick="changePageAttribute(event)">다음</button><span>`
		}
	})
	const pageArray = Array.from(document.querySelectorAll('span.nowpage > button')) 
	const current = pageArray.filter(btn => btn.innerText == '[' + page + ']')[0]
	pageArray.forEach(btn => btn.style.fontWeight = 'normal')
	current.style.fontWeight = 'bolder'

}


// 상품상세 리뷰 점수 -> 이미지
function prodperImg(json, index){
	const per = Array.from(document.querySelectorAll('.per'))
	per[index].style.width = json + '%'
}

// 상품상세 리뷰 점수
function proddetailReview(event){
	const graphnum = Array.from(document.querySelectorAll('.graphnum > strong'))
	const url = cpath + '/product/detailReview/' + productMain_idx
	const opt = {
			method: 'POST'
		}
	fetch(url,opt)
	.then(resp =>resp.json())
	.then(json=>{
		for(let key in json) {
			if(key == 'allreviewCnt') {
				document.querySelector('.allreviewCnt').innerText = json[key] + '건'
			}
			graphnum.forEach((dto, index) => {
				if(dto.classList.contains(key)) {
					dto.innerText = json[key]
					prodperImg(json[key], index)
				}
			})
		}
	})
}

//상품별 별점 점수 -> 이미지
function prodgradImg(text){
	const stars = Array.from(document.querySelectorAll('.scopeImg'))
	const stars1 = Array.from(document.querySelectorAll('.scopeImg1'))
	
	let lastindex = 0;
	for(let i = 0; i <= text; i++) {
		stars[i].style.width = '100%'
		stars1[i].style.width = '100%'
		lastindex = i
	}
	stars[lastindex].style.width = text.substring(2) + '0%'
	stars1[lastindex].style.width = text.substring(2) + '0%'
}

// 상품별 별점 점수
function prodgradHandler(){
	const scopeNum = document.querySelector('.scopeNum')
	const scopeNum1 = document.querySelectorAll('.scopeNum')[1]
	const url = cpath + '/product/reviewAvggrade'
	const opt = {
			method: 'POST',
			body: JSON.stringify(productMain_idx),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
		}
	fetch(url,opt)
	.then(resp =>resp.text())
	.then(text=>{
		scopeNum.innerText = text
		scopeNum1.innerText = text
		prodgradImg(text)
	})
}

// 바로구매
function productnowHandler(){
	if(member_idx == ""){
		if(confirm("로그인 회원만 이용가능합니다.")){
			location.href=`${cpath}/member/login`
		}
	}else{
		const ob = {
				'productMain_idx': productMain_idx,
				'member_idx': member_idx,
				'cnt' : document.querySelector('.count').value
		}
		const url = cpath + '/product/view/insertcart'
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
				let checkedItemList = [productMain_idx]
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
		})
	}
}

// 장바구니추가
function insertproductcart(event){
	const ob = {
			'productMain_idx': productMain_idx,
			'member_idx': member_idx,
			'cnt' : document.querySelector('.count').value
		}
		const url = cpath + '/product/view/insertcart'
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
					alert('장바구니추가성공')
				}
				if(event.target.classList.contains('shopping') == false)
					location.href = cpath + '/buying/cart/' + member_idx
			})
}

// 장바구니 모달 닫기
function prodcartcloseModal(event) {
	if(event.target.classList.contains('product_cartbtn')) {
		prodcartModal()
		return
	}
	document.querySelector('.product_cartbtnOverlay').style.display = 'none'
	document.querySelector('.prodremocon >.product_cartbtnOverlay').style.display = 'none'
}

// 리모컨장바구니 모달
function prodcartremoModal(event){
	if(member_idx == ""){
		if(confirm("로그인 회원만 이용가능합니다.")){
			location.href=`${cpath}/member/login`
		}
	}else{
		event.stopPropagation()
		const prodcartbtnOverlay2 = document.querySelectorAll('.product_cartbtnOverlay')[1]
		prodcartbtnOverlay2.innerHTML = ''
		prodcartbtnOverlay2.style.display = 'block'
				
		const cartPopup = document.createElement('div')
		cartPopup.className = 'cartPopup'
			
		const p = document.createElement('p')
		p.classList.add('p')
		p.innerText = '장바구니에 상품을 담았습니다.'
			cartPopup.appendChild(p)
			
		const strong = document.createElement('strong')
		strong.classList.add('strong')
		strong.innerHTML = '장바구니로 이동하시겠습니까?<br>'
			cartPopup.appendChild(strong)
			
		const button1 = document.createElement('button')
		button1.classList.add('shopping')
		button1.innerText = '쇼핑계속하기'
		cartPopup.appendChild(button1)
		button1.addEventListener('click', insertproductcart)
		
		const button2 = document.createElement('button')
		button2.innerText = '장바구니 바로가기'
		cartPopup.appendChild(button2)
		button2.addEventListener('click', insertproductcart)	
		
		prodcartbtnOverlay2.appendChild(cartPopup)
	}
}

// 장바구니 모달
function prodcartModal(){
	if(member_idx == ""){
		if(confirm("로그인 회원만 이용가능합니다.")){
			location.href=`${cpath}/member/login`
		}
	}else{
		const prodcartbtnOverlay = document.querySelector('.product_cartbtnOverlay')
		prodcartbtnOverlay.innerHTML = ''
		prodcartbtnOverlay.style.display = 'block'
			
		const cartPopup = document.createElement('div')
		cartPopup.className = 'cartPopup'
			
		const p = document.createElement('p')
		p.classList.add('p')
		p.innerText = '장바구니에 상품을 담았습니다.'
		cartPopup.appendChild(p)
		
		const strong = document.createElement('strong')
		strong.classList.add('strong')
		strong.innerHTML = '장바구니로 이동하시겠습니까?<br>'
		cartPopup.appendChild(strong)
			
		const button1 = document.createElement('button')
		button1.classList.add('shopping')
		button1.innerText = '쇼핑계속하기'
		cartPopup.appendChild(button1)
		button1.addEventListener('click', insertproductcart)
		
		const button2 = document.createElement('button')
		button2.innerText = '장바구니 바로가기'
		cartPopup.appendChild(button2)
		button2.addEventListener('click', insertproductcart)	
		
		prodcartbtnOverlay.appendChild(cartPopup)
	}
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
	productPrice.innerText = dto.productPrice + '원'
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
	const maxCnt = document.querySelector('.txtMaxbuy > span').innerText
	let counter1 = Array.from(document.querySelectorAll('.count'))
	let cnt = document.querySelector('.count').value
	if(cnt == maxCnt) cnt = maxCnt
	else cnt = +cnt + 1
	
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