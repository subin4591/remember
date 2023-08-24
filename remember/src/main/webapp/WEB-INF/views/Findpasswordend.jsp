<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/Findpasswordend.css" />
<link rel="stylesheet" href="/css/style.css" />
<link href="/image/icon.png" rel="icon"> 
<title>기억하길</title>
<script src="/js/jquery-3.6.4.min.js"></script>
</head>
<body>
<div class="logo_container">
    <svg width="250" height="250" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
        <defs>
            <pattern id="pattern0" patternContentUnits="objectBoundingBox" width="1" height="1">
                <image x="0" y="0" width="1" height="1" xlink:href="image/mainLogo.png" preserveAspectRatio="xMidYMid meet" />
            </pattern>
        </defs>
        <rect width="100%" height="100%" fill="url(#pattern0)" />
    </svg>
</div>
	
	<div class="container">
      <form method="post" name="sendEmail" action="/Findpwupdate">
      <h1 class="h1">임시비밀번호를 이메일로 발송하였습니다.</h1>
          <input
            type="button"
            name="OK"
            value="확인"
            onclick ="return windowout()"
          />
      </form>
    </div>
</body>
<script>
function windowout(){
	window.close();
}
</script>
</html>