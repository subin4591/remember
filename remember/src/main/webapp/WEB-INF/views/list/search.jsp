<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>기억하길</title>
	<link href="/image/icon.png" rel="icon">
	<link href="/css/style.css" rel=stylesheet>
	<link href="/css/list/list.css" rel=stylesheet>
	<link href="/css/list/search.css" rel=stylesheet>
	<script src="/js/jquery-3.6.4.min.js"></script>
	<script src="/js/list/list.js"></script>
	<script>
		$(document).ready(function() {
			// 검색어
			let searchInput = "${ param.searchInput }";
			let ncpp = 12;
			$("#listSort").hide();
			
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
			
			// 검색 API 조회 함수
			function getSearch(searchInput, page, ncpp) {
				let mngNoList = [];
				$("#listUl").html("");
				
				$.ajax({
					url: "https://e-gonghun.mpva.go.kr/opnAPI/publicReportList.do"
						+ "?nPageIndex=" + page
						+ "&nCountPerPage=" + ncpp
						+ "&type=JSON"
						+ "&nameKo=" + searchInput,
					type: "get",
					dataType: "json",
					success: function(data) {
						// 총 개수
						let totalCnt = data.TOTAL_COUNT;
						$("#liCnt span").text(totalCnt);
						
						// 검색 결과 미존재
						if (totalCnt == 0) {
							$("#searchList").hide();
							$("#searchNot").show();
						}	// 검색 결과 미존재 end
						
						// 검색 결과 존재
						else {
							// 페이지
							$(".pageNums").html(makePage(totalCnt, ncpp, page));
							pageActive("default", page);
							
							// API 리스트 조회
							for (let i = 0; i < data.ITEM_COUNT; i++) {
								// ul에 추가
								let item = data.ITEMS[i];
								let il = new indeList(item.MNG_NO, item.NAME_KO, item.SEX, item.WORKOUT_AFFIL);
								$("#listUl").append(il.printLi());
								
								// list에 추가
								mngNoList.push(item.MNG_NO);
								
								// 사진 없으면
								noProfile();
							}	// for end
							
							// DB 조회
							$.ajax({
								url: "/list/DB",
								data: {mngNoList: mngNoList},
								type: "post",
								dataType: "json",
								success: function(data) {
									for (let i = 0; i < data.length; i++) {
										// 존경, 댓글 출력
										likeComment(data[i].mng_no, data[i].like, data[i].comment);
									}	// for end
								}	// success end
							});	// DB 조회 ajax end
							
							// 검색어 색 변경
							$(".liName p").each(function() {
								let text = $(this).html();
								if (text.includes(searchInput)) {
									$(this).html(text.replace(searchInput, "<span class='setColor'>" + searchInput + "</span>"))
								}
							});	// 검색어 색 변경 end	
						}	// 검색 결과 존재 end
					}	// success end
				});	// ajax end
			}	// getSearch end
			
			// 검색
			getSearch(searchInput, 1, ncpp);
			
			// page event
			$(document).on("click", ".pageBtn", function(event) {
				// 기본 이벤트 해제
				event.preventDefault();
				
				// page 결과 출력
				let sort = $(".sortA.pageActive").data("target");
				let page = $(this).data("target");
				getSearch(searchInput, page, ncpp);
			});	// page event
			
			// 독립유공자 리스트 click event
			$(document).on("click", ".listLi", function() {
				window.location.href = "/detail?mng_no=" + $(this).data("target");
			});
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
	    
		<div id="searchTop">
			<img src="/image/independence_mark.png">
			<h1><span>"${ param.searchInput }"</span>검색결과</h1>
		</div>
		
		<div id="searchList">
			<div id="listUlCaption">
				<p id="liCnt">총 <span></span>명</p>
				<div id="listSort">
					<a href="" class="sortA" data-target="default">기본순</a>
				</div>
			</div>
			
			<ul id="listUl"></ul>
			
			<div class="pageNums"></div><h1 id="activePage" style="display: none;"></h1>
		</div>
		
		<div id="searchNot" style="display: none;">
			<h1>검색 결과가 없습니다.</h1>
		</div>
	</main>
</body>
</html>