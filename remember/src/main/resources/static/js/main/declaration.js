$(document).ready(function() {
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
	
	// tap click event
	$(".declaTapLi").on("click", function() {
		// 기존 active class 제거
		$(".declaTapLi").removeClass("activeLi");
		$(".declaContents").hide();
		
		// 해당 active class 생성
		$(this).addClass("activeLi");
		
		// 해당 contents show
		let target = $(this).data("target");
		$(`#decla${ target }`).show();
	});
	
	// 한자 찾기
	$(".declaContents p:not(.noHan)").each(function() {
		let text = $(this).html();
		let newText = text.replace(/([\u4E00-\u9FFF]+)/g, "<span class='hanja' style='font-size: 18px;'>$1</span>");
		$(this).html(newText);
	});
});	// document end