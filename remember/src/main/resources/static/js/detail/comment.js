function enterPress(el) {
	if (event.keyCode == 13) {
		event.preventDefault();

		if (el.name == 'addComment') {
			insertComment();
		} else if (el.name == 'editComment') {
			editComment();
		}

	}
}

function insertComment() {
	let contents = document.getElementsByName('addComment')[0].value;

	$.ajax({
		url: `/api/comment`,
		type: "post",
		data: {
			mng_no: mngNo[1],
			contents: contents
		},
		dataType: "text",
		success: function() {
			alert('등록되었습니다.')
			location.reload(true)
		},
		error: function(error) {
			console.log(error);
		},
	});
}

function changeInput(el) {
	let parents = el.parentNode.parentNode
	let nextSibling = parents.nextSibling.nextSibling

	parents.style.display = "none";
	nextSibling.style.display = "block";
}

function editComment(el) {
	let parents = el.parentNode
	let nextSibling = parents.nextSibling.nextSibling
	
	$.ajax({
		url: `/api/updateComment`,
		type: 'post',
		data: {
			comment_id: event.target.id,
			contents: nextSibling.childNodes[1].value
		},
		success: function() {
			alert('수정되었습니다.');
			location.reload(true);
		},
		error: function(error) {
			console.log(error);
		}
	});
}

function deleteComment() {
	const ok = window.confirm('삭제하시겠습니까?');

	if (ok) {
		$.ajax({
			url: `/api/deleteComment`,
			type: 'post',
			data: {
				comment_id: event.target.id
			},
			success: function() {
				alert('삭제되었습니다.');
				location.reload(true);
			},
			error: function(error) {
				console.log(error);
			}
		});
	}
}

function cancelComment(el) {
	let parents = el.parentNode.parentNode
	let prevSibling = parents.previousSibling.previousSibling

	parents.style.display = "none";
	prevSibling.style.display = "block";

}