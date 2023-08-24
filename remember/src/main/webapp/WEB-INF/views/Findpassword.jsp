<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/Signin.css" />
<link href="/image/icon.png" rel="icon">
<link href="/css/style.css" rel=stylesheet>
<title>기억하길</title>
<script src="/js/jquery-3.6.4.min.js"></script>
</head>
<body>
	<div class="logo_container">
		<svg width="200" height="200" xmlns="http://www.w3.org/2000/svg"
			xmlns:xlink="http://www.w3.org/1999/xlink">
        <defs>
            <pattern id="pattern0"
				patternContentUnits="objectBoundingBox" width="1" height="1">
                <image x="0" y="0" width="1" height="1"
				xlink:href="/image/mainLogo.png" preserveAspectRatio="xMidYMid meet" />
            </pattern>
        </defs>
        <rect width="100%" height="100%" fill="url(#pattern0)" />
    </svg>
	</div>

	<div class="container">
		<form method="post" name="sendEmail" action="/Findpwupdate">
			<h3 class="h1"></h3>
			<section>
				<a class="a-word" id="a-id"></a> <input type="text" id="id"
					name="id" alt="ID입력" placeholder="아이디입력" />
			</section>
			<section>
				<a class="a-word" id="a-mail"></a> <input type="text" id="email"
					name="email" alt="이메일 입력" placeholder="이메일입력" />
          <input
            type="hidden"
            id="password"
            name="password"
          />
			</section>

			<input type="button" id="Findpassword" name="Findpassword"
				value="비밀번호 찾기" onclick="return checkFindEmail()" />
		</form>
	</div>
</body>
<script src="/js/Findpassword.js"></script>
</html>