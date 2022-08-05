'use strict'

// 카테고리 클릭하면 모달창
async function categoryModal(event) {
	
	const idx = event.target
	const url = cpath + '/'
	
	await fetch(url)
	.then(resp => resp.json())
	.then(json => {
	
	})
	
	
	const headermodal = document.querySelector('.allmenu')
	headermodal.classList.remove('css부분작성')
}
