let page = 1;

$(document).ready(function() {
	commentList(page)
})

function commentList(page) {
	$.ajax({
		url: `/api/commentList`,
		type: "post",
		data: {
			mng_no: mngNo[1],
			page: page,
		},
		dataType: "json",
		async: false,
		success: function (data) {
	      let totalCount = data.length != 0 ? data[0].totalCount : 0;
	      let commentList = document.getElementById("commentList");

	      pagination(page, totalCount);
	
	      commentList.innerHTML = data
	        .map((comment) => `
	        <div>
	          <div class="text" style="display: block;">
				<div class="commentInfo">
				  <p>${comment.name}</p>
				  <p id="date">${getDate(comment.created_at)}</p>
				  ${user_id == comment.user_id ? `
					<button id="${comment.comment_id}" onclick="changeInput(this)">수정</button>
					•
					<button id="${comment.comment_id}" onclick="deleteComment()">삭제</button>`
	              : ""}
				</div>
				<p>${comment.contents}</p>
			  </div>
			  <div class="edit" style="display: none;">
				<div class="commentInfo">
				  <p>${comment.name}</p>
				  <button id="${comment.comment_id}" onclick="editComment(this)">수정</button>
				  •
				  <button id="${comment.comment_id}" onclick="cancelComment(this)">취소</button>
				</div>
				<div class="inputWrap">
				  <input type="text" name="editComment" class="commentInput" value="${comment.contents}" />
				</div>
			  </div>
			</div>
			`)
	        .join("");
	    },
		error: function(error) {
			console.log(error);
		},
	});
}

function enterPress(el) {
	if (event.keyCode == 13) {
		event.preventDefault();

		if (el.name == "addComment") {
			insertComment();
		} else if (el.name == "editComment") {
			editComment();
		}
	}
}

function insertComment() {
	let contents = document.getElementsByName("addComment")[0].value;

	if (contents.length == 0) return false;

	$.ajax({
		url: `/api/comment`,
		type: "post",
		data: {
			mng_no: mngNo[1],
			contents: contents,
		},
		dataType: "text",
		success: function() {
			alert("등록되었습니다.");
			location.reload(true);
		},
		error: function(error) {
			console.log(error);
		},
	});
}

function changeInput(el) {
	let parents = el.parentNode.parentNode;
	let nextSibling = parents.nextSibling.nextSibling;

	parents.style.display = "none";
	nextSibling.style.display = "block";
}

function editComment(el) {
	let parents = el.parentNode;
	let nextSibling = parents.nextSibling.nextSibling;

	$.ajax({
		url: `/api/updateComment`,
		type: "post",
		data: {
			comment_id: event.target.id,
			contents: nextSibling.childNodes[1].value,
		},
		success: function() {
			alert("수정되었습니다.");
			location.reload(true);
		},
		error: function(error) {
			console.log(error);
		},
	});
}

function deleteComment() {
	const ok = window.confirm("삭제하시겠습니까?");

	if (ok) {
		$.ajax({
			url: `/api/deleteComment`,
			type: "post",
			data: {
				comment_id: event.target.id,
			},
			success: function() {
				alert("삭제되었습니다.");
				location.reload(true);
			},
			error: function(error) {
				console.log(error);
			},
		});
	}
}

function cancelComment(el) {
	let parents = el.parentNode.parentNode;
	let prevSibling = parents.previousSibling.previousSibling;

	parents.style.display = "none";
	prevSibling.style.display = "block";
}
