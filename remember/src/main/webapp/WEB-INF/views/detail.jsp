<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="og:site_name" content="기억하길" />
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="/css/detail/detail.css" />
<link rel="stylesheet" href="/css/detail/tabMenu.css" />
<script src="/js/jquery-3.6.4.min.js"></script>
<title>기억하길</title>
</head>
<body>
	<main>
		<div class="top">
			<img src="/image/independence_mark.png" alt="국가유공자 마크">
			<p>유공자 정보</p>
		</div>

		<div class="profile">
			<div id="imgWrap"></div>
			<div class="informWrap">
				<div class="inform">
					<p>
						<span class="bold">관리번호</span><span id="mng_no"></span>
					</p>
					<p class="name">
						<span id="name_ko"></span>&nbsp;<span class="hanja" id="name_ch"></span>&nbsp;
					</p>
					<div class="informContent">
						<div class="left">
							<p>성별</p>
							<p>생년월일</p>
							<p>본적</p>
							<p>운동계열</p>
							<p>포상년도</p>
							<p>포상훈격</p>
						</div>
						<div class="right">
							<p id="sex"></p>
							<p>
								<span id="birthday"></span><span class="bold">사망년월일</span><span
									id="lastday"></span>
							</p>
							<p id="register"></p>
							<p id="workout_affil"></p>
							<p id="judge_year"></p>
							<p id="hunkuk"></p>
						</div>
					</div>
				</div>
				<div id="share" onclick="return copyURL()">
					<img src="/image/share.svg" alt="공유" />
				</div>
			</div>
		</div>

		<div class="tabMenu">
			<div class="tabWrap">
				<ul class="list">
					<li class="isOn"><a href="#tab1" class="btn">공적개요</a></li>
					<li id="hide"><a href="#tab2" class="btn">이달의 독립운동가</a></li>
				</ul>
			</div>

			<div class="tableWrap">
				<article id="tab1" style="display: block"></article>
				<article id="tab2" style="display: none"></article>
			</div>

			<div class="like"
				onclick="${user_id == null ? 'ckeckLogin()' : 'insertLike()'}">
				👍
				<p id="likeCount">${likeCount}</p>
				<p>존경해요</p>
			</div>
		</div>

		<div class="bottomTap">
			<p>감사합니다 💬</p>
		</div>
		<div class="commentWrap">
			<div class="inputWrap">
				<input type="text" name="addComment" class="commentInput"
					onkeyup="enterPress(this)"
					placeholder="${user_id == null ? '로그인 후 입력 가능합니다' : '감사하는 마음을 남겨보세요'}"
					${user_id == null ? ' disabled' : ''} />
				<button ${user_id == null ? 'disabled' : ''}
					onclick="insertComment()">입력</button>
			</div>

			<c:forEach var="comment" items="${commentList}">
				<div class="commentList">
					<div class="text" style="display: block;">
						<div class="commentInfo">
							<p>${comment.name}</p>
							<p id="date">
								<fmt:formatDate value="${comment.created_at}"
									pattern="yyyy-MM-dd HH:mm" />
							</p>
							<c:if test="${user_id eq comment.user_id}">
								<button id="${comment.comment_id}" onclick="changeInput(this)">수정</button>
							•
							<button id="${comment.comment_id}" onclick="deleteComment()">삭제</button>
							</c:if>
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
			</c:forEach>
		</div>

		<div class="bottomTap">
			<p>정보오류신고</p>
		</div>
		<div class="errorWrap">
			<a
				href="https://e-gonghun.mpva.go.kr/user/ErrorReportList.do?goTocode=40008">https://e-gonghun.mpva.go.kr/user/ErrorReportList.do?goTocode=40008</a>
		</div>
	</main>

	<script src="/js/detail/detail.js"></script>
	<script src="/js/detail/tabMenu.js"></script>
	<script src="/js/detail/insertLike.js"></script>
	<script src="/js/detail/comment.js"></script>
</body>
</html>
