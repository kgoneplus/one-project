'use strict'
// var, let, const 가 없으면 분수 선언 안됨
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
 // 메인화면 아이템 로드 핸들러
 function MainloadHandler () {
	 const list = document.querySelector(".list")
	 const url = cpath + "/mainload"
	 fetch(url) 
	 .then(resp => resp.json())
	 .then(json => {
		forEach(product => list.appendChild(convert(product)))
	 })
 }
 function Mainproduct(product) {
	 
 }