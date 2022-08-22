'use strict'

// 장바구니 클릭
function searchCart() {
	
	console.log(123)
		
	if(member_idx == ""){
		if(confirm("로그인 회원만 이용가능합니다.")){
			location.href=`${cpath}/member/login`
		}
	}
	else {
		// 기본배송지가 등록되어 있지 않은 경우
//		if( ) {
//			
//		}
//		else {
//			alert("장바구니에 개 담았습니다.")
//		}
		alert("장바구니에 개 담았습니다.")
	}
	
	
	
}