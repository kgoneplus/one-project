'use strict'

function insertHandler (event) {
	event.preventDefault()
	
	const ob = {}
	const formData = new FormData(event.target)
	for(key of formData.keys()) {
		ob[key] = formData.get(key)
	}
	const url = '${cpath}/joining/integrationjoining'
	const opt = {
		method: 'POST',
		body: JSON.stringify(ob),
		headers: {
			'Content-Type': 'application/json; charset=utf-8'
		}
	}
	
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		if(text == 1) {
			alert('작성성공')
			location.reload(true)
		}
	})
	
}
function memberId(event) {
	const url = '${cpath}/joining/memberload'
	
	fetch(url)
	.then(resp => resp.json())
	.then(json =>{
		console.log(json)
	})
	
}
