<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="UTF-8">
<link href="/css/style.css" rel=stylesheet>
<link href="/css/header.css" rel=stylesheet>
<link href="/image/icon.png" rel="icon">

<header>
	<div class='logo' onclick="window.location.href='/'">
		<img alt="기억할게 로고" src="/image/mainLogo.png">
	</div>
	
	<div class='headerlist'>
		<ul>
			<li><a href="/declaration/28">2.8 독립선언서</a></li>
			<li><a href="/declaration/31">3.1 독립선언서</a></li>
			<li><a href="/list?type=month">이달의 독립운동가</a></li>
			<li><a href="/list?type=all">독립유공자</a></li>
		</ul>
	</div>
	
	<div class="profile">
		<c:choose>
			<c:when test="${empty user}">
				<a href="#"><img alt="로그인" src="/image/login.png"></a>
			</c:when>
			<c:when test="${not empty user}">
				<a href="/myinfo"><img alt="마이페이지" src="/image/user.png"></a>
				<a href="#" onclick="logout()"><img alt="로그아웃" src="/image/logout.png"></a>
			</c:when>
		</c:choose>
	</div>
</header>