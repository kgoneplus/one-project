'use strict'

// 주문배송조회 페이지 -> 안내 탭 카테고리 클릭 핸들러
function ordersTablistHandler(event) {
	const ordersTablist = Array.from(document.querySelectorAll('.orders_tablist > ul > li'))
	const ordersTablistContent = Array.from(document.querySelectorAll('.orders_tablist_content > div'))
	
	ordersTablist.forEach(li => li.classList.remove('tablistSelected'))
	const idx = ordersTablist.indexOf(event.target)
	ordersTablist[idx].classList.add('tablistSelected')
	
	ordersTablistContent.forEach(div => div.classList.remove('tablistContentSelected'))
	ordersTablistContent[idx].classList.add('tablistContentSelected')
}

// 리뷰창에서 별점 색 바꾸기
const drawStar = (target) => {
    document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
}