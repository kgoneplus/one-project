'use strict'

	
// 왼쪽 카테고리바 더보기
function pluscategory() {
	console.log("23")
	
	const hidingcate = document.querySelector('.hidingcate')
	const seemore = document.getElementById('seemore')
	console.log(hidingcate)
	console.log(seemore)
	
	seemore.style.display = 'none'
	hidingcate.style.display = 'block'
	
}

// 이미지에서 바로 장바구니 담기
async function searchCart(event) {
	
	if(member_idx == ""){
		if(confirm("로그인 회원만 이용가능합니다.")){
			location.href=`${cpath}/member/login`
		}
	}
	else {
		let cnt = 0
		const url1 = cpath + '/product/getcnt'
		const ob1 = {
				'productMain_idx': +event.target.getAttribute('idx'),
				'member_idx': member_idx
		}
		const opt1 = {
				method : 'POST',
				body: JSON.stringify(ob1),
				headers: {
					'Content-Type' : 'application/json; charset=utf-8'
				} 
		}
		await fetch(url1, opt1)
		.then(resp => resp.text())
		.then(text => {
			cnt = text
		})
		
		const ob = {
				'productMain_idx': +event.target.getAttribute('idx'),
				'member_idx': member_idx,
				'cnt':cnt
		}
		console.log(ob)
		const url = cpath + '/product/view/insertcart'
		console.log(url)
		const opt = {
				method: 'POST',
				body: JSON.stringify(ob),
				headers: {
					'Content-Type' : 'application/json; charset=utf-8'
				}
			}
		await fetch(url,opt)
		.then(resp =>resp.text())
		.then(text=>{
			if(text != 0){
				alert("장바구니에  담았습니다.")
			}
		})

	}
	

	
}
