<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>기억하길</title>
	<link href="https://unpkg.com/swiper/swiper-bundle.min.css" rel="stylesheet">
	<link href="/css/style.css" rel=stylesheet>
	<link href="/css/main/main.css" rel=stylesheet>
	
	<script src="/js/jquery-3.6.4.min.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script>
		$(document).ready(function() {
			// 슬라이드 배너
			const swiper = new Swiper(".swiper-container", {
				slidesPerView: 1,
				autoplay: {
				    delay: 10000,
				},
				loop: true,
				pagination: {
					el: ".swiper-pagination",
					clickable: true
				},
				navigation: {
					nextEl: ".swiper-next",
					prevEl: ".swiper-prev"
				}
			});
		});
	</script>
</head>
<body>
	
	<!-- main -->
	<main>
		<div class="swiper-container">
	        <div class="swiper-wrapper">
	        	<c:forEach items="${ randQ }" var="r">
	        		<div class="swiper-slide">
	        			<div class="bannerBack">
	        				<img src="/image/main/bannerBack1.jpg">
	        			</div>
	        			<div class="bannerText">
		        			<p>${ r.contents }</p>
		        			<p>-${ r.name }-</p>	        			
	        			</div>
	        		</div>
				</c:forEach>
	        </div>
	        <div class="swiper-prev">&lt;</div>
	        <div class="swiper-next">&gt;</div>
	        <div class="swiper-pagination"></div>
	    </div>
	    
	    <h1>이달의 독립운동가</h1>
	</main>
	
</body>
</html>