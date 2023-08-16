let mngNo = document.location.href.split('mng_no=');
let likeCount = document.getElementById('likeCount');

function insertLike() {
	$.ajax({
		url: `/like`,
		type: 'post',
		data: {
			mng_no: mngNo[1]
		},
		dataType: 'text',
		success: function(data) {
			likeCount.innerText = data;
		},
		error: function(error) {
			console.log(error);
		}
	});
};
