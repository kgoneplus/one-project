'use strict'

// 회원가입 인설트
function insertHandler (event) {
	event.preventDefault()
	const ConfirmID = document.getElementById('ConfirmID-Message')
	let confirm = ConfirmID.getAttribute('confirm')
	const idfocus = document.querySelector('input[name="userid"]')
	
	if(confirm == 'false'){
		idfocus.focus()
	}
	else{
		const ob = {}
		const formData = new FormData(event.target)
		for(let key of formData.keys()) {
			ob[key] = formData.get(key)
		}
		const url = `${cpath}/joining/integrationjoining`
			const opt = {
				method: 'POST',
				body: JSON.stringify(ob),
				headers: {
					'Content-Type' : 'application/json; charset=utf-8'
				}
		}
		
		fetch(url, opt)
		.then(resp => resp.text())
		.then(text => {
			if(text == 1) {
				alert('작성성공')
				location.href = 'http://localhost:8080/project/member/login'
			}
		})
	}
}
// 네이버 회원가입 인설트((나중에 합치기))
function naverinsertHandler (event) {
	event.preventDefault()
	const ConfirmID = document.getElementById('ConfirmID-Message')
	let confirm = ConfirmID.getAttribute('confirm')
	const idfocus = document.querySelector('input[name="userid"]')
	
	if(confirm == 'false'){
		idfocus.focus()
	}
	else{
		const ob = {}
		const formData = new FormData(event.target)
		for(let key of formData.keys()) {
			ob[key] = formData.get(key)
		}
		const url = `${cpath}/joining/naverjoining`
			const opt = {
				method: 'POST',
				body: JSON.stringify(ob),
				headers: {
					'Content-Type' : 'application/json; charset=utf-8'
				}
		}
		
		fetch(url, opt)
		.then(resp => resp.text())
		.then(text => {
			if(text == 1) {
				alert('작성성공')
				location.href = 'http://localhost:8080/project/member/login'
			}
		})
	}
}
//카카오 회원가입 인설트((나중에 합치기))
function kakaoinsertHandler (event) {
	event.preventDefault()
	const ConfirmID = document.getElementById('ConfirmID-Message')
	let confirm = ConfirmID.getAttribute('confirm')
	const idfocus = document.querySelector('input[name="userid"]')
	
	if(confirm == 'false'){
		idfocus.focus()
	}
	else{
		const ob = {}
		const formData = new FormData(event.target)
		for(let key of formData.keys()) {
			ob[key] = formData.get(key)
		}
		const url = `${cpath}/joining/kakaojoining`
			const opt = {
				method: 'POST',
				body: JSON.stringify(ob),
				headers: {
					'Content-Type' : 'application/json; charset=utf-8'
				}
		}
		
		fetch(url, opt)
		.then(resp => resp.text())
		.then(text => {
			if(text == 1) {
				alert('작성성공')
				location.href = 'http://localhost:8080/project/member/login'
			}
		})
	}
}

// 아이디 중복 체크
function memberId(event) {
	   const url = `${cpath}/joining/memberload`
	   const id = document.getElementById('idtext').value
	   const idfocus = document.querySelector('input[name="userid"]')
	   
	   let message = '사용가능 아이디'
	   const ConfirmMessage = document.getElementById('ConfirmID-Message')
	   const confirm = ConfirmMessage.getAttribute('confirm')
	   
	   fetch(url)
	   .then(resp => resp.json())
	   .then(json =>{
		   console.log(json)
	      json.forEach(dto =>{
	    	
	    	  if(dto.userid === id){
	            message = '중복된 아이디'
	            idfocus.focus()
	            ConfirmMessage.setAttribute('confirm', 'false')
	            
	            ConfirmMessage.style.color = 'red'
	         }
	      })
	      if(message === '사용가능 아이디') {
	         ConfirmMessage.setAttribute('confirm', 'true')
	         ConfirmMessage.style.color = 'black'
	      }
	      ConfirmMessage.innerText = message
	   })
	   
	}

	

// 네이버 로그인 핸들러
function naverloginhandler( ) {
	
	naverLogin.getLoginStatus( function (status) {

	if (status) {	// 성공한다면
		let email = naverLogin.user.getEmail();
		let name = naverLogin.user.getName();
		let phonenum = naverLogin.user.getMobile();
		let token = naverLogin.accessToken.toString();
		const tokensplit = token.split('.');
		token = tokensplit[1]
		
		
		phonenum = phonenum.replace("-","")
		phonenum = phonenum.replace("-","")
		
		const emailvalue = document.getElementById('emailvalue')
		const namevalue = document.getElementById('namevalue')
		const phonenumvalue = document.getElementById('phonenumvalue')
		
		emailvalue.value = email
		namevalue.value = name
		phonenumvalue.value = phonenum
		
	const url = `${cpath}/naverSave`
	const opt = {
			method:'POST',
			body: JSON.stringify({
				'email':email, 'name':name, 'phonenum':phonenum	
			}),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			},
	}
	fetch(url, opt)
	.then(resp => resp.text())
	.then( text => {
		if(text == 1){
			console.log('로그인 성공 ')
			location.href = `${cpath}`
			const url = `${cpath}/remove` + '?token='+token
			fetch(url)
			.then(resp => resp.text())
			.then(text => {
				if(text == 1){
					console.log('토큰 삭제 성공')
				}else{
					console.log('토큰 삭제 실패')
				}
				
			})
			} else if(text == 0) {
				console.log('실패')
			}
		
			
		})
	} else {
			alret("네이버 로그인 실패");
			}
	});
};
//카카오 로그아웃
function kakaoLogout() {
if (Kakao.Auth.getAccessToken()) {
	      Kakao.API.request({
	        url: '/v1/user/unlink',
	        success: function (response) {
	        	console.log(response)
	        },
	        fail: function (error) {
	          console.log(error)
	        },
	      })
	      Kakao.Auth.setAccessToken(undefined)
	    }
	 }
// 주소 데이터
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}

//메일 인증확인하기 
function mailConfirmNumber(){
	console.log(mailconfrimnumber.value)
	let number = sessionStorage.getItem("emailconfirmnumber")
	console.log(number)
	if(mailconfrimnumber.value == number){
		emailconfirmMessage.innerText = '인증 완료'
	}
	else {
		emailconfirmMessage.innerText = '인증번호가 틀립니다'
	}
}

//메일 보내기
function mailconfirm (){
	
	const url = `${cpath}/mailconfirm`
	const opt = {
			method: 'POST',
			body: JSON.stringify({
			'mailadress' : document.getElementById('mailadress').value	
			}),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
	}
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		if(text != null){
			console.log('성공')
			sessionStorage.setItem("emailconfirmnumber", text) // 세션 스토리지 저장하기 *****
		}
		else{
			console.log('실패')
		}
	})
}

// 카카오 로긴
function kakaoLogin() {
	  Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	        	  kakaomap(response)
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	  }

//받은데이터 매핑
function kakaomap(res){
	 	console.log(res)
		const kakaouser = res.kakao_account
	  	const kakaouser_map = {
	  			'name':kakaouser.profile.nickname,
	  			'email':kakaouser.email
	  	}
		kakaoconfirm(kakaouser_map)
}

// 매핑받은 데이터 로그인 하기
function kakaoconfirm(data){
	 const url = `${cpath}/kakaoconfirm`
	 const opt = {
		 method:'POST',
		 body: JSON.stringify(data),
		 headers:{
			'Content-Type' : 'application/json; charset=utf-8'
		 }
	 }
	 fetch(url, opt)
	 .then(resp => resp.text())
	 .then(text =>{
		 if(text == 1){
			 console.log('로그인 성공')
			  kakaoLogout()
			 location.replace("http://localhost:8080/project")
			
		 }else{
			 console.log('실패')
			 location.replace("http://localhost:8080/project/member/login/kakao")
		 }
	 })
}

//비밀번호 확인 
function passSearch(event){
	event.preventDefault()
	const url = `${cpath}/passSearch`
	const ob = {}
	const formData = new FormData(event.target)
	for(let key of formData.keys()) {
		ob[key] = formData.get(key)
	}
	
	const opt = {
			method:'POST',
			body: JSON.stringify(ob),
			headers:{
				'Content-Type' : 'application/json; charset=utf-8'
			}
	}
	fetch(url, opt)
	.then(resp => resp.json())
	.then(json => {
		passconfirm (json.email)
		passSearch_email.innerText = json.email + '로 인증번호 발송'
		passSearch_inputform.style.display = 'block'
	})
}

function passconfirm (email){
	
	const url = `${cpath}/mailconfirm`
	const opt = {
			method: 'POST',
			body: JSON.stringify({
			'mailadress' : email	
			}),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
	}
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		if(text != null){
			console.log('성공')
			sessionStorage.setItem("emailconfirmnumber", text)
		}
		else{
			console.log('실패')
		}
	})
}
// 비밀번호 인증 함수 (인증후 -> 업데이트 시키러가자)
function mailConfirmNumber2(){
	console.log(mailconfrimnumber.value)
	let number = sessionStorage.getItem("emailconfirmnumber")
	console.log(number)
	if(mailconfrimnumber.value == number){
		password_input.style.display = 'block'
//		PasswordInput(passId.value)
	}
	else {
		emailconfirmMessage.innerText = '인증번호가 틀립니다'
	}
}
function PasswordInput(event){
	event.preventDefault()
	const userid = document.getElementById('passId').value
	let ob = {}
	const formData = new FormData(event.target)
	for(let key of formData.keys()) {
		ob[key] = formData.get(key)
	}
	ob['userid'] = userid
	console.log(ob)
	const url = `${cpath}/passUpdate`
	const opt = {
			method: 'POST',
			body: JSON.stringify(ob),
			headers:{
				'Content-Type':'application/json; charset=utf-8'
			}
	}
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		if(text == 1){
			console.log('성공')
			location.href = `${cpath}/member/login`
		}else {
			console.log('실패')
		}
	})
}




