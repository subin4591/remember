<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<meta charset="UTF-8">
<link href="/css/style.css" rel=stylesheet>
<link href="/css/footer.css" rel=stylesheet>
<link href="/image/icon.png" rel="icon">

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function() {
		// 스크롤 위치에 따른 버튼 표시 여부
		$(window).scroll(function() {
			if ($(window).scrollTop() > 300) {
				$("#goTop").show();
			}
			else {
				$("#goTop").hide();
			}
		});
		
		// 페이지 맨 위로 스크롤 이동
		$("#goTop").on("click", function() {
			window.scrollTo({
				top: 0,
				behavior: "smooth"
			});
		});
	});
</script>

<footer>
	<div>
		<p>나라를 위해 싸워주신 독립운동가들과 국민들이 있었기에<br>지금 우리가 이 자리에 있을 수 있습니다.<br><br>
			<strong>이분들의 이름을 기억해 주세요!</strong>
		</p>
	</div>
	
	<div class="footerlogo">
		<a href="/">
			<img alt="기억하길" src="/image/mainLogo.png">
		</a>
		<a href="https://www.mpva.go.kr/">
			<img alt="국가보훈부" src="/image/Independent.png">
		</a>
	</div>
	
	<div class="copyright">
		<p>Copyright © REMEMBER. All Rights Reserved.</p>
	</div>
	
	<button id="goTop">^<br>TOP</button>
</footer>