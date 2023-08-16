<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyInfo</title>
</head>
<body>
	아이디 : ${user.id } 이름 : ${user.name } 이메일 : ${user.email }
	<div class="bt_wrap">
		<button type="button" id="updateUser">개인정보 수정</button>
		<button id="deleteUser">회원 탈퇴</button>
	</div>
</body>
</html>