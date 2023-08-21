<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>기억하길</title>
	<link href="/image/icon.png" rel="icon">
	<link href="https://unpkg.com/swiper/swiper-bundle.min.css" rel="stylesheet">
	<link href="/css/style.css" rel=stylesheet>
	<link href="/css/main/declaration.css" rel=stylesheet>
	<script src="/js/jquery-3.6.4.min.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="/js/main/declaration.js"></script>
</head>
<body>
	<!-- header -->
	<%@ include file="../header.jsp" %>
	
	<!-- main -->
	<main>
		<div id="declaTop">
			<img src="/image/independence_mark.png">
		    <p>독립선언서</p>
		</div>
		
		<div id="declaTopInfo">
			<div class="swiper-container">
		        <div class="swiper-wrapper">
		        	<c:forEach var="i" begin="1" end="6">
		        		<div class="swiper-slide">
		        			<div class="bannerBack back28">
		        				<img src="https://search.i815.or.kr/data2/contents_image/favor/2_${ i }.jpg">
		        			</div>
		        		</div>
					</c:forEach>
		        </div>
		        <div class="swiper-prev"><img src="/image/main/prev.png"></div>
		        <div class="swiper-next"><img src="/image/main/next.png"></div>
		        <div class="swiper-pagination"></div>
		    </div>
		    
		    <div id="declaTopInfoRight">
		    	<p id="declaName">2.8 독립선언서 <span class="hanja">(二八獨立宣言)</span></p>
		    	<div id="declaDefinition">
		    		<p>정의</p>
		    		<p>1919년 도쿄<span class="hanja">[東京]</span> 유학생들이 조선청년독립단의 명의로 한국의 독립을 선포한 선언서.</p>
		    	</div>
		    	<div id="declaExplanation">
		    		<p>설명</p>
		    		<p>1919년 2월 8일 동경의 유학생들이 조선독립청년단 명의로 발표한 선언서이다. 선언서에는 1. 한일 병합조약 폐지와 조선독립 선언 2. 민족대회 소집 요구 3. 만국평화회의에 민족대표 파견 4. 요구가 이루어질 때까지 혈전 선언 등의 4개 항목의 결의문이 실려있다. 이 결의문은 3・1독립선언서에서는 공약 3장으로 바뀌어 온건하게 표현되었다.</p>
		    	</div>
		    </div>
		</div>
		
		<ul id="declaTap">
			<li class="declaTapLi activeLi" data-target="Info">
				<p>정보</p>
			</li>
			<li class="declaTapLi" data-target="Kor">
				<p>현대한국어</p>
			</li>
			<li class="declaTapLi" data-target="Han">
				<p>국한문체</p>
			</li>
			<li class="declaTapLi" data-target="Jpn">
				<p>일본어</p>
			</li>
			<li class="declaTapLi" data-target="Chn">
				<p>중국어</p>
			</li>
			<li class="declaTapLi" data-target="Eng">
				<p>영어</p>
			</li>
		</ul>
		
		<div class="declaContents" id="declaInfo">
			<p>
				일명 조선청년독립선언이라고도 한다. 3·1운동 전후에 발표된 독립선언서는 모두 셋이다. 첫째는 1918년 11월 만주·러시아령에서 발표한 「무오독립선언서」, 둘째는 「2·8독립선언서」, 셋째는 1919년 3월 1일 서울에서 발표된 「3·1독립선언서」이다.<br><br>
				2·8독립선언서는 학생들에 의해 작성되었다는 점과 3·1운동 발단에 직접적인 영향을 미쳤다는 데 특색이 있다. 동경유학생들은 이미 한말 때부터 대한흥학회를 조직하고 학회지 『대한흥학보』를 간행하여 국내에 배포하는 등 애국개화운동에 기여하였다.<br><br>
				1910년 망국 이후에는 조선유학생학우회·조선기독교청년회·조선학회·조선여자친목회 등 자치단체를 조직하여 회원들의 애국사상을 고취하였다. 특히, 조선유학생학우회는 1912년 10월 조직되어 동경유학생 전원이 자동 가입되었으며, 회지 『학지광(學之光)』을 발간하였다. 한편, 웅변·토론·강연·졸업생축하회·신입생환영회 등 모임을 열어 회원의 애국사상을 고취하였다.<br><br>
				재일유학생들이 한국의 독립문제에 관심을 가지기 시작한 것은, 제1차 세계대전이 발발한 1914년부터라고 하겠으나, 1918년 1월 종전을 앞두고 미국대통령 윌슨(Wilson, T. W.)이 발표한 평화원칙 14조와 그 해 11월 성립된 휴전조약에서 직접적인 자극을 받아 독립선언서를 발표하게 되었다.<br><br>
				특히 1918년 12월 15일자 『저팬 애드버타이저 The Japan Advertizer』(神戶에서영국인이 발간한 영자지)에 「한국인, 독립을 주장 Korea, Agitate for Independence」이라는 제하에 재미동포들이 독립운동에 대한 미국의 원조를 요청하는 청원서를 미국정부에 제출하였다는 보도기사와, 12월 18일자 「약소민족들 발언권 인정을 요구」라는 기사에 뉴욕에서 열린 세계약소민족동맹회의 2차 연례총회에서 파리강화회의 및 국제연맹에서 약소민족의 발언권을 인정해야 한다고 주장했다는 등의 보도에 유학생들은 크게 고무되었다.<br><br>
				이와 같은 소식을 접한 재일유학생들은 1919년 1월 6일 동경 간다(神田)에 있는 조선기독교청년회관에서 웅변회를 열어 “오늘의 정세는 우리 조선민족의 독립운동에 가장 적당한 시기이며, 해외의 동포들도 이미 실행운동에 착수하고 있으므로 우리도 마땅히 구체적 운동을 개시하여야 한다”고 결의하였다.<br><br>
				실행위원으로 최팔용(崔八鏞, 早稻田大學 3년)·서춘(徐椿, 東京高等師範學校 3년)·백관수(白寬洙, 正則英語學校)·이종근(李琮根, 東洋大學)·송계백(宋繼白, 早稻田大學)·김도연(金度演, 慶應大學) 등 10명을 선출하였다.<br><br>
				실행위원들은 독립선언서를 발표하여 이를 일본정부가 각국 대사·공사, 그리고 일본 귀족원·중의원 양의원에 보내기로 결의하였다. 그들은 1월 7일 청년회관에서 200여 명의 회원들이 모인 가운데 이와 같은 결의사항을 보고하고 만장일치로 동의를 얻었다.<br><br>
				실행위원 중 전영택(田榮澤)이 신병으로 사퇴하자, 베이징으로부터 서울을 거쳐 동경으로 온 이광수(李光洙, 早稻田大學)·김철수(金喆壽, 東京帝國大學) 등이 추가되었다. 총 11명으로 구성된 실행위원들은 조선청년독립단을 조직하고 독립선언서를 기초하였다.<br><br>
				기초위원으로 백관수·김도연·이광수 등이 선출되었으나, 실제 문안작성은 이광수가 전담한 것으로 알려져 있다. 완성된 선언서 초안 한 부는 송계백과 최근우(崔謹愚)에 의해 국내로 전해져, 중앙학교 현상윤(玄相允)·송진우(宋鎭禹)·최남선(崔南善)·최린(崔麟) 등을 흥분시키기도 했다.<br><br>
				최팔용은 1919년 2월 7일 일문으로 된 「민족대회소집 청원서」를 동경 시바구[芝區] 고야마정[小山町]에 있는 이토인쇄소[伊藤印刷所]에서 1,000부를 인쇄하였다. 그리고 「독립선언서 부(附)결의문은 국문·일문·영문 등으로 작성 되었기 때문에, 7일 밤 김희술(金熙述) 집에서 국문·일문(600부)을 등사판으로 밀고 영문은 타자를 쳤다.<br><br>
				이튿날 아침 10시 준비된 청원서와 선언서를 먼저 우편으로 동경주재 각국 대사관·공사관과 일본정부의 각 대신, 일본 귀족원·중의원, 조선총독 및 각 신문사로 보내고, 오후 2시기독교청년회관에서 유학생대회를 열었다.<br><br>
				600여 회원의 환호 속에 역사적인 「2·8독립선언서」가 발표되었다. 대부분의 동경유학생 이 참석한 가운데 열린 독립선언회의에서 독립실행방법을 토의하려 하였으나, 관할 니시간다[西神田]경찰서장의 강제해산 명령으로 이뤄지지 못하고 실행위원 10명이 붙잡혔다. 그런데 이광수는 이미 1월에 중국으로 떠난 상태였다.<br><br>
				2월 12일 유학생 100여 명이 다시 히비야공원[日比谷公園]에 모여 이달(李達)을 회장으로 추대하고 「독립선언서」를 재차 발표하려 하였으나 이달 등 13명이 붙잡혀 해산되고 말았다.<br><br>
				같은 달 23일 또 변희용(卞熙鎔)·최재우(崔在宇)·장인환(張仁煥) 등 5명이 조선청년독립단 민족대회촉진부 취지서를 인쇄하여 히비야공원에서 배포하고 시위운동을 벌이려 하였으나 일본 경찰에 붙잡히고 말았다.<br><br>
				같은 해 국내에서 3·1운동이 일어나자, 유학생들은 조선독립단 동맹휴학촉진부를 결성하여 동맹휴학운동을 전개하거나, 고국으로 돌아가 3·1운동에 참여하기도 하였다. 일제의 통계에 따르면 1919년 2월 8일부터 5월 15일까지 재일유학생 359명이 귀국하였는데, 그 중 127명이 서울로 돌아왔다고 한다.<br><br>
				젊은 동경유학생들이 기초하여 발표한 「2·8독립선언서」는 일제침략행위를 역사적으로 설명하고, 병합이 민족의 의사를 무시한 일제의 군국주의적 야심의 사기와 폭력에 의해 이뤄졌음을 규탄하였다. 또한 식민지정책의 야만적 성격을 폭로하였고, 일제와 열강은 마땅히 동양평화와 세계평화를 위해 한국을 독립시켜야 한다고 주장하였다.<br><br>
				선언문은 두 가지 점에서 「3·1독립선언서」보다 의미있다고 할 것이다. 첫째, 이 선언서는 최남선이 「3·1독립선언서」를 기초할 때 참고한 문헌이었다는 점이다. 최남선은 이광수의 문장을 한층 다듬었으나, 문맥은 같은 것이며 “되도록 온건하게 쓰라”는 손병희의 지시에 따라 2·8선언서의 과격한 표현을 대폭 연화시켰을 뿐이다.<br><br>
				특히 선언서 말미의 결의문 4항을 공약 3장으로 바꾼 최남선은 “일체의 행동은 가장 질서를 존중하여야 하며 배타적 감정을 삼가하라”고 주장하였다. 결의문을 건의문으로 변조하였다고는 할 수는 없으나 독립을 요구한다는 「2·8독립선언서」의 강력한 의사표시가 부드럽게 표현된 사실만은 부정할 수 없다.<br><br>
				둘째, 「2·8독립선언서」는 정당한 방법으로 민족의 자유를 추구한 것으로, “만일 이로써 성공하지 못하면 온갖 자유행동을 취하여 최후의 일인까지 열혈을 흘릴 것이며, 영원한 혈전을 불사한다”라고 주장하였다.<br><br>
				그러나 「3·1독립선언서」에서는 단 한마디도 피의 전쟁을 언급한 일이 없으며 공약 3장 2에서, 다만 “최후의 일인까지 최후의 일각까지 민족의 정당한 의사를 쾌히 발표하라”고 말했을 뿐이다. 그러므로 2·8독립선언은 무단통치하에 신음하는 2000만 민족의 고통과 강렬한 독립요구를 한층 절실하게 표명한 것이라 할 수 있을 것이다.
			</p>
		</div>
		
		<div class="declaContents declaLang" id="declaKor" style="display: none;">
			<p>
				<span>선언서</span><br><br>
				모든 조선청년독립단은 우리 이천만 조선민족을 대표하여 정의와 자유의 승리를 얻은 세계 만국 앞에 독립을 선언한다.<br><br>
				4300년 유구한 역사를 지닌 우리 겨레는 실로 세계 최고의 문명 민족 중 하나다. 비록 한 때 중국의 정삭을 받든 적은 있었으나 이는 양국황실의 형식적 외교 관계에 지나지 아니하였고 조선은 늘 우리 겨레의 조선이오 한 차례도 통일국가를 잃고 다른 민족의 실질적인 지배를 받은 적이 없다. 일본은 조선이 일본과 순치 관계가 있음을 깨닫고 1895년 청일전쟁의 결과로 일본이 한국 독립을 앞장서 승인하였고 영국, 미국, 프랑스, 독일, 러시아 등 여러 나라도 독립을 승인했을 뿐 아니라 이를 보전하기로 약속하였다. 한국은 좋은 의미에 감동하여 그 뜻을 벼리어내고 여러 개혁과 국력의 충실을 꾀하였다.<br><br>
				당시 러시아 세력이 남하하여 동양평화와 한국의 안녕을 위협하니 일본은 한국과 공수동맹을 체결하여 러일전쟁을 펼치니 동양평화와 한국의 독립 보전은 실로 이 동맹이 이미 말하고 있는 바, 한국은 그 호의에 감동하여 육해군의 원조는 불가능했어도 주권의 위엄까지 희생하여 가능한 온갖 의무를 다하여 동양평화와 한국독립의 양대 목적을 추구하였다. 마침내 전쟁이 끝나고 당시 미국 대통령 루즈벨트의 중재로 러일 간 강화회담(포츠머스 조약)이 열리니 일본은 동맹국인 한국의 참가를 불허하고 러일 두 나라 대표자 사이에 임의로 일본의 한국에 대한 종주권을 안건으로 올렸으며, 일본은 우월한 병력을 가지고 한국의 독립을 보전한다는 옛 약속을 어기고 힘없는 한국 황제와 그 정부를 위협하고 속여「국력의 충실함이 족히 독립을 얻을 만한 시기까지」라는 조건으로 한국 외교권을 빼앗아 일본 보호국으로 만들었다. 일본은 한국이 직접 세계 여러 나라와 교섭할 길을 끊고「상당한 시기까지」라는 조건으로 사법·경찰권을 빼앗았고 다시「징병령 실시까지」라는 조건으로 군대를 해산, 민간무기를 압수하고 일본군대와 헌병경찰을 각지에 두었으며, 심지어 황궁의 경비까지 일본 경찰을 두었다. 이리하여 한국이 전혀 저항할 수 없도록 만든 뒤 다소 명철한 한국 황제를 내쫓고 황태자를 내세워 일본의 사냥개로 이른바 합병 내각을 조직, 비밀과 무력 속에서 합병조약을 맺으니 이에 우리 겨레는 건국 이래 반만 년에 스스로를 이끌고 도와준다고 하는 우방의 군국적 야심에 희생되었다.<br><br>
				실로 이러한 일본의 행위는 사기와 폭력에서 비롯된 것이니 이렇게 거대한 사기의 성공은 세계흥망사에 특필할 인류의 큰 수치이자 치욕이다. 보호조약을 맺을 때에 황제와 불충한 신하가 아닌 몇몇 대신들은 모든 반항 수단을 다하였고 발표 뒤에도 모든 국민이 맨몸으로 할 수 있는 온갖 반항을 다하였으며 사법, 경찰권을 빼앗길 때도 군대 해산 시에도 그리 하였고 합병 때에 이르러서는 수중에 쇠붙이 하나 없음에도 할 수 있는 온갖 반항 운동을 다하다가 날카로운 일본 무기에 희생된 사람을 헤아릴 수 없다. 그 뒤 십년 간 독립운동으로 희생된 자가 몇 십만이며 가혹한 헌병 정치 아래 손발과 표현의 자유를 억압당하면서도 독립운동이 끊긴 적 없으니 이를 보아도 한일합병이 조선민족의 의사가 아님을 알 수 있다.<br><br>
				이같이 우리 겨레는 일본 군국주의적 야심의 사기와 폭력 아래 우리 겨레의 뜻에 반하는 운명을 맞았으니 정의로 세계를 바꾸고 있는 이 때에 당연히 이를 바로잡기를 세계에 요구할 권리가 있다. 또 오늘 세계 개조의 주인이 되는 미국과 영국은 보호와 합병을 앞장서 승인한 까닭으로 지난날의 과오를 씻을 의무가 있다. 또 합병 이래 일본의 조선 통치 정책을 보면 합병 때 선언과 달리 우리 겨레의 행복과 이익을 무시하고 정복자가 피정복자에게 대하는 고대의 비인도적 정책을 적용하여 우리 겨레에게는 주권자로서 누릴만한 마땅한 권리, 집회결사의 자유, 언론 출판의 자유를 불허하고 심지어 종교의 자유, 기업의 자유까지도 적잖이 구속하며 행정·사법·경찰 등 모든 기관이 조선민족의 인권을 침해하고 공공의 이익에서도 우리 겨레와 일본인 사이에 우열의 차별을 두어 일본인에 비해 열등한 교육을 받게 해 우리 겨레가 영원히 일본인의 노예로 살게 할 뿐 아니라 역사를 개조하여 우리 겨레의 신성한 역사적 민족적 전통과 위엄을 파괴하고 소수의 관리를 뺀 교통, 통신, 군사시설 등 모든 정부기관에 일본인만 써서 우리 겨레는 영원히 국가 생활의 지능과 경험을 얻을 수 없게 하니, 우리 겨레는 결코 무단전제에 부정불평등한 정치 아래에서 생존과 발전을 누릴 수 없다. 그 뿐 아니라 원래 인구가 많은 조선에 무제한으로 이민을 장려하여 이 땅에 뿌리내려 온 우리 겨레는 해외로 떠돌이를 면치 못하게 하고, 모든 국가기관은 물론 사설기관이 일본인을 채용하여 조선인의 직업을 잃게 하고, 조선인의 부를 일본으로 유출케 하는 등 상공업에서도 일본인에게는 특수한 편익을 주어 조선의 산업발흥 기회를 잃게 하였다. 어느 면으로 봐도 우리 겨레와 일본인과 이해는 서로 배치되며 항상 그 피해를 받는 자는 우리 겨레이니 우리 겨레는 생존의 권리를 위하여 독립을 주장한다.<br><br>
				마지막으로 동양평화의 관점에서 보았을 때 위협자이던 러시아는 군국주의적 야심을 포기하고 정의와 자유와 박애를 기초로 한 새로운 국가를 건설하는 중이고 중국 또한 그러하며 이번 국제연맹이 실현되면 다시 군국주의적 침략을 감행할 강국은 없을 것이다. 그렇기에 한국을 합병한 가장 큰 이유가 이미 소멸되었을 뿐더러 만일 조선민족이 무수한 혁명란을 일으킨다면 일본에게 합병된 한국은 도리어 동양평화를 교란할 화근이 될 것이다. 우리는 정당한 방법으로 우리 겨레의 자유를 추구할 것이나 만일 이로써 성공치 못하면 우리 겨레는 생존의 권리를 위하여 온갖 자유행동을 취하여 최후의 일인까지 자유를 위해 뜨거운 피를 흘릴지니 어찌 동양평화의 불행이 아니겠는가. 우리 겨레에겐 한 명의 병사도 없다. 병력으로 일본에게 맞설 물리력이 없다. 그러나 만약 일본이 우리 겨레의 정당한 요구에 불응한다면 우리 겨레는 일본에 대하여 영원한 혈전을 선언하리라.<br><br>
				우리 겨레는 일찍부터 뛰어난 문화와 반만년 국가생활의 경험을 갖고 있다. 비록 많은 세월 전제정치의 해악과 경우의 불행이 우리 겨레를 오늘로 이르게 했지만 정의와 자유를 기초로 한 민주주의 위에 선진국의 전범을 따라 새로운 국가를 건설한 뒤에는 문화·정의·평화를 애호하는 우리 겨레는 반드시 세계평화와 인류문화에 공헌할 것이다.<br><br>
				이에 우리 겨레는 일본이나 혹은 세계 각국이 우리 겨레에게 민족자결의 기회를 주길 요구하며 만일 그렇지 않으면 우리 겨레는 생존을 위해 자유행동을 취하여 우리 겨레의 독립을 이룩할 것을 선언한다.<br><br>
				&lt;결의문&gt;<br><br>
				1. 재일본동경조선청년독립단은 한일합병이 우리 겨레의 자유의사에서 나오지 않고 우리 겨레의 생존발전을 위협하고 동양평화를 뒤흔들 원인이 된다는 이유로 독립을 주장함.<br>
				2. 본단은 일본 의회와 정부에 조선민족대회를 소집하여 대회의 결의로 우리 겨레의 운명을 결정할 기회가 생기기를 요구함.<br>
				3. 본단은 만국평화회의에 민족자결주의를 우리 민족에게 적용하기를 요구함. 이와 같은 목적을 달성하기 위해 일본에 주재한 각국 대사에게 본단의 의사를 각 해당 정부에 전달하기를 의뢰하고 동시에 위원 2인을 만국평화회의에 파견함. 이 위원은 앞서 파견된 우리 민족의 위원과 행동을 같이함.<br>
				4. 앞의 모든 항목의 요구가 실패할 때에는 우리 겨레는 일본에 대하여 영원의 혈전을 선언함. 이로써 발생하는 참화는 우리 민족이 그 책임을 지지 아니함.<br><br>
				재일본 동경 조선청년독립단 대표<br><br>
				右 代表者 崔八鏞(최팔용), 李琮根(이종근), 金度演(김도연), 宋繼白(송계백), 李光洙(이광수), 崔謹愚(최근우), 金喆壽(김철수), 金尙德(김상덕), 白寬洙(백관수), 徐椿(서춘), 尹昌錫(윤창석)
			</p>
		</div>
		
		<div class="declaContents declaLang" id="declaHan" style="display: none;">
			<p>
				<span>宣言書</span><br><br>
				全朝鮮靑年獨立團은 我二千萬朝鮮民族을 代表하야 正義와 自由의 勝利를 得한 世界萬國의 前에 獨立을 期成하기를 宣言하노라.<br><br>
				四千三百年의 長久한 歷史를 有한 吾族은 實로 世界最古文明民族의 一이라. 비록 有時乎支那의 正朔을 奉한 事는 有하엿으나 此는 朝鮮皇室과 支那皇室과의 形式的外交關係에 不過하엿고 朝鮮은 恒常吾族의 朝鮮이오 一次도 統一한 國家를 失하고 異族의 實質的支配를 受한 事 無하도다. 日本은 朝鮮이 日本과 脣齒의 關係가 有함을 自覺함이라 하야 一千八百九十五年 日靑戰爭의 結果로 日本이 韓國의 獨立을 率先承認하엿고 英·米·法·德·俄等 諸國도 獨立을 承認할뿐더러 此를 保全하기를 約束하엿도다. 韓國은 그 恩義을 感하야 銳意로 諸般改革과 國力의 充實을 圖하엿도다.<br><br>
				當時俄國의 勢力이 南下하야 東洋의 平和와 韓國의 安寧을 威脅할새 日本은 韓國과 攻守同盟을 締結하야 日俄戰爭을 開하니 東洋의 平和와 韓國의 獨立保全은 實로 此同盟의 主旨와 韓國은 더욱 그 好誼에 感하야 陸海軍의 作戰上援助는 不能하엿으나 主權의 威嚴까지 犧牲하야 可能한 온갓 義務를 다하야써 東洋平和와 韓國獨立의 兩大目的을 追求하얏도다. 及其戰爭이 終結되고 當時米國大統領 루쓰별트氏의 仲裁로 日俄間에 講和會議 開設될새 日本은 同盟國인 韓國의 參加를 不許하고 日俄 兩國 代表者間에 任意로 日本의 韓國에 對한 宗主權을 議定하엿으며 日本은 優越한 兵力을 持하고 韓國의 獨立을 保全한다는 舊約을 違反하야 暗弱한 當時韓國皇帝와 그 政府를 威脅하고 欺罔하야 「國力의 充實함이 足히 獨立을 得할 만한 時期까지라」는 條件으로 韓國의 外交權을 奪하야 此를 日本의 保護國을 作하야 韓國으로 하야곰 直接으로 世界列國과 交涉할 道를 斷하고 因하야 「相當한 時期까지라」는 條件으로 司法·警察權을 奪하고 更히 「徵兵令 實施까지라」는 條件으로 軍隊를 解散하며 民間의 武器를 押收하고 日本 軍隊와 憲兵警察를 各地에 遍置하며 甚至에 皇宮의 警備까지 日本 警察를 使用하고 如此히 하야 韓國으로 하여곰 全혀 無抵抗者를 作한 後에 多少 明哲의 稱이 有한 韓國 皇帝를 放逐하고 皇太子를 擁立하고 日本의 走狗로 所謂 合倂 內閣을 組織하야 秘密과 武力의 裏에서 合倂條約을 締結하니 玆에 吾族은 建國 以來 半萬年에 自己를 指導하고 援助하노라 하는 友邦의 軍國的 野心에 犧生되엿도다.<br><br>
				實로 日本은 韓國에 對한 行爲는 詐欺와 暴力에서 出한 것이니 實上 如此히 偉大한 詐欺의 成功은 世界興亡史上에 特筆할 人類의 大辱恥辱이라 하노라. 保護條約을 締結할 時에 皇帝와 賊臣 안인 幾個大臣들은 모든 反抗手段을 다하얏고 發表 後에도 全國民은 赤手로 可能한 온갖 反抗을 다하얏으며 司法, 警察權의 被奪과 軍隊解散時에도 然하얏고 合倂時를 當하야는 手中에 寸鐵이 無함을 不拘하고 可能한 온갓 反抗運動을 다하다가 精銳한 日本武器에 犧牲이 된 者이 不知其數며 以來 十年間 獨立을 恢復하랴는 運動으로 犧牲된 者이 數十萬이며 慘酷한 憲兵政治下에 手足과 口舌의 箝制를 受하면서도 曾히 獨立運動이 絶한 적이 업나니 此로 觀하여도 日韓合倂이 朝鮮民族의 意思가 아님을 可知할지라.<br><br>
				如此히 吾族은 日本軍國主義的 野心의 詐欺暴力下에 吾族의 意思에 反하는 運命을 當하얏으니 正義로 世界를 改造하는 此時에 當然히 匡正을 世界에 求할 權利가 有하며 또 世界改造에 主人되는 米와 英은 保護와 合倂을 率先承認한 理由로 此時에 過去의 舊惡을 贖할 義務가 有하다 하노라. 또 合倂 以來 日本의 朝鮮統治 政策을 보건대 合倂時의 宣言에 反하야 吾族의 幸福과 利益을 無視하고 征服者가 被征服者에게 對하는 古代의 非人道的政策을 應用하야 吾族에게는 大小政權, 集會結社의 自由, 言論出版의 自由를 不許하며 甚至에 信敎의 自由, 企業의 自由까지도 不少히 拘束하며 行政 司法 警察 等 諸機關이 朝鮮民族의 人權을 侵害하며 公利에 吾族과 日本人間에 優劣의 差別을 設하며 日本人에 比하야 劣等한 敎育을 施하야써 吾族으로 하야곰 永遠히 日本人의 被使役者를 成하게 하며 歷史를 改造하야 吾族의 神聖한 歷史的, 民族的 傳統과 威嚴을 破壞하고 凌侮하며 小數의 官吏를 除한 外에 政府의 諸機關과 交通, 通信, 兵備 諸機關에 全部 或은 大部分 日本人만 使用하야 吾族으로 하야곰 永遠히 國家生活의 智能과 經驗을 得할 機會를 不得케 하니 吾族은 決코 如此한 武斷專制 不正不平等한 政治下에서 生存과 發展을 享受키 不能한 지라. 그뿐더러 元來 人口過剩한 朝鮮에 無制限으로 移民을 奬勵하고 補助하야 土着한 吾族은 海外에 流離함을 不免하며 國家의 諸機關은 勿論이오 私設의 諸機關에까지 日本人을 使用하여 一邊 朝鮮人으로 職業을 失케 하며 一邊 朝鮮人의 富를 日本으로 流出케 하고 商工業에 日本人의게는 特殊한 便益을 與하야 朝鮮人으로 하야곰 産業的 發興의 機會를 失케 하도다. 如此히 何方面으로 觀하야도 吾族과 日本人과의 利害를 互相背馳하며 背馳하면 그 害를 受하는 者는 吾族이니 吾族은 生存의 權利를 爲하야 獨立을 主張하노라.<br><br>
				最後에 東洋平和의 見地로 보건대 그 威脅者이던 俄國은 이의 軍國主義的 野心을 抛棄하고 正義와 自由와 博愛를 基礎로 한 新國家를 建設하랴고 하는 中이며 中華民國도 亦然하며 兼하야 此次 國際聯盟이 實現되면 다시 軍國主義的 侵畧을 敢行할 强國이 無할 것이라. 그러할진대 韓國을 合倂한 最大理由가 이믜 消滅되얏을 뿐더러 從此로 朝鮮民族이 無數한 革命亂을 起한다 하면 日本의 合倂된 韓國은 反하야 東洋平和를 攪乱할 禍源이 될지라. 吾族은 正當한 方法으로 吾族의 自由를 追求할지나 萬一 此로써 成功치 못하면 吾族은 生存의 權利를 爲하야 온갓 自由行動을 取하야 最後의 一人까지 自由를 爲하는 熱血을 濺할지니 엇지 東洋平和의 禍源이 아니리오. 吾族은 一兵이 無호라. 吾族은 兵力으로써 日本을 抵抗할 實力이 無호라. 然하나 日本이 萬一 吾族의 正當한 要求에 不應할진대 吾族은 日本에 對하야 永遠의 血戰을 宣하리라.<br><br>
				吾族은 久遠히 高等한 文化를 有하얏고 半萬年間 國家生活의 經驗을 有한 者이라. 비록 多年專制政治의 害毒과 境遇의 不幸이 吾族의 今日을 致하얏다 하더라도 正義와 自由를 基礎로 한 民主主義의 上에 先進國의 範을 隨하야 新國家를 建設한 後에는 建國以來文化와 正義와 平和를 愛護하는 吾族은 반다시 世界의 平和와 人類의 文化에 貢獻함이 有할지라.<br><br>
				玆에 吾族은 日本이나 或은 世界各國이 吾族에게 民族自決의 機會를 與하기를 要求하며 萬一 不然하면 吾族은 生存을 爲하야 自由行動을 取하야써 吾族의 獨立을 期成하기를 宣言하노라.<br><br>
				&lt;決 議 文&gt;<br><br>
				一. 本團은 日韓合倂이 吾族의 自由意思에 出하지 아니하고 吾族의 生存과 發展을 威脅하고 또 東洋의 平和를 攪乱하는 原因이 된다는 理由로 獨立을 主張함.<br>
				二. 本團은 日本議會 及 政府에 朝鮮民族大會를 招集하야 該會의 決議로 吾族의 運命을 決할 機會를 集하기를 要求함.<br>
				三. 本團은 萬國講和會議에 民族自決主義를 吾族에게도 適用하게 하기를 請求함. 右目的을 達하기 爲하야 日本에 駐在한 各國大公使에게 本國의 主義를 各其 政府에 傳達하기를 依賴하고 同時에 委員 二人을 萬國講和會議에 派遣함. 右委員은 旣히 派遣한 吾族의 委員과 一致行動을 取함.<br>
				四. 前項의 要求가 失敗될 時는 吾族은 日本에 對하야 永遠의 血戰을 宣함. 此로써 生하는 慘禍는 吾族이 그 責에 任치 아니함.<br><br>
				朝鮮靑年獨立團<br><br>
				右 代表者 崔八鏞(최팔용), 李琮根(이종근), 金度演(김도연), 宋繼白(송계백), 李光洙(이광수), 崔謹愚(최근우), 金喆壽(김철수), 金尙德(김상덕), 白寬洙(백관수), 徐椿(서춘), 尹昌錫(윤창석)
			</p>
		</div>
		
		<div class="declaContents declaLang" id="declaJpn" style="display: none;">
			<p class="noHan jpnFont">
				<span>宣言書</span><br><br>
				全朝鮮青年独立団はわが二千万の朝鮮民族を代表し、正義と自由の勝利を得た世界万国の前にわが独立を期成せんことを宣言する。<br><br>
				四千三百年の長久の歴史を有するわが民族は、実に世界最古の文明民族の一つである。たとえ時には中国の正朔を奉じたことはあったとしても、これは朝鮮皇室と中国皇室との形式的な外交的関係に過ぎなかった。朝鮮は常にわが民族の朝鮮であり、かつて一度として統一国家であることが失われたり異民族の実質的支配を受けたりしたことはなかった。日本は、朝鮮が日本と唇歯の関係にあることを自覚していると言って、1895年日清戦争の結果、韓国の独立を率先して承認した。そしてイギリス、アメリカ、フランス、ドイツ、ロシアなどの諸国も、独立を承認しただけではなく、これを保全することを約束した。韓国はその恩義を感じ、諸般の改革と国力の充実を鋭意図ったのである。当時ロシアの勢力が南下し、東洋の平和と韓国の安寧を脅かすと、日本は韓国と攻守同盟を締結して日露戦争を始めたが、東洋の平和と韓国の独立保全が実にこの同盟の主旨であった。韓国は一層その好誼を感じ、陸海軍の作戦上の援助はできなかったものの、主権の威厳までを犠牲にし、可能なあらゆる義務をつくして、東洋平和と韓国独立の二大目的を追求したのであった。ついに戦争が終結し、当時のアメリカ大統領ルーズベルト氏の仲裁により日露間で講和会議が開かれると、日本は同盟国である韓国の参加を許さず、日露両国代表者間の任意によって日本の韓国に対する宗主権を議定した。日本は優越した兵力をもって、韓国の独立を保全するという旧約に違反し、暗弱であった当時の韓国皇帝とその政府を脅迫し欺いて、「国力が充実し独立が得られるときまで」という条件で韓国の外交権を奪い、これを日本の保護国とし、韓国が世界列国と直接交渉する道を断った。また「相当の時期まで」という条件で司法、警察権を奪い、さらには「徴兵令実施まで」という条件で軍隊を解散し、民間の武器を押収して、日本の軍隊と憲兵警察とを各地に配置した。甚だしくは、皇宮の警備までも日本の警察を用いるようになった。このようにして、ついに韓国を全く抵抗できない者にした後に、多少は明哲であると言われていた韓国皇帝を放逐して皇太子を擁立、日本の走狗によっていわゆる合併内閣を組織し、ついに秘密と武力のうちに合併条約を締結した。ここにわが民族は建国以来半万年にして、自らを指導し援助すると言った友好国の軍国的野心の犠牲となったのである。<br><br>
				実に日本の韓国に対する行為は、詐欺と暴力から出たものであり、実にこのような偉大な詐欺の成功は、世界興亡史上に特筆すべき人類の大恥辱であると言える。<br><br>
				保護条約を締結する際に、皇帝と、賊臣を除いた数人の大臣はあらゆる反抗の手段を尽くし、その発表後も全国民は素手で可能な限りの反抗を行った。司法、警察権が奪われ、軍隊が解散した時も同様であった。合併に際しては、手中に寸鉄の武器を持たなかったにもかかわらず、可能な限りの反抗運動を尽くしたが、精鋭な日本の武器により犠牲となった者は数知れない。以後10年間、独立を回復しようという運動で犠牲となった者は数十万に達し、惨酷な憲兵政治下において、手足と口舌の自由を奪われながらも、未だかつて独立運動は絶えることがなかった。このことから見ても、日韓合併は朝鮮民族の意思によるものではないことがわかるであろう。このように、わが民族は日本軍国主義の野心の詐欺と暴力のもとに、わが民族の意思に反する運命におかれた。それゆえ、正義によって世界を改造するこの時に、その匡正を世界に求めることは当然の権利であり、また世界改造の主人公であるアメリカとイギリスは、保護と合併を率先して承認したという理由によって、今こそ過去の旧悪を贖う義務があると言える。<br><br>
				また合併以来の日本の朝鮮統治政策を見ると、合併時の宣言に反して、わが民族の幸福と利益を無視し、征服者が被征服者に対する古代の非人道的な政策を応用して、わが民族に参政権、集会結社の自由、言論出版の自由を許さず、甚だしくは信教の自由、企業の自由に至るまでも少なからず拘束している。行政、司法、警察等の諸機関が朝鮮民族の人権を侵害し、公的にも私的にもわが民族と日本人との間に優劣の差別を設け、日本人に比べて劣等の教育を施し、わが民族を永遠に日本人の使役者にさせようとしている。歴史を書き改め、わが民族の神聖な歴史的、民族的伝統と威厳を破壊し、陵辱している。少数の官吏を除くほか、政府の諸機関と交通、通信、兵備などの諸機関の全部あるいは大部分に日本人のみを用い、わが民族には永遠に国家生活の智能と経験を得る機会を与えないようにしている。わが民族は、このような武断専制、不正不平等な政治のもとでは、決してその生存と発展を享受することができない。それだけではない。人口過剰の朝鮮に無制限の移民を奨励して補助を与え、土着のわが民族が海外に流離するのをやむなくさせた。国家の諸機関はもちろん、私設の諸機関にまで日本人を用い、一方で朝鮮人の職業を失わせ、また一方では朝鮮人の富を日本に流出させた。商工業においても日本人には特殊な便益を与え、朝鮮人には産業的発展の機会を失わせた。このように、いかなる方面においても、わが民族と日本人との間の利害は互いに相反し、相反すればその害を受けるのはわが民族である。故に、わが民族は生存の権利のために独立を主張する。<br><br>
				最後に東洋平和の見地から見ても、かつて脅威であったロシアはすでにその軍国主義的野心を放棄し、正義と自由と博愛を基礎とした新国家を建設しようとしており、中華民国もまた同様である。加えて、このたび国際連盟が実現すれば、再び軍国主義的侵略を敢行する強国は無くなるであろう。そうであれば、韓国を合併した最大の理由はすでに消滅している。そればかりでなく、もし朝鮮民族が無数の革命の乱を起こすとすれば、日本に合併された韓国はむしろ東洋平和を乱す禍根となるであろう。わが民族は正当な方法によってわが民族の自由を追求するが、もしこれが成功しなければ、わが民族は生存の権利のためにあらゆる自由な行動を取り、最後の一人に至るまで自由のために熱血をそそぐであろう。これがどうして東洋平和の禍根とならないであろうか。わが民族は一兵も持たない。わが民族は兵力で日本に抵抗する実力はない。しかし、もし日本がわが民族の正当な要求に応じなければ、わが民族は日本に対し永遠の血戦を宣言するであろう。<br><br>
				わが民族は高度の文化を持ってからすでに久しく、半万年の間、国家生活の経験を持つ者である。たとえ多年の専制政治の害毒と境遇の不幸がわが民族の今日を招いたのだとしても、正義と自由を基礎とした民主主義の上に、先進国の範に従って新国家を建設した後には、建国以来文化と正義と平和を愛護してきたわが民族は、必ずや世界の平和と人類の文化に対し貢献することであろう。<br><br>
				ここにわが民族は日本および世界各国が、わが民族に民族自決の機会を与えることを要求する。もし、そうならなければ、わが民族はその生存のために自由行動を取り、わが民族の独立を期成することを宣言する。<br><br>
				&lt;決議文&gt;<br><br>
				本団は、日韓合併がわが民族の自由意思によるものでなく、わが民族の生存と発展を脅かし、また東洋の平和を乱す原因となっているという理由により、独立を主張する。<br><br>
				本団は、日本の議会及び政府に対し、朝鮮民族大会を召集し、その会の決議によってわが民族の運命を決定する機会を与えることを要求する。<br><br>
				本団は、万国講和会議において、民族自決主義をわが民族にも適用させることを請求する。右の目的を達成するために、日本に駐在する各国大使公使に対し、本団の主義を各国政府に伝達することを要求し、同時に委員二名を万国講和会議に派遣する。右の委員は既に派遣したわが民族の委員と一致した行動を取る。<br><br>
				前項の要求が失敗したときには、わが民族は日本に対し永遠の血戦を宣言する。これによって生ずる惨禍については、わが民族はその責任を負わない。<br><br>
				１９１９年　２月　８日<br><br>
				朝鮮青年独立団<br><br>
				右代表者<br><br>
				崔八鏞　金度演　李光洙　金喆寿　白寛洙　尹昌錫　李琮根　宋継白　崔謹愚　金尚徳　徐 椿
			</p>
		</div>
		
		<div class="declaContents declaLang" id="declaChn" style="display: none;">
			<p class="noHan chnFont">
				<span>宣言书</span><br><br>
				全朝鲜青年独立团谨代表我二千万朝鲜民族，向已经取得正义和自由之胜利的世界万国发布宣言并以此期望达成我们民族之独立。<br><br>
				有着四千三百年的长久历史的我们民族是世界最古文明民族之一。<br><br>
				虽然有些时期接受中国为正统，但其不过是朝鲜皇室和中国皇室形式上的外交关系，朝鲜一直是我们民族的朝鲜，一次也没有丢失过统一国家，也没有受到异族的实质性支配。日本认识到朝鲜和日本间唇齿相依的关系，根据1895年甲午战争之结局，日本率先承认韩国独立，英美法德俄等诸国也承认韩国独立并约定要保全韩国。韩国感恩其仗义并图求进行诸多改革和充实国力的办法。<br><br>
				鉴于当时俄罗斯的势力正南下威胁东亚的和平和韩国的安宁，日本跟韩国缔结为攻守同盟并发起了是日俄战争，此同盟的旨意在于保全东亚的和平和韩国的独立，韩国感动于此意，虽然没能在陆海军的作战上提供援助，但是，即便失去自身主权的威严，也依然尽到了作为同盟的义务，由此追求东亚和平和韩国独立的两大目的。最终战争结束，在美国总统罗斯福的调停下，日俄之间展开了讲和会谈，本却不允许同盟国韩国参加，日俄两国代表任意议定了日本对韩国的宗主权，日本违反了借以优越的兵力来保全韩国独立的之前约定，威胁欺瞒懦弱的时任韩国皇帝和政府以‘至国力足以支撑独立国家为止’条件，夺取了韩国的外交权，之后，日本以保护国的名义切断韩国跟世界列强直接交涉通道，再以「相当长的时期为止」的条件来夺取了司法权·警察权，以「实施征兵令为止」的条件来解散军队，收缴民间的武器，在各地配置日本军队和宪兵，甚至皇宫警卫也是让日本警察负责，让韩国无力抵抗，驱逐明理的时任韩国皇帝，拥立皇太子组合日本走狗组织所谓‘合并内阁’秘密在武力威逼下签订合并条约，我们民族在建国五千年后，牺牲于宣称要指导和援助自己的友邦国之野心。<br><br>
				实际上日本对韩国的行为是出于欺诈和暴力，如此伟大的欺诈行为得以成功是世界兴亡史上值得一书的人类之大耻大辱。签订保护条约的时，除了皇帝和奸臣外，大臣们用尽各种反抗手段，在合并发表之后，全体国民亦以赤手空拳竭尽自己所能进行了反抗，司法权，警察权被夺和军队解散的时，亦是如此，在合并时候，手无寸铁的情况下实行了各种反抗运动，在日本精锐武器下牺牲的人不知其数，其后十年间为了恢复独立牺牲的人有数十万，即便在残酷的宪兵统治下手足和口舌被限制，独立运动从未停止过，从此也可以看得出日韩合并，并不是朝鲜民族的主观意愿。<br><br>
				我们民族在日本军国主义野心的欺诈暴力下遇到了有悖于自身意愿的命运，在以正义来改造世界的时下，理应有权向世界诉求匡正，况且，作为改造世界的先锋，美英两国，曾经率先承认了‘保护和合并’，有义务去洗刷自身过去长久的错误和耻辱。另外，合并以来日本对朝鲜统治政策，与其在合并时所宣称的相悖，无视我们民族的幸福和利益，是征服者对被征服者，应用古代非人道主义之政策，对我们民族不允许建立大小政权，集会结社的自由，言论出版的自由，甚至限制宗教和企业的自由，行政 司法 警察等诸机关侵犯朝鲜民族的人权，在公共利益上的设置我们民族和日本人之间有优劣差别，实施相对于日本人，让我们自感劣等的教育，让我族永远成为日本人的奴役，篡改历史，破坏和凌辱我们民族神圣的，历史上的，民族固有的传统和威严，除了少数官吏外，政府的诸机关和交通，通信，军备机关，全部或者大部分由日本人掌管，让我们民族永远得不到国家生活的智慧和经验的机会，我们民族无法在这种使用武力压迫控制国家，用不正当，不平等的方式统治的情况下得到生存和发展。不仅如此，原来人口众多的朝鲜，在无限制的奖励和补助移民的政策下，让世世代代生活在朝鲜的我们民族流浪海外，不仅是国家的全部机关，私设的机关也全部雇佣日本人，一边让朝鲜人失业，一边让朝鲜的财富流向日本，在工商业给日本人特殊的利益，让朝鲜人失去兴业的机会。任何方面来看，我们民族和日本人的利害关系都是相互违背，而这种违背的受害者却是我们民族，因此为了生存利益，我们主张独立。<br><br>
				最后从东亚和平的角度来看，曾经的威胁者俄罗斯，正在放弃军国主义野心，要建设正义和自由，博爱为基础的新国家，中华民国亦是如此，如果此次国际联盟能够建立起来，再也不会有发动军国主义侵略的强国。这样一来合并韩国的最大理由就会消失，而且如果朝鲜民族发动无数的革命战争，被日本合并的韩国反而会成为搅乱东亚和平之祸根。我们民族希望以正当的方法来追求民族的自由，如果无法取得成功，我们会为自己生存权采取各种自由行动，抛头颅洒热血 战至最后一人，岂不是东亚和平之祸根。我族无一兵一卒。无力与日本人相抗争。但是如果日本对我们民族的正当要求不予接受，我们只能宣誓血战到底。<br><br>
				我们民族有着久远而优良的文化，有着五千年国家生活之运营经验。虽历经长久的专制统治之毒害和国运的不幸直至今日的结局，但是，我们民族将会以正义和自由为基础的民主主义先进国家为榜样建设新国家，向来热爱文化，正义和和平的我们民族必将为世界的和平和人类的文化贡献自己的力量。<br><br>
				我们发布宣言，希望日本或者世界各国给予我们民族自裁的机会，如果不成，我们将为生存采取自由行动以求我们民族之独立。<br><br>
				&lt;决议文&gt;<br><br>
				本团认为韩日合并并不是我们民族的自由意思，且威胁我们民族的生存和发展， 扰乱东亚和平，特此主张独立。<br>
				本团向日本议会和政府要求，有机会召集朝鲜民族大会，通过该会的决议决定我族命运。<br>
				本团要求在万国和会之有关民族自行决议的主张同样适用于我族。为此，本团希望各国驻日公使能够向本国传达本团之主张，并派遣二位本团委员至万国和会。以上委员将与之前派遣之我方委员保持一致行动。<br>
				如若前项的要求失败，我们将会宣布对日本进行永久的血战。因此而造成的惨祸，其责任不在于我族。<br><br>
				1919年 2月 8日<br><br>
				朝鲜青年独立团 在日本东京朝鲜青年独立团 代表<br><br>
				代表人 ：崔八镛，李琮根，金度演，宋继白，李光洙<br><br>
				崔谨愚，金喆寿，金尚德，白宽洙，徐椿，尹昌锡
			</p>
		</div>
		
		<div class="declaContents declaLang" id="declaEng" style="display: none;">
			<p>
				<span>Declaration</span><br><br>
				The Korean Young People’s Independence Organization declares, on behalf of the 20 million Korean people, the independence of the Korean nation, doing so in front of all the countries in the world, which have already secured the triumphs of justice and freedom.<br><br>
				With its 4,300-year history, the Korean nation is one of the oldest in the world. Although Korea once served China, theirs was a formal diplomatic relationship between two royal families. Thus, Korea had always existed as an independent nation, never losing its status as a unified country, and never being ruled by another nation. Indeed, describing Japan’s relationship with Korea as like that of teeth and gums, Japan took the lead in recognizing Korea’s sovereignty at the end of the 1895 Sino-Japanese War. At that same time, many other countries, including England, the United States, France, Germany, and Russia, not only recognized but also promised to preserve Korea’s independence. Grateful for their pledges, Korea pursued reforms in all areas of its society and the development of national power with a firm resolution.<br><br>
				Subsequently, when Russian forces moved southward and threatened the peace in East Asia and stability in Korea, Japan entered into the Russo-Japanese War, after forming an alliance with Korea. Since the goals of this alliance were peace in East Asia and the preservation of Korean independence, Korea was thankful to Japan and pursued these two goals by fulfilling various obligations, although it could not aid Japan with its own army and navy, while at the same time sacrificing the dignity of its sovereignty. At last, the war concluded and meetings were held between Japan and Russia (the Treaty of Portsmouth), conducted through the mediation of U.S. President Theodore Roosevelt. But Japan barred the participation of Korea, its ally, at these meetings, and the delegates from Russia and Japan arbitrarily discussed Japanese suzerainty over Korea. As a result, violating its prior promise to use its superior military power in order to help Korea preserve its independence, Japan threatened and deceived an ill-advised and thoughtless Korean emperor and government and turned the country into a Japanese protectorate, depriving Korea of its diplomatic sovereignty, with the pretext of doing so “until the time when Korea will achieve the full capability to gain independence. After blocking Korea from negotiating directly with various countries in the world, Japan first robbed Korea of its judicial power and police authority, under the pretext of doing so “until an appropriate time,” and then disbanded the Korean military, confiscated civilian weapons, and dispatched the Japanese military and military police to all regions of Korea. After deploying Japanese police even for security at the Korean imperial palace, and making it impossible for Korea to resist, Japan forced the relatively bright Korean emperor to abdicate in order to enthrone the young crown prince, organized a so-called annexation cabinet with Korean collaborators, and had them enter into an annexation treaty with Japan through secrecy and force. Thus, the 5,000-year-old Korean nation became sacrificed to the militaristic ambitions of a duplicitously friendly nation that had offered to guide and assist it.<br><br>
				In fact, since Japan’s actions in Korea were based on fraud and violence, the success of this enormous deception would become an incident of enormous and particular disgrace in the history of humanity. When the protectorate treaty was forced on Korea, our emperor and some Korean ministers who were not collaborators tried all manner of resistance. Even after the treaty was officially declared, the Korean people attempted various means of resistance and mobilization without any military weapons. Also, during the time when the Korean judicial power and police authority were taken away and the Korean military was disbanded, the lives of many Koreans were sacrificed because of advanced Japanese weaponry, while they were resisting in any way possible, without possessing a single piece of metal. For 15 years after the enactment of the protectorate treaty, hundreds of thousands of Koreans have been victimized while struggling to regain their independence. But even while Koreans were oppressed, deprived of the freedom of expression, and with their hands and feet bound by this horrendous military-police politics, they have never given up on their independence movement—a fact that in and of itself counters the lie that the Japanese annexation of Korea occurred in accord with the Korean people’s will.<br><br>
				Since the Korean people are now subject to this fate against our will because of the fraud and violence committed by Japanese militaristic ambitions, we have a right to demand that this wrong be corrected in the present world, where humanity is trying to build a more just society. Also, as the U.S. and England are to blame for taking the initiative in recognizing the Japanese annexation of Korea, we assert that they have a special duty to atone for their past wrongdoing. In addition, when we consider the current situation in Korea, Japan has continued to ignore the happiness and welfare of the Korean people, in violation of their own stated purpose, made at the time of annexation, and have instead adopted an ancient conqueror’s inhumane policies against a conquered people. They have not only prohibited political rights, freedom of assembly and association, and freedom of the press and publication, but also limited freedom of religion and freedom of enterprise, to a great extent, while all the administrative, judicial, and police institutions under their rule have been violating the human rights of Koreans.<br><br>
				Claiming that Koreans are fundamentally inferior to the Japanese, Japan offers us inferior education in order to maintain the country as a subservient population. Also, by altering our national history, Japan ignores or destroys the Korean people’s sacred historical traditions and its dignity. Further, by employing Japanese, except for a few Koreans, in all higher positions, including governmental offices, offices of transportation and communication, and military facilities, Japan attempts to forever bar Koreans from obtaining the opportunity to acquire knowledge and experience in governance. It is impossible for Koreans to survive and develop themselves under this wrongful and unequal system, where power is maintained by brute and arbitrary force and oppression. Furthermore, by encouraging and assisting unlimited Japanese immigration into Korea, whose population is already been overflowing, Koreans who have lived on their land for generations are driven away and end up wandering in foreign countries. And by employing Japanese people not only in governmental offices but also private institutions, Koreans are deprived of their jobs, while Korean wealth flows into Japan. Also, by offering preferential treatment to the Japanese in commerce and industry, Japan deprives Koreans of opportunities for industrial development and revival. In short, no matter where one looks at the current situation, the interests of the Korean people and Japan contradict each other—and only the Korean people are harmed by it. Therefore, we argue for the independence of Korea for the sake of our people’s right of survival.<br><br>
				Lastly, from the perspective of peace in East Asia, the powerful nation Russia has already relinquished its militaristic ambitions and is in the midst of establishing a new country based on justice and equality. The same is true in China. In addition, since the League of Nations has been formed, more-powerful countries will not dare to attempt militaristic aggression against other countries. Thus, not only has the greatest excuse for the annexation of Korea now disappeared, but Korea, annexed to Japan, could become a cause of much upheaval and destroy peace in East Asia—if Korean people end up carrying out numerous rebellions or revolutions. Although we would like to pursue our freedom through legitimate means, if we have to, we will resort to actions in order to establish our right to survival. We will shed blood for freedom, until the last fighter, if we cannot succeed through legitimate means. If this happens, would it not be a miserable outcome and the cause of great misery in East Asia? The Korean people do not possess a single soldier. We do not have the military power to resist Japan. Yet, if Japan does not respond to the Korean people’s just demands, we will have to declare an everlasting and bloody war against Japan.<br><br>
				The Korean people have maintained a sophisticated culture and the experience of a national life for almost 5,000 years. At the same time, the harms and unhappiness resulting from many years of autocracy have led Korean people to today’s reality. Yet we trust that the Korean people, who have loved and favored justice and peace since its establishment, will be able to contribute to peace in the world and its culture of humanity, once we can found a new country, modelled after advanced nations and on the foundation of democracy based on justice and freedom.<br><br>
				Thus, the Korean people demand that Japan and the other countries of the world give us an opportunity for self-determination. If not, we declare that we will achieve independence through free actions for the survival of our nation.<br><br>
				1. We argue for Korean independence because the Japanese annexation of Korea did not originate from the Korean people’s free will and because it threatens their survival and development and disturbs the peace in East Asia.<br>
				2. We demand that Japanese parliament and government convene a Korean people’s assembly and give it an opportunity to determine the country’s destiny through its resolutions.<br>
				3. We demand that the International Peace Conference apply the principle of national self-determination to Korea. In order to convey this demand, we will deliver our message to ambassadors from various countries in Japan and demand that they deliver it to their governments, while at the same time we dispatch two of our own delegates to the International Peace Conference. Our delegates will work in unison with the Korean delegates dispatched before.<br>
				4. If all the above demands fail, we declare an everlasting war against Japan. Furthermore, the Korean people will not be responsible for any ensuing hardships or disasters.<br><br>
				Representatives of the Korean Young People’s Independence Organization in Japan
			</p>
		</div>
		
		<div id="declaSource">
			<h1>출처</h1>
			<p>
				독립기념관<br>
				한국민족문화대백과사전<br>
				사이버외교사절단 반크
			</p>
		</div>
	</main>
	
	<!-- footer -->
	<%@ include file="../footer.jsp" %>
</body>
</html>