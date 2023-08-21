<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<p>회원 정보 수정</p>
		</div>
		<div class="my_content">
			<div class="top">
				<div class="menu1">
					<a href="/myinfo">회원 정보</a>
				</div>
				<div class="menu2" style="color: var(--gray3)">
					<a href="/mypage/myinfo">존경해요</a>
				</div>
				<div class="menu3" style="color: var(--gray3)">
					<a href="/mypage/myinfo">작성 댓글</a>
				</div>
			</div>
			<div class="myinfo">
				<form id="editForm" action="/myinfoedit" method="POST">
					<div class='myedit'>
						<p>아이디</p>
						<input type="text" name="memId" id="memId" value="${user.id }" disabled>
					</div>
					<div class='myedit'>
						<p>비밀번호*</p>
						<input type="password" name="memPw" id="memPw" value="${user.password }"
							maxlength="16"> <a class="help">(영문 대소문자/숫자/특수문자 중
							2가지 이상 조합, 8자~16자)</a>
					</div>
					<div class='myedit'>
						<p>비밀번호 확인*</p>
						<input type="password" name="memPw_confirm" id="memPw_confirm"
							value="" autocomplete="off" maxlength="16">
					</div>
					<div class='myedit'>
						<p>이름</p>
						<input type="text" name="memName" id="memName" value="${user.name }"
							disabled>
					</div>
					<div class='myedit'>
						<p>E-mail</p>
						<input type="tel" name="memEmail" id="memEmail" value="${user.email }"
							disabled>
					</div>
					<div class='myedit'>
						<button type="button" id="editBtn">수정 완료</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>