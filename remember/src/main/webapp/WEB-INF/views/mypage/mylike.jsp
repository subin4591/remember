<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/style.css" rel=stylesheet>
<link href="/css/mypage/myinfo.css" rel=stylesheet>
<script src="/js/jquery-3.6.4.min.js"></script>
<script>
$(document).ready(function() {
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

	//Ajax 요청을 보내는 함수
	function fetchDataForAllMngNo(mngNoList) {
	  var requestUrl = "https://e-gonghun.mpva.go.kr/opnAPI/publicReportList.do";
	  var parameters = {
	    nPageIndex: 1,
	    nCountPerPage: 10,
	    type: "JSON", // 또는 "XML"
	    mngNo: "", // mng_no 값을 나중에 동적으로 넣을 것임
	  };
	
	  // mng_no 값을 기반으로 순차적으로 Ajax 요청 보내기
	  mngNoList.forEach(function(mngNo) {
	    parameters.mngNo = mngNo;
	
	    $.ajax({
	      url: requestUrl,
	      type: "GET",
	      data: parameters,
	      dataType: "json", // 또는 "xml"
	      success: function(response) {
	    	  console.log("Received data for mng_no " + mngNo, response);

	          if (response.ITEM_COUNT === 0) {
	            console.log("No data for mng_no " + mngNo);
	          } else {
	            for (let i = 0; i < response.ITEM_COUNT; i++) {
	              let item = response.ITEMS[i];
	              let ml = new mainList(item.MNG_NO, item.NAME_KO, item.SEX, item.WORKOUT_AFFIL);
	              $("#mainAllUl").append(ml.printLi());
	            }
	          }
	        },
	      error: function(error) {
              console.error("Error fetching data for mng_no " + mngNo, error);
            } // error 블록 종료
          }); // $.ajax 블록 종료
      }); // mngNoList.forEach 루프 종료
  } // fetchDataForAllMngNo 함수 종료
});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="my_wrap">
		<div class="my_title">
			<p>존경해요</p>
		</div>
		<div class="my_content">
			<div class="top">
				<div class="menu1" style="color: var(--gray3)">
					<a href="/myinfo">회원 정보</a>
				</div>
				<div class="menu2">
					<a href="/mypage/myinfo">존경해요</a>
				</div>
				<div class="menu3" style="color: var(--gray3)">
					<a href="/mypage/myinfo">작성 댓글</a>
				</div>
			</div>
			<div class="mylist">
				<ul id="mainAllUl">
				</ul>
			</div>
		</div>
	</div>
</body>
</html>