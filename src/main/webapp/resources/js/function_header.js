'use strict'

// 카테고리 클릭하면 모달창
function categoryModal(event) {
	
	const headermodal = document.querySelector('.allmenu')
	headermodal.style.display = 'block'
		
	const mainoverlay = document.getElementById('overlay')
	mainoverlay.style.display = 'block'
		
	
}

function closeModal() {
	const headermodal = document.querySelector('.allmenu')
	headermodal.style.display = 'none'
		
	const mainoverlay = document.getElementById('overlay')
	mainoverlay.style.display = 'none'
	
}