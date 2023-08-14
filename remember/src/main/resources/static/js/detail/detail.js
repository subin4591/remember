let param = document.location.href.split("mng_no=");

$(document).ready(function() {
	ajax()
});

function ajax() {
	let category = $('.isOn').children('a').text();

	if (category == '공적개요') {
		var request = new XMLHttpRequest();
		request.open('GET', `https://e-gonghun.mpva.go.kr/opnAPI/publicReportList.do?nPageIndex=1&nCountPerPage=1&type=JSON&mngNo=${param[1]}`);
		request.send();
		request.onload = function() {
			console.log(this.response);
		}

	} else if (category == '이달의 독립운동가') {
		var request = new XMLHttpRequest();
		request.open('GET', `https://e-gonghun.mpva.go.kr/opnAPI/indepCrusaderList.do?nPageIndex=1&nCountPerPage=1&type=JSON&mngNo=${param[1]}`);
		request.send();
		request.onload = function() {
			console.log(this.response);
		}
	}
}
