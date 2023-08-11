<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Main Test</title>
	<script src="/js/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function() {
			// alert("Test");
		});
	</script>
</head>
<body>
	<h1>DB Test</h1>
	<form action="/main/insertTest" method="post">
		관리번호 <input type="text" name="mng_no"><br>
		이름 <input type="text" name="name"><br>
		<textarea rows="10" cols="80" name="contents"></textarea><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>