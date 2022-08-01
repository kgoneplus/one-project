'use strict'
// var, let, const 가 없으면 분수 선언 안됨
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
 
 function scrollToTop() {
	 let target = document.documentElement
		target.scrollTop = 0
 }