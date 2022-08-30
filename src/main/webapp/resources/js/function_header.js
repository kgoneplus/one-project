'use strict'

// 쿠키 가져오기
async function getCookie(){
	const ob = {}
	const cookie = document.cookie
	const arr = cookie.split('; ').map(c => {
		const name = c.split('=')[0]
		const value = c.split('=')[1]
		const ob2 = {
			name: name,
			value: value
		}
		return ob2
	})
	const recentProductIdx = +arr.filter(e => e.name == 'recentProduct')[0].value
	console.log(recentProductIdx)
	const url = cpath + '/product/cookie'
	const opt = {
			method: 'POST',
			body: JSON.stringify({
				'productMain_idx': recentProductIdx
			}),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
		}
	await fetch(url,opt)
	.then(resp =>resp.text())
	.then(text=>{
		console.log(text)
		const figrecentProductImg = document.querySelector('.recentProduct')
		figrecentProductImg.innerHTML = `<a href="${cpath}/product/view/${recentProductIdx}"><img src="${cpath}/resources/getImage1/${text}"><a/>
										<figcaption>최근 본 상품</figcaption>`
			
	})
}


// 카테고리 클릭하면 모달창
function categoryModal(event) {
	
	const headermodal = document.querySelector('.allmenu')
	headermodal.style.display = 'block'
		
	const mainoverlay = document.getElementById('overlay')
	mainoverlay.style.display = 'block'
		
	const category = document.querySelector('#cate > a')
	category.addEventListener('click', closeModal)
	
}

function closeModal() {
	const headermodal = document.querySelector('.allmenu')
	headermodal.style.display = 'none'
		
	const mainoverlay = document.getElementById('overlay')
	mainoverlay.style.display = 'none'
	
}

// 리모컨 스크롤 탑이벤트
function scrollToTop() {
   let target = document.documentElement
     target.scrollTop = 0
}