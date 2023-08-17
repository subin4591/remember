<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>기억하길</title>
	<link href="/css/style.css" rel=stylesheet>
	<link href="/css/list/list.css" rel=stylesheet>
	<script src="/js/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function() {
			// param
			let type = "${ type }";
			
			// type active function
			function typeActive(type) {
				$(`.listTypeLi[data-target=\${ type }]`).addClass("activeLi");
			}
			typeActive(type);
			
			// 독립운동가 리스트 조회
			let whatAPI = "";
		});
	</script>
</head>
<body>
	<main>
		<ul	id="listTypeUl">
			<li class="listTypeLi" data-target="month" onclick="location.href='/list?type=month'">
				<h1>이달의 독립운동가</h1>
			</li>
			<li class="listTypeLi" data-target="all" onclick="location.href='/list?type=all'">
				<h1>모든 독립유공자</h1>
			</li>
		</ul>
		
		<div id="listUlCaption">
			<p id="liCnt">총 <span>103</span>개</p>
			<div id="listSort">
				<a href="">기본순</a>
				<a href="">존경순</a>
				<a href="">댓글순</a>
			</div>
		</div>
		
		<ul id="listUl">
			<li class="listLi">
				<div class="liCaption">
					<p class="liMngNo">3536</p>
					<p class="liWork">3.1운동</p>
				</div>
				<div class="liContents">
					<div class="liProfile">
						<img src="https://e-gonghun.mpva.go.kr/hise/ua/getImage.do?mngNo=3536&type=CH">
					</div>
					<div class="liInfo">
						<div class="liName">
							<p>유관순</p>
						</div>
						<div class="liBottom">
							<div class="liSex">
								<p>성별</p>
								<p>여성</p>
							</div>
							<div class="liLike">
								<p>존경</p>
								<p>20</p>
							</div>
							<div class="liComm">
								<p>댓글</p>
								<p>5</p>
							</div>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</main>
</body>
</html>