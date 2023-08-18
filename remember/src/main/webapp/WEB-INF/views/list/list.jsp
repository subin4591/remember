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
	<script src="/js/list/list.js"></script>
	<script>
		$(document).ready(function() {
			// param
			let type = "${ type }";
			let whatAPI = "publicReport";
			if (type == "month") {
				whatAPI = "indepCrusader";
				$("#listSort").hide();
			}
			
			// type active
			typeActive(type);
			
			// 독립유공자 리스트 click event
			$(document).on("click", ".listLi", function() {
				window.location.href = "/detail?mng_no=" + $(this).data("target");
			});
			
			// 기본 리스트 조회
			let ncpp = 12;	// nCountPerPage
			getList(whatAPI, "default", 1, ncpp);
			
			// sort event
			$(".sortA").on("click", function(event) {
				// 기본 이벤트 해제
				event.preventDefault();
				
				// sort 결과 출력
				let sort = $(this).data("target");
				getList(whatAPI, sort, 1, ncpp);
			});	// sort event end
			
			// page event
			$(document).on("click", ".pageBtn", function(event) {
				// 기본 이벤트 해제
				event.preventDefault();
				
				// page 결과 출력
				let sort = $(".sortA.pageActive").data("target");
				let page = $(this).data("target");
				getList(whatAPI, sort, page, ncpp);
			});	// page event end
			
			// 검색 submit
			$("#mainSearchSubmit").on("click", function() {
				let input = $("#mainSearchInput").val();
				
				if (input == "" || input == null) {
					alert("이름을 입력하시오.");
				}
				else {
					$("#mainSearchForm").submit();
				}
			});	// 검색 end
		});	// document end
	</script>
</head>
<body>
	<main>
		<form id="mainSearchForm" action="/search"
	    	data-aos="fade-up" data-aos-offset="100">
	    	<input id="mainSearchInput" type="text" name="searchInput" placeholder="이름을 입력하시오.">
	    	<img id="mainSearchSubmit" src="/image/main/search.png">
	    </form>
	    
		<ul	id="listTypeUl">
			<li class="listTypeLi" data-target="month" onclick="location.href='/list?type=month'">
				<h1>이달의 독립운동가</h1>
			</li>
			<li class="listTypeLi" data-target="all" onclick="location.href='/list?type=all'">
				<h1>모든 독립유공자</h1>
			</li>
		</ul>
		
		<div id="listUlCaption">
			<p id="liCnt">총 <span></span>명</p>
			<div id="listSort">
				<a href="" class="sortA" data-target="default">기본순</a>
				<c:choose>
					<c:when test="${ type == 'all' }">
						<a href="" class="sortA" data-target="like">존경순</a>
						<a href="" class="sortA" data-target="comment">댓글순</a>			
					</c:when>
				</c:choose>
			</div>
		</div>
		
		<ul id="listUl"></ul>
		
		<div class="pageNums"></div><h1 id="activePage" style="display: none;"></h1>
	</main>
</body>
</html>