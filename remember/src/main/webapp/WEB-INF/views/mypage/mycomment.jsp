<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/style.css" rel=stylesheet>
<link href="/css/mypage/myinfo.css" rel=stylesheet>
<title>Insert title here</title>
</head>
<body>
	<div class="my_wrap">
		<div class="my_title">
			<p>작성 댓글</p>
		</div>
		<div class="my_content">
			<div class="top">
				<div class="menu1" style="color: var(--gray3)">
					<a href="/myinfo">회원 정보</a>
				</div>
				<div class="menu2" style="color: var(--gray3)">
					<a href="/mypage/myinfo">존경해요</a>
				</div>
				<div class="menu3">
					<a href="/mypage/myinfo">작성 댓글</a>
				</div>
			</div>
			<div class="mycomment">
				<div class="top">
						<div class="num">No.</div>
						<div class="title">댓글내용</div>
						<div class="date">작성일</div>
				</div>
				<div class="comment">
					<c:choose>
							<c:when test="${empty MyBoard}">
								<p>내가 쓴 글이 없습니다.</p>
							</c:when>
							<c:otherwise>
								<c:forEach items="${comment}" var="comment" varStatus="status">
									<div class="mycommentlist">
										<div class="num" id="boardid">${status.index + 1 + (currentpPage - 1) * 10}</div>
										<div class="title" id="title">
											<a href="/detail?mng_no=${comment.mng_no}">${comment.contents}</a>
										</div>
										<div class="date" id="creatAt">
											<fmt:parseDate value="${comment.created_at}"
												pattern="yyyy-MM-dd HH:mm:ss" var="parsedDate" />
											<fmt:formatDate value="${parsedDate}" pattern="yyyy-MM-dd" />
										</div>
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>