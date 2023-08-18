<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>기억하길</title>
	<link href="https://unpkg.com/swiper/swiper-bundle.min.css" rel="stylesheet">
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	<link href="/css/style.css" rel=stylesheet>
	<link href="/css/main/main.css" rel=stylesheet>
	<script src="/js/jquery-3.6.4.min.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> 
	<script>
		$(document).ready(function() {
			// AOS(Animate On Scroll)
			AOS.init();
			
			// 슬라이드 배너 Swiper
			const swiper = new Swiper(".swiper-container", {
				slidesPerView: 1,
				autoplay: {
				    delay: 8000,
				    disableOnInteraction: false,
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
			
			// 슬라이드 배너 마우스 올리면 일시정지
			$(".swiper-slide").on({
				mouseover: function() {
					swiper.autoplay.stop();
				},
				mouseout: function() {
					swiper.autoplay.start();
				}
			});
			
			// banner click event
			$(".swiper-slide").on("click", function() {
				window.location.href = "/detail?mng_no=" + $(this).data("target");
			});
			
			// 독립운동가 리스트 생성자
			function mainList(mngNo, name, sex, work) {
				this.mngNo = mngNo;
				this.sex = sex;
				this.work = work;
				if (name.length > 6) {
					this.name = name.substring(0, 6) + "...";
				}
				else {
					this.name = name;
				}
				this.printLi = function() {
					return `
						<li class="mainLi" data-target="\${ this.mngNo }">
							<div class="mainLiCaption">
								<p>\${ this.mngNo }</p>
								<p>\${ this.work }</p>
							</div>
			    			<div class="profileWrapper">
			    				<img
			    					src="https://e-gonghun.mpva.go.kr/hise/ua/getImage.do?mngNo=\${ this.mngNo }&type=CH"
			    					data-target="\${ this.sex }"
			    				>
			    			</div>
			    			<h2>\${ this.name }</h2>
			    		</li>
					`;	// return end
				};	// printMonthLi end
			};	// 독립운동가 리스트 생성자 end
			
			// 프로필 사진 없는 경우 함수
			function noProfile() {
				$(".profileWrapper img").on("error", function() {
					let sex = $(this).data("target");
					if (sex == "여") {
						$(this).attr("src", "/image/female.svg");
					}
					else {
						$(this).attr("src", "/image/male.svg");
					}
				});
			}	// 프로필 사진 없는 경우 함수 end
			
			// 독립운동가 리스트 click event
			$(document).on("click", ".mainLi", function() {
				window.location.href = "/detail?mng_no=" + $(this).data("target");
			});
			
			// 이달의 독립운동가 api
			let ncpp = 5;	// nCountPerPage
			$.ajax({
				url: "https://e-gonghun.mpva.go.kr/opnAPI/indepCrusaderList.do"
						+ "?nPageIndex=1&nCountPerPage=" + ncpp
						+ "&type=JSON",
				type: "get",
				dataType: "json",
				success: function(data) {
					// 페이지 개수, 랜덤 숫자
					let pageCnt = data.PAGE_COUNT;
					let randNum = Math.floor((Math.random() * (pageCnt - 1) + 1));
					
					// 랜덤 이달의 독립운동가 List
					$.ajax({
						url: "https://e-gonghun.mpva.go.kr/opnAPI/indepCrusaderList.do"
							+ "?nPageIndex=" + randNum
							+ "&nCountPerPage=" + ncpp
							+ "&type=JSON",
						type: "get",
						dataType: "json",
						success: function(data) {
							for (let i = 0; i < data.ITEM_COUNT; i++) {
								// ul에 추가
								let item = data.ITEMS[i];
								let ml = new mainList(item.MNG_NO, item.NAME_KO, item.SEX, item.WORKOUT_AFFIL);
								$("#mainMonthUl").append(ml.printLi());
								
								// 사진 없으면
								noProfile();
							}	// for end
						}	// 랜덤 이달의 독립운동가 List success end
					});	// 랜덤 이달의 독립운동가 List ajax end
				}	// 이달의 독립운동가 api success end
			});	// 이달의 독립운동가 api ajax end
			
			// 모든 독립유공자 존경해요순 조회
			async function getLikeList(list) {
				for (let i = 0; i < list.length; i++) {
					let mngNo = list[i];
					
					await $.ajax({
						url: "https://e-gonghun.mpva.go.kr/opnAPI/publicReportList.do"
							+ "?nPageIndex=1&nCountPerPage=1&type=JSON"
							+ "&mngNo=" + mngNo,
						type: "get",
						dataType: "json",
						success: function(data) {
							// ul에 추가
							let item = data.ITEMS[0];
							let ml = new mainList(item.MNG_NO, item.NAME_KO, item.SEX, item.WORKOUT_AFFIL);
							$("#mainAllUl").append(ml.printLi());
							
							// 사진 없으면
							noProfile();
						}	// success end
					});	// ajax end
				}	// for end
			}	// getLikeList end
			
			// 함수 실행
			getLikeList(${ likeList });
			
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
	
	<!-- main -->
	<main>
		<div class="swiper-container">
	        <div class="swiper-wrapper">
	        	<c:forEach items="${ randQ }" var="r" varStatus="s">
	        		<div class="swiper-slide" data-target="${ r.mng_no }">
	        			<div class="bannerBack">
	        				<img src="/image/main/bannerBack/bannerBack${ s.index }.png">
	        			</div>
	        			<div class="bannerText">
		        			<p>${ r.contents }</p>
		        			<p>-${ r.name }-</p>	        			
	        			</div>
	        		</div>
				</c:forEach>
	        </div>
	        <div class="swiper-prev"><img src="/image/main/prev.png"></div>
	        <div class="swiper-next"><img src="/image/main/next.png"></div>
	        <div class="swiper-pagination"></div>
	    </div>
	    
	    <form id="mainSearchForm" action="/search"
	    	data-aos="fade-up" data-aos-offset="100">
	    	<input id="mainSearchInput" type="text" name="searchInput" placeholder="이름을 입력하시오.">
	    	<img id="mainSearchSubmit" src="/image/main/search.png">
	    </form>
	    
	    <div id="mainMonthList" class="mainList"
	    	data-aos="fade-up" data-aos-offset="200">
	    	<div class="mainListTop">
	    		<div class="mainListLeft">
	    			<img src="/image/independence_mark.png">
		    		<h1>이달의 독립운동가</h1>
	    		</div>
	    		<button class="mainListBtn" onclick="location.href='/list?type=month'">전체보기</button>
	    	</div>
	    	<ul id="mainMonthUl"></ul>
	    </div>
	    
	    <div id="mainAllList" class="mainList"
	    	data-aos="fade-up" data-aos-offset="300">
	    	<div class="mainListTop">
	    		<div class="mainListLeft">
	    			<img src="/image/independence_mark.png">
		    		<h1>모든 독립유공자</h1>
	    		</div>
	    		<button class="mainListBtn" onclick="location.href='/list?type=all'">전체보기</button>
	    	</div>
	    	<ul id="mainAllUl"></ul>
	    </div>
	</main>
	
</body>
</html>