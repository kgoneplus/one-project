'use strict'

// 카테고리 클릭하면 모달창
function categoryModal(event) {	
	
	console.log("모달")
	//console.log(display != 'block')
	
	const headermodal = document.querySelector('.allmenu')
	const mainoverlay = document.getElementById('overlay')
	
	const display = headermodal.style.display
	console.log(display)
	
	headermodal.style.display = display != 'block' ? 'block' : 'none'
	mainoverlay.style.display = display != 'block' ? 'block' : 'none'
}

function closeModal() {
	const headermodal = document.querySelector('.allmenu')
	headermodal.style.display = 'none'
		
	const mainoverlay = document.getElementById('overlay')
	mainoverlay.style.display = 'none'
}