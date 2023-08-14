<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
			<div class="profileImg"></div>
			<div class="informWrap">
				<div class="inform">
					<p>
						<span class="bold">관리번호</span><span id="mng_no">950430</span>
					</p>
					<p class="name">
						<span id="name_ko">가네코 후미코</span> <span class="hanja" id="name_ch">(金子文子)</span>
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
							<p id="sex">여성</p>
							<p><span id="birthday">1903-01-25</span><span class="bold">사망년월일</span><span id="lastday">1926-07-23</span></p>
							<p id="register">일본 <span class="hanja">山梨 東山梨 諏訪村杣口 1236</span></p>
							<p id="workout_affil">독립운동지원</p>
							<p id="judge_year">2018</p>
							<p id="hunkuk">애국장</p>
						</div>
					</div>
				</div>
				<div id="share">
					<object data="/image/share.svg" alt="공유"></object>
				</div>
			</div>
		</div>

		<div class="tabMenu">
			<div class="tabWrap">
				<ul class="list">
					<li class="isOn"><a href="#tab1" class="btn">공적개요</a></li>
					<li><a href="#tab2" class="btn">이달의 독립운동가</a></li>
				</ul>
			</div>

			<div class="tableWrap">
				<article id="tab1" class="table" style="display: block"></article>
				<article id="tab2" class="table"></article>
			</div>

			<div class="like">
				👍
				<p id="likeCount"></p>
				<p>존경해요</p>
			</div>
		</div>

		<div class="commentWrap">
			<div>
				<p>감사합니다 💬</p>
			</div>
			<c:if test="${user_id ne null}">
				<form method="post" class="inputWrap">
					<input type="text" name="contents" placeholder="감사하는 마음을 남겨보세요" />
					<button>입력</button>
				</form>
			</c:if>

			<c:forEach var="comment" items="${commentList}">
				<div class="commentWrap">
					<div class="commentInfo">
						<p>${comment.name}</p>
						<c:if test="${user_id eq comment.comment_id}">
							<button onclick="editComment('${comment.comment_id}')">수정</button>
							<button onclick="deleteComment('${comment.comment_id}')">삭제</button>
						</c:if>
						<p id="date">
							<fmt:formatDate value="${comment.created_at}"
								pattern="yyyy-MM-dd a hh:mm" />
						</p>
					</div>
					<p>${comment.content}</p>
				</div>
			</c:forEach>
		</div>

		<div class="errorWrap">
			<div>
				<p>정보오류신고</p>
			</div>

			<a
				href="https://e-gonghun.mpva.go.kr/user/ErrorReportList.do?goTocode=40008">https://e-gonghun.mpva.go.kr/user/ErrorReportList.do?goTocode=40008</a>
		</div>
	</main>

	<script src="/js/detail/detail.js"></script>
	<script src="/js/detail/tabMenu.js"></script>
</body>
</html>
