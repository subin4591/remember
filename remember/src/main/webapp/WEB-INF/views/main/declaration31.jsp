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
	        		<div class="swiper-slide">
	        			<div class="bannerBack back31">
	        				<img src="https://search.i815.or.kr/data2/contents_image/favor/2_8.jpg">
	        			</div>
	        		</div>
	        		<div class="swiper-slide">
	        			<div class="bannerBack back31">
	        				<img src="https://search.i815.or.kr/data2/contents_image/favor/2_9.jpg">
	        			</div>
	        		</div>
	        		<div class="swiper-slide">
	        			<div class="bannerBack back31">
	        				<img src="https://search.i815.or.kr/data2/contents_image/favor/2_11.jpg">
	        			</div>
	        		</div>
		        </div>
		        <div class="swiper-prev"><img src="/image/main/prev.png"></div>
		        <div class="swiper-next"><img src="/image/main/next.png"></div>
		        <div class="swiper-pagination"></div>
		    </div>
		    
		    <div id="declaTopInfoRight">
		    	<p id="declaName">3.1 독립선언서 <span class="hanja">(三一獨立宣言書)</span></p>
		    	<div id="declaDefinition">
		    		<p>정의</p>
		    		<p>1919년 3월 1일 독립만세운동 때 민족대표 33인이 한국의 독립을 선포한 선언서.</p>
		    	</div>
		    	<div id="declaExplanation">
		    		<p>설명</p>
		    		<p>1919년 3월 1일 서울 태화관에서 민족대표 33인의 이름으로, 우리 민족이 일제의 식민지배로부터 벗어나 독립국과 자주민임을 선포하고, 동양의 평화와 인류의 공영을 위해 반드시 독립이 되어야만 한다는 당위성을 밝힌 선언서이다. 이 선언서는 만세시위 발발 전에 전국에 배포되어 독립선언의 정신과 행동지침을 대내외에 천명하고 독립운동의 대중화에 기여하였다.</p>
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
				1918년말부터 독립운동의 3대 원칙인 대중화·일원화·비폭력 등을 주장해 온, 손병희(孫秉熙)·권동진(權東鎭)·오세창(吳世昌)·최린(崔麟) 등의 천도교 측 중진들은 독립운동의 실천 방법으로 독립선언서와 독립청원서·국권반환 요구서 등을 작성하기로 하였다. 그리고 거족적인 운동으로 확대하기 위해 기독교·불교 등 각 종교 단체 및 유림(儒林)을 망라하는 동시에 저명 인사들을 민족 대표로 내세우기로 합의하였다.<br><br>
				그래서 1919년 2월 상순, 대한제국의 고관을 지낸 김윤식(金允植)에게 독립선언서의 서명자가 되어 줄 것을 권유하였으나, 그는 독립청원서를 내는 것은 찬성하지만, 선언서 발표에는 찬성하지 않는다고 거부 입장을 분명히 하였다. 그 밖에 박영효(朴泳孝)을 비롯한 저명한 인사들의 완강한 거부에, 한때 운동을 포기할 위기에 처하기도 하였다.<br><br>
				그러나 고종이 승하하였다는 소식이 전해지자, 배일 감정이 절정에 다다르게 되면서 다시금 활기를 띠게 되었다. 이들은 다시 종교 단체와 교섭을 벌였는데, 먼저 기독교 측의 이승훈(李昇薰)을 만나 천도교와 함께 독립운동에 합류할 것이라는 승낙을 얻어내는데 성공하였다.<br><br>
				한편, 불교 측과의 교섭은 최린이 담당하여 한용운(韓龍雲)에게 승낙을 얻어냄으로써 불교 측과의 제휴도 이루어졌다. 한용운은 또 유림측의 참가를 교섭했으나 실패하여 유림측의 합류는 이루어지지 않았다.<br><br>
				이때 독립운동의 실천 방법을 두고 논란이 일어났다. 천도교 측이 내세웠던 청원서와 선언서를 동시에 발표하자는 의견에 대해 일부에서는 청원서만을 내고 선언서는 발표하지 말자는 의견 대립이 발생한 것이다.<br><br>
				그러나 최린은 “청원서나 건의서를 내는 것은 일본 정부에게 독립을 시켜달라고 청원한다든지 건의해보는 것이므로 민족 자결의 의미가 없다. 그러므로 국내적으로 전민족을 분기시키고, 국외적으로 전세계에 향하여 독립해야 하는 이유와 독립을 위하여 싸우겠다는 결의를 표명하는 중대한 선언이 되어야 한다.”고 강력히 주장하여, 결국 독립선언서를 발표하기로 결정되었다.<br><br>
				독립선언서의 작성자로 최린은 최남선(崔南善)을 추천하였다. 최남선은 독립운동가로서 전국에 이미 알려졌고, 서구적 교양과 재래의 학문을 모두 갖추고 있을 뿐만 아니라 문장력도 뛰어난 사람이므로, 최린은 “전민족의 의사를 표시할 독립선언서와 같은 중대한 글을 지을 사람은 그 밖에 없다”고 하였다.<br><br>
				또한 최남선 스스로 “일생을 학자로 마칠 생각이라 독립운동의 표면에 나서지는 못하지만, 선언서는 작성하겠다.”고 함으로써 선언서의 작성 문제는 일단 그에게로 낙착되었다.<br><br>
				뒷날 한용운이 독립운동에 책임질 수 없는 사람이 선언서를 짓는 것은 옳지 않다고 주장하고 자신이 맡겠다고 나섰으나, 이미 선언서의 초고가 완성되어 손질이 끝난 뒤였다. 지금 전하는 독립선언서 끝에 있는 공약 3장(公約三章)은 후에 한용운이 추가한 것이라고도 한다.<br><br>
				이렇게 하여 작성된 독립선언서는 천도교측 15인, 기독교측 16인, 불교측 2인 등 33인이 민족 대표로 서명하였다. 독립선언서의 원고는 오세창(吳世昌)을 통해 천도교에서 경영하는 보성사(普成社) 인쇄소 사장 이종일(李鍾一)에게 전달되었다. 이종일은 공장 감독 김홍규(金弘奎)와 함께 2만 1,000매를 인쇄하여 경운동(慶雲洞) 자기 집으로 운반하였다.<br><br>
				선언서는 28일부터 전국 각지로 전달·배포되면서 거족적인 3·1운동의 전개에 있어 결정적인 구실을 담당하게 되었다.
			</p>
		</div>
		
		<div class="declaContents declaLang" id="declaKor" style="display: none;">
			<p>
				<span>3·1 독립선언서</span><br><br>
				1<br>
				이제 우리는 우리 조선이 독립국임과 조선인이 자주민임을 선언한다. 이를 세계만방에 알려 인류가 평등하다는 큰 뜻을 분명히 하고, 자손만대에 알려 민족자존의 올바른 권리를 영원히 누리도록 한다.<br><br>
				2<br>
				(우리는) 반만년 역사의 권위에 의지하여 독립을 선언하는 것이며, 이천만 민중의 충성스러운 마음을 모아 우리의 독립을 널리 퍼뜨려 알리는 것이고, 겨레의 한결같은 자유 발전을 위하여 독립을 주장하는 것이며, 전 인류가 순수한 마음으로 바라는 세계 개조의 큰 뜻을 따르고 함께 나아가기 위하여 독립을 주창하는 것이니, 이것은 하늘의 뜻이며 시대의 큰 흐름이며 전 인류가 더불어 함께 살아가는 권리를 얻기 위한 정당한 주장이자 활동이므로, 세상 그 무엇도 우리의 독립을 막지 못할 것이다.<br><br>
				3<br>
				구시대의 유물인 침략주의와 강권주의에 나라를 빼앗겨 오천년 역사 이래 처음으로 다른 민족에게 자유를 억압당하는 고통을 겪은 지 오늘로써 십 년을 넘어섰다. 우리의 생존권을 빼앗긴 지 몇 년이며, 정신 발전의 장애를 입은 것이 얼마나 크며, 민족적 권위와 명예가 훼손당한 것은 또 얼마나 막심하며, 우리의 지식과 재능, 독창적인 발상으로 인류 문화의 큰 발전에 이바지하고 도울 기회를 얼마나 많이 놓쳤는가.<br><br>
				4<br>
				오호라, 예로부터 쌓인 억울함을 호소하려면, 지금의 고통으로부터 벗어나려면, 다가올 미래에 대한 두려움을 없애려면, 민족의 양심과 국가의 위신과 도의가 눌리어 쪼그라들고 힘없이 사그라진 것을 다시 살리고 키우려면, 저마다 자신의 인격을 올바르게 발달시키려면, 불쌍한 아들딸들에게 부끄러운 유산을 물려주지 않으려면, 우리의 후손들이 길이 완전한 행복을 누리게 하려면, 가장 긴급한 임무가 민족의 독립을 이루는 것이다. 이천만이 모두 마음속에 날카로운 칼을 품고, 인류 공통의 가치와 시대의 양심이 정의의 군대가 되고, 인륜과 도덕이 무기가 되어 우리를 지켜주는 오늘, 우리가 나아가 얻고자 하면 어떤 강적인들 물리치지 못할 것이며, 물러서서 계획을 세우면 어떤 뜻인들 펴지 못하겠는가!<br><br>
				5<br>
				조일수호조규(강화도조약) 이래 수시로 양국 간의 굳은 약속을 저버렸다고 해서 일본의 신의 없음을 비난하지는 않겠다. (일본의) 학자는 강단에서, 정치가는 실생활에서 우리가 선조로부터 물려받은 터전을 식민지로 삼고, 우리 문화민족을 마치 미개한 사람들처럼 취급하여, 단지 정복자의 즐거움을 누릴 뿐이다. (그러나) 우리의 오래고 영원한 사회 기틀과 뛰어난 민족의 마음가짐을 무시한다고 해서 일본의 옳지 못함을 책망하지 않겠다. 자신을 탓하고 격려하기에 다급한 우리는 남을 원망할 수 없다. 현재를 돌보기에 바쁜 우리는 예로부터의 잘못을 따질 겨를도 없다. 오늘 우리가 할일은 오로지 우리 자신을 다시 세우는 것이지 결코 남을 헐뜯는 것이 아니다. 엄숙한 양심의 명령으로써 우리 민족의 새로운 운명을 개척하는 것이지 절대로 해묵은 원한과 일시적인 감정으로 남을 시기하고 배척하는 것이 아니다. 낡은 사상과 낡은 세력에 얽매여 공명을 세우고자 했던 일본인 위정자들에 의해 만들어진 부자연스럽고 불합리한 지금의 그릇된 현실을 고치고 바로잡아 강자가 약자를 힘으로 지배하지 않는 자연스럽고 합리적인 올바른 세상으로 되돌아가는 것이다.<br><br>
				처음부터 우리 겨레가 원해서 된 일이 아닌 양국 병합의 결과가, 근본적인 대책 없는 억압과 차별에서 오는 불평등과 (사회 발전에 대한) 거짓된 통계숫자 때문에 이해가 엇갈린 두 민족 사이에 화합할 수 없는 원한의 도랑이 날이 갈수록 깊어지는 지금까지의 사정을 한번 살펴보라. 용감하고 과감하게 예전의 잘못을 바로잡고, 참된 이해와 인도주의를 바탕으로 친하게 지내는 새 시대를 여는 것이 서로 화를 멀리하고 행복을 불러들이는 지름길이라는 것을 똑똑히 알아야 할 것이다.<br><br>
				또한 울분과 원한이 겹겹이 쌓인 이천만 조선인을 힘으로 억누르는 것은 결코 동양의 영원한 평화를 보장하는 방법이 아닐 뿐만 아니라, 동양의 안전과 위기를 좌우하는 사억 중국인들의 일본에 대한 두려움과 시기를 갈수록 깊게 하여, 동양 전체가 함께 쓰러져 망하는 비극을 초래할 것이 분명하다. 오늘 우리가 조선 독립을 선포하는 까닭은 조선 사람으로 하여금 정당한 번영을 이루게 하는 동시에, 일본으로 하여금 잘못된 길에서 벗어나 동양의 안전을 지켜나갈 무거운 책임을 통감케 하는 것이며, 중국으로 하여금 꿈속에서도 벗어나지 못하는 불안과 공포로부터 해방되게 하는 것이며, 세계 평화의 중요한 요소로서 동양 평화를 실현하여 전 인류의 복지에 반드시 있어야 할 단계를 만드는 것이다. 이것이 어찌 졸렬한 감정상의 문제이겠느냐.<br><br>
				6<br>
				아아, 새 하늘과 새 땅이 눈앞에 펼쳐지는구나. 힘의 시대는 가고 도덕의 시대가 온다. 지나간 세기를 통하여 깎고 다듬어 온 인도적 정신이 바야흐로 새로운 문명의 찬란한 빛을 인류 역사에 던지기 시작한다. 새봄이 온 누리에 찾아들어 만물의 소생을 재촉한다. 찬바람과 꽁꽁 언 얼음 때문에 숨도 제대로 쉬지 못한 것이 지난 시대의 불길한 기운이었다면, 온화한 바람과 따뜻한 햇볕으로 서로 통하는 것이 다가올 시대의 상서로운 기운이니, 하늘과 땅에 새 생명이 되살아나는 이때에 세계 변화의 도도한 물결에 올라 탄 우리에게는 주저하거나 거리낄 그 어떤 것도 없다. 우리는 우리가 본디 타고난 자유권을 지켜 풍성한 삶의 즐거움을 마음껏 누릴 것이며, 우리가 넉넉히 지닌 독창적 능력을 발휘하여 봄기운이 가득한 온 누리에 조선 민족의 우수함을 꽃피우리라.<br><br>
				7<br>
				그래서 우리는 분연히 일어나는 것이다. 양심이 우리와 함께 있고, 진리가 우리와 더불어 전진하니, 남녀노소 구별 없이 음침한 옛집에서 뛰쳐나와 세상에 존재하는 모든 것들과 더불어 즐거운 부활을 이룩할 것이다. 천만년을 이어오는 조상들의 넋이 우리를 안으로 지키고, 전 세계의 움직임이 우리를 밖에서 보호하니, 일을 시작하기만 하면 곧 성공을 이룰 것이다. 오로지 저 앞의 빛을 따라 힘차게 전진할 따름이다.<br><br>
				공약삼장<br><br>
				하나, 오늘 우리들의 거사는 정의·인도·생존·번영을 찾는 겨레의 요구이니, 오직 자유정신을 발휘할 것이고, 결코 배타적 감정으로 치닫지 말라.<br><br>
				하나, 최후의 일인까지, 최후의 일각까지 민족의 올바른 의사를 당당하게 발표하라.<br><br>
				하나, 모든 행동은 먼저 질서를 존중하여 우리들의 주장과 태도를 어디까지나 공명정대하게 하라.<br><br>
				조선 나라를 세운 지 사천이백오십이 년 되는 해 삼월 초하루
			</p>
		</div>
		
		<div class="declaContents declaLang" id="declaHan" style="display: none;">
			<p>
				<span>宣言書</span><br><br>
				1<br>
				吾等은玆에我朝鮮의獨立國임과朝鮮人의自主民임을宣言하노라此로써世界萬邦에告하야人類平等의大義를克明하며此로써子孫萬代에誥하야民族自存의正權을永有케하노라<br><br>
				2<br>
				半萬年歷史의權威를仗하야此를宣言함이며二千萬民衆의誠忠을合하야此를佈明함이며民族의恒久如一한自由發展을爲하야此를主張함이며人類的良心의發露에基因한世界改造의大機運에順應幷進하기爲하야此를提起함이니是ㅣ天의明命이며時代의大勢ㅣ며全人類共存同生權의正當한發動이라天下何物이던지此를沮止抑制치못할지니라<br><br>
				3<br>
				舊時代의遺物인侵略主義强權主義의犧牲을作하야有史以來累千年에처음으로異民族箝制의痛苦를嘗한지今에十年을過한지라我生存權의剝喪됨이무릇幾何ㅣ며心靈上發展의障礙됨이무릇幾何ㅣ며民族的尊榮의毁損됨이무릇幾何ㅣ며新銳와獨創으로써世界文化의大潮流에寄與補裨할奇緣을遺失함이무릇幾何ㅣ뇨<br><br>
				4<br>
				噫라舊來의抑鬱을宣暢하려하면時下의苦痛을擺脫하려하면將來의脅威를芟除하려하면民族的良心과國家的廉義의壓縮銷殘을興奮伸張하려하면各個人格의正當한發達을遂하려하면可憐한子弟에게苦恥的財產을遺與치안이하려하면子子孫孫의永久完全한慶福을導迎하려하면最大急務가民族的獨立을確實케함이니二千萬各個가人마다方寸의刃을懷하고人類通性과時代良心이正義의軍과人道의干戈로써護援하는今日吾人은進하야取하매何强을挫치못하랴退하야作하매何志를展치못하랴<br><br>
				5<br>
				丙子修好條規以來時時種種의金石盟約을食하얏다하야日本의無信을罪하려안이하노라學者는講壇에서政治家는實際에서我祖宗世業을植民地視하고我文化民族을土昧人遇하야한갓征服者의快를貪할ᄲᅮᆫ이오我의久遠한社會基礎와卓犖한民族心理를無視한다하야日本의少義함을責하려안이하노라自己를策勵하기에急한吾人은他의怨尤를暇치못하노라現在를綢繆하기에急한吾人은宿昔의懲辯을暇치못하노라今日吾人의所任은다만自己의建設이有할ᄲᅮᆫ이오決코他의破壞에在치안이하도다嚴肅한良心의命令으로써自家의新運命을開拓함이오決코舊怨과一時的感情으로써他를嫉逐排斥함이안이로다舊思想舊勢力에覉縻된日本爲政家의功名的犧牲이된不自然又不合理한錯誤狀態를改善匡正하야自然又合理한政經大原으로歸還케함이로다當初에民族的要求로서出치안이한兩國倂合의結果가畢竟姑息的威壓과差別的不平과統計數字上虛飾의下에서利害相反한兩民族間에永遠히和同할수업는怨溝를去益深造하는今來實積을觀하라勇明果敢으로써舊誤를廓正하고眞正한理解와同情에基本한友好的新局面을打開함이彼此間遠禍召福하는捷徑임을明知할것안인가ᄯᅩ二千萬含憤蓄怨의民을威力으로써拘束함은다만東洋의永久한平和를保障하는所以가안일ᄲᅮᆫ안이라此로因하야東洋安危의主軸인四億萬支那人의日本에對한危懼와猜疑를갈스록濃厚케하야그結果로東洋全局이共倒同亡의悲運을招致할것이明하니今日吾人의朝鮮獨立은朝鮮人으로하야금正當한生榮을遂케하는同時에日本으로하야금邪路로서出하야東洋支持者인重責을全케하는것이며支那로하야금夢寐에도免하지못하는不安恐怖로서脫出케하는것이며ᄯᅩ東洋平和로重要한一部를삼는世界平和人類幸福에必要한階段이되게하는것이라이엇지區區한感情上問題ㅣ리오<br><br>
				6<br>
				아아新天地가眼前에展開되도다威力의時代가去하고道義의時代가來하도다過去全世紀에鍊磨長養된人道的精神이바야흐로新文明의曙光을人類의歷史에投射하기始하도다新春이世界에來하야萬物의回蘇를催促하는도다凍氷寒雪에呼吸을閉蟄한것이彼一時의勢ㅣ라하면和風暖陽에氣脈을振舒함은此一時의勢ㅣ니天地의復運에際하고世界의變潮를乘한吾人은아모躕躇할것업스며아모忌憚할것업도다我의固有한自由權을護全하야生旺의樂을飽享할것이며我의自足한獨創力을發揮하야春滿한大界에民族的精華를結紐할지로다<br><br>
				7<br>
				吾等이玆에奮起하도다良心이我와同存하며眞理가我와幷進하는도다男女老少업시陰鬱한古巢로서活潑히起來하야萬彙羣象으로더부러欣快한復活을成遂하게되도다千百世祖靈이吾等을陰佑하며全世界氣運이吾等을外護하나니着手가곳成功이라다만前頭의光明으로驀進할ᄯᅡ름인뎌<br><br>
				公約三章<br><br>
				一、今日吾人의此擧는正義、人道、生存、尊榮을爲하는民族的要求ㅣ니오즉自由的精神을發揮할것이오決코排他的感情으로逸走하지말라<br><br>
				一、最後의一人ᄭᅡ지最後의一刻ᄭᅡ지民族의正當한意思를快히發表하라<br><br>
				一、一切의行動은가장秩序를尊重하야吾人의主張과態度로하야금어대ᄭᅡ지던지光明正大하게하라<br><br>
				朝鮮建國四千二百五十二年三月 一 日	
			</p>
		</div>
		
		<div class="declaContents declaLang" id="declaJpn" style="display: none;">
			<p class="noHan jpnFont">
				<span>己未独立宣言書（日訳）</span><br><br>
				われわれは、ここにわが朝鮮が独立国であり、朝鮮人が自主的民族であることを宣言する。これをもって世界万国に知らせ、人類平等の大儀を明らかにし、これをもって子孫万代に教え伝えて、民族自存の正当な権利を永久に享有させんとするのである。<br><br>
				五千年歴史の権威によってこれを宣言するのであり、二千万民衆の誠忠を結集してこれをあまねく明らかにするのであり、民族の永久不変な自由発展の為にこれを主張するのであり、人類的良心の発露に基づく世界改造の大きな機会と時運に順応してともに進む為にこれを提起するのであって、これは天の命令であり、時代の大勢であり、全人類の共同生存権の正当な発動である。天下の何物もこれを阻止抑制することは出来ない。旧時代の遺物である侵略主義・強権主義の犠牲となって、有史以来、数千年間に初めて異民族の圧制に痛苦をなめ、今、十年が経過したのである。その間、わが民族の生存権が剥ぎ取られなくしたものはどれほどであり、新鋭な独創力をもって世界文化の大潮流に寄与・補益すべき機縁を失った損失はどれほどであろうか。<br><br>
				悲しいかな！久しい以前からの悔しさと憤怒をはらし、述べようとすれば、時下の苦痛から逃れようとすれば、将来の脅威を除こうとすれば、民族的良心と国家的道義が抑圧され、萎縮したのを奮い起こし、立たせようとすれば、各個人格の正当な発展を遂げようとすれば、可愛い子弟に恥辱的財産を残してやりたくなければ、子々孫々の永久・完全な慶びと幸福への道を開いてやろうとすれば、最大の急務が民族の独立を確実にかち取ることである。二千万各個人がすべて心の刃を抱き、人類共通の正義感と時代の良心が正義の軍と人道の武器を持って援護してくれる今日、我々が進んで戦えば、どんな強敵でも粉砕できないことがあろうか。退いて何かをしても、どんなことができるであろうか。<br><br>
				一八七六年の韓日修好条約以来、時々に結んだ各種の約束を違えたからといって、日本の不信を責めようとはしない。学者は講壇で、政治家は実際で、わが祖先たちの遺産を植民地視し、わが文化民族を野蛮人のように待遇して、ただ征服者の快感のみをむさぼらんとするのみで、われわれの久遠な社会基礎と卓越せる民族心理を無視したといって、日本の不義不信を責めようとするのでもない。自分自身を鞭打ち励ますのに忙しいわれわれは、他人を恨む暇はない。過ぎた昔のことを責め、善悪を分けて論議する暇もない。今日、われわれに与えられた任務は自己の建設のみであり、決して他の破壊にあるのではない。厳粛な良心の命令でもあって、自家の新運命を開拓するのみであり、決して旧怨と一時的感情でもって、他を排撃排斥しようとするのでもない。旧思想・旧勢力にとらわれた日本偽政者の功名心の犠牲となった、不自然かつ不合理な錯誤状態を改善・矯正して、自然かつ合理的な正道の根源に帰依らんとするだけである。当初、民族的欲求から出ていない両国併合の結果が、結局、姑息的威圧と差別的不平等と統計数字の虚飾の下で利害の相反する両民族間に、永遠に和同することのできない恨みの溝をますます深めた今までの実績を見よ！勇躍果敢な精神で旧誤を正し、真正な理解と同情に<br><br>
				基づく友好的新局面を打開することが、双方間の禍を遠ざけ、福を呼ぶ近道であることをはっきりと知るべきではないか。また、憤りを抱き恨みを持つ二千万の民を威力でもって拘束するのは、ただに東洋の永久平和を保障するゆえんでないのみならず、これによって東洋安危の主軸である四億中国人の日本に対する危惧と懸念をますます濃厚にさせ、その結果として東洋全局の共倒れの悲運を招致することの明らかな今日、われわれの朝鮮独立はわれわれをして正当な生存の喜びを遂げさせると同時に、日本をして悪の道から出て東洋擁護者としての重責を全うせしめ、中国をして夢にも忘れられない不安恐怖から脱出せしめることである。また、東洋平和を重要な一部とする世界平和、人類幸福に必要な段階ともなるのである。これがどうして区々たる感情上の問題であろうか。<br><br>
				ああ、新天地が眼前に展開される。威力の時代が去って道義の時代が来た。過去の全時代に錬磨され、涵養された人道的精神が、今まさに新文明の曙の光を人類の歴史に投射し始めている。新春が世界にめぐり来て万物の回生を促している。冷たい氷と雪に呼吸も詰まったのが、かの一時の勢いならば、和風暖陽に気脈が伸びやかに振る舞うのも、また、この一時の勢いである。天地の復運に際し、世界の変潮に乗ったわれわれは、何も躊躇することなく、何も忌みはばかるものはないのである。<br><br>
				われわれの固有な自由権を保全し、生命の旺盛な営みをあくまで享有すべきであり、われわれの充分な独創力を発揮して、春爛漫の大界に民族的精華を結実させよう。われらがここに奮起するのだ。良心がわれわれと共にあり、真理がわれわれと共に進むのだ。男女老若を問わず、陰うつな古い巣から活発に飛び出し、森羅万象と共に欣快な復活を遂げるのだ。千百代の祖霊がわれらを陰で助け、全世界の機運がわれらを外で護ってくれる。着手がただちに成功である。ただ、前途の光明に向かってばく進あるのみ。<br><br>
				公　約　三　章<br><br>
				一、今日、われわれのこの拳は、正義・人道・生存・栄光の為の民族的欲求であるから、自由の精神を発揮すべきであり、決して排他的感情で横道にそれてはならない。<br><br>
				一、最後の一人まで、最後の一刻まで、民族の正当な意思を心よく発表せよ。<br><br>
				一、一切の行動は、最も秩序を尊重し、われわれの主張と態度をしてどこまでも公明正大ならしめよ。<br><br>
				建国　四二五二年　三月　一日<br><br>
				民族代表　　孫　秉　煕　　以下三十三人<br><br>
			</p>
		</div>
		
		<div class="declaContents declaLang" id="declaChn" style="display: none;">
			<p class="noHan chnFont">
				<span>《三一独立宣言书》</span><br><br>
				1<br>
				现在我们宣告朝鲜的独立和朝鲜人的自主权。向全球宣告这个事实来明确表示全人类的平等，子孙万代将永远享受民族自尊的应有权利。<br><br>
				2<br>
				我们的独立宣告是根据具有权威的半万年历史。合两千万民众的忠心广泛宣告我们的独立，为巩固民族的自由发展而主张独立。如今全人类以纯粹的心情愿意共同改造世界，我们也将遵从这些大志并共同提倡独立。这不仅是天意、时代的大潮流，也是全人类为争取共同生存权利的主张及活动。因此这世界上无论什么都不能阻止我们的独立。<br><br>
				3<br>
				（我们）被旧时代的遗物——侵略主义与强权主义抢走了国家，结果五千年历史以来第一次被其它民族压迫了自由，今天，这些痛苦的历史已经过去了十年。我们在被抢走了生存权的这些年，不仅精神上遭受了很大的伤害，而且民族的权威与名誉上也损害严重，还失去了很多那些以我们的知识、才能、创意为基础，为人类文化的大发展做贡献和帮助的机会。<br><br>
				4<br>
				的确，如果想陈述长期积累的冤屈；如果想摆脱目前面临的痛苦；如果想消除对临近未来的恐惧；如果想重新恢复并扩大已经被压迫、缩小、无力懦弱的民族良心与国家的威信、道义；如果想适当发展个人各自的人格；如果想避免将羞耻的遗产留给可怜子孙的情况；如果想使我们后代万古享受完整的幸福，最为紧急的任务就是完成民族的独立。在今天，二千万人心怀利刃，由人类共同的价值和时代的良心组成正义的军队、人伦与道德即为武器将保护我们，对我们而言，如果我们自己下定决心争取前进，将无往而不利。谋定而后动，知止而有得。<br><br>
				5<br>
				签订《江华岛条约》以来，日本随之违背了两国间原有的约定，但是（我们）不会谴责日本没有信义。（日本）的学者在讲坛上、政治家在实际生活中，均将我们从祖先继承下来的立足之地当做殖民地，将我们的文化民族看做野蛮的存在，由此只享受其征服者的乐趣。尽管日本忽视了我们历史悠久、源远流长的社会结构，也无视我们民族的思想意志，但是我们不会谴责日本的错误。我们因急迫谴责自己、鼓励自己，所以没有时间去抱怨他人。我们因急迫处理好现在，所以也没有时间去计较过往的错误。今天我们该做的不是诽谤他人，而是树立我们自己；也绝不是因为陈旧的怨恨与一时的感情忌恨、排斥别人，而是按照严肃的良心使命要求开拓民族的新命运。我们的目的在于，修改并纠正那些拘谨于旧思想、旧势力，依旧想要立功名的日本为政者们打造出如今不自然、不合理的错误现实。由此回归到自然、合理、正确的世界，而这个世界不是以强凌弱、以小欺大。<br><br>
				两国合并的结果本不是我们民族的意愿，毫无根本对策的压制和差别引发的不平等、对社会发展的虚伪统计数据，使两个民族之间的理解互相分歧，回顾至今，不可化解的鸿沟日益加深。需明白，勇敢、大胆地纠正过去的错误，以真挚的理解和人道主义为基础，开辟和睦相处的新时代，这才是避祸趋福的正确捷径。<br><br>
				还有，对着充满郁愤、仇恨的二千万朝鲜人进行武力压制，并不是保证东方永恒和平的办法，只会逐渐加深影响东方的安全与危机及四亿中国人对日本的恐惧、嫉妒，由此一定会造成全东方共灭的悲剧。之所以今天我们宣告朝鲜的独立，是为了使朝鲜人能够实现正当的繁荣，也为了使日本从歧途摆脱的同时深切地感到该守护东方安全的重大责任，还有为了将中国从梦里也无法摆脱的不安与恐惧中进行解放，最后作为世界和平的重要因素，实现东方和平，创造全人类的福祉，将是必要的阶段。这怎么会是拙劣感情上的问题呢。<br><br>
				6<br>
				啊啊，全新的天地呈现在我们眼前。武力的时代皆以过去，道德的时代已经到来。经过去世纪雕刻出来的人道精神，即将开始向人类历史投射新文明的光耀。整个尘世迎来了新春并催促万物的复苏。过去时代存在因寒风与冻僵的冰块，连呼吸也难过的不吉利气氛，而未来即将迎来温暖的风与阳光相通的紫气。因此在天地万物复苏新生的此刻，上个世界变化的滔滔浪潮对于我们来说没有犹豫、顾忌的理由。我们坚决维护我们自己当初拥有的自由权，由此充分的享受丰盛生活的乐趣，还想以发挥我们充足的创造力为基础，向春色弥漫的整个世界展现朝鲜民族的优秀性。<br><br>
				7<br>
				因而我们奋然而起。良心与我们一起，真理伴随我们前进，不论男女老少人们均从阴沉的旧房中跑出，将与万物共同实现快乐的复活。千万年传承下来的祖先灵魂在内保护着我们，全球的动向在外保护着我们，所以只要开始行动，就会取得成功。但愿他向着前方光明持续前进。<br><br>
				公约三章<br><br>
				第一，今天我们大举是为寻找正义、人道、生存、繁荣民族的要求。因此只发挥自由精神，而绝对不能走向排他感情。<br><br>
				第二，到最后一人、最后一刻理直气壮地去发表民族正确的想法。<br><br>
				第三，一切行动首先尊重秩序，我们的主张与态度无论何时何地都光明正大。<br><br>
				自朝鲜建国以来，第四千二百五十二年的三月一日
			</p>
		</div>
		
		<div class="declaContents declaLang" id="declaEng" style="display: none;">
			<p>
				<sapn>Proclamation of Korean Independence</span><br><br>
				1<br>
				We herewith proclaim the independence of Korea and the liberty of the Korean people. This we proclaim for the world to witness the equality of all humans; this we proclaim for our own posterity to enjoy the inherent right of independence and self-respect.<br><br>
				2<br>
				We are declaring our independence by the solemnity of our five-thousand-year history; by the loyalty of twenty million people; by the yearning for the advancement of everlasting liberty; by the desire to take part in the global reform rooted in human conscience. This is a righteous claim to fulfill the holy will of God and the spirit of our age calling for the fair co-existence of all humankind. Therefore, no power in this world shall suppress our independence.<br><br>
				3<br>
				For the first time in our 5000 years’ history, we have suffered for over a decade under foreign tyranny while falling a victim to the obsolete imperialism and authoritarianism. How long have we been deprived of our right to live? How immeasurable is the damage to our national pride and honor as well as to our spiritual growth? How many opportunities have we missed to make our own creative contribution to the progress in the world civilization?<br><br>
				4<br>
				For certain, if we are to overcome our longstanding resentment; if we are to extricate ourselves from today’s pain; if we are to eliminate the fear for the future; if we are to resuscitate our trampled national pride; if we as individuals are to reach our full potential; if we are to save our children from the legacy of shame; if we are to bequeath to our future generations blessing and prosperity, the most urgent mission is to establish the independence of our people. Now that we people of twenty million keep a sword in heart, and that the common value of the humankind and conscience of the era stand up for us equipped with arms of justice and morality, what can stop us from pressing forward to defeat the strongest and what purpose can we not accomplish?<br><br>
				5<br>
				We have no desire to accuse Japan of breaking many solemn treaties since 1876, nor to single out particularly the school teachers or government officials who merely seek a conqueror’s gratification, treating the heritage of our ancestors as a colony of their own, and our civilized culture as savages. We have no intention to find fault with Japan’s contempt of our long and distinguished civilization and the principles on which it rests. We are pressed to reprimand ourselves, and thus have little time to reproach others. Busy with today’s work, we have little time to chastise the faults of yesterday. Today, our only duty is to rebuild ourselves, not to demolish others.<br><br>
				Our aim is to explore our new destiny according to the solemn dictates of our conscience, not to squabble with others over fleeting grudges and old animosities. It is to restore the natural and rational foundation for the world free from the logic of power by rectifying the unnatural and irrational ambition of the Japanese politicians in the grip of obsolete ideas.<br><br>
				Behold the consequence of the annexation formerly made with no national consensus! It has inevitably led to a deep trench of everlasting resentment between two peoples under the influence of intimidation used as a temporary measure, inequality caused by discrimination, and statistics falsified to justify it.<br><br>
				For both countries to avoid disaster and foster amity, the best way is for sure to boldly correct old wrongs and to build up a new relationship based on true mutual understating.<br><br>
				Moreover, the oppression on 20 million Korean people filled up with bitterness and enmity will never secure eternal peace in Asia. Undoubtedly, it will exacerbate the apprehension and distrust of four hundred million Chinese people who hold the key to East Asian stability and, as a result, will lead to the unrest and eventual downfall of the entire region.<br><br>
				Therefore, the reasons why we proclaim the independence of Korea are as follows: 1) to permit Koreans to return to their rightful lives, 2) to enable the Japanese to break away from their wrongful path and concentrate on their responsibility as a major player in East Asia, 3) to free the Chinese from their nightmare of uncertainty and anxiety about Japan, 4) to make an indispensable step from the stability of East Asia toward the global well-being of all humanity and world peace. This is far from a matter of narrow-minded resentment.<br><br>
				6<br>
				Behold! A new world is approaching before our very eyes! The age of might has receded, and the age of morality has arrived. The spirit of humanism cultivated throughout the past century now begins to throw its light on a new chapter in world history. Just as a new spring has come hastening the rebirth of every living thing, our pulse, once frozen in the bitter cold and snow, now quickens in the warm breeze and sunshine. The good fortune of heaven and earth has returned to us, and we ride the changing tide of the world. Do not hesitate or flinch! By protecting our inalienable individual right to freedom, we will enjoy our lives to the full. By realizing our bountiful creativity, our national civilization will flower in the warmth of spring that pervades the world.<br><br>
				7<br>
				We hereby rise up! Conscience is on our side, and truth marches with us. Men and women, young and old, leave your darkened corners and partake in the joyful resurrection along with all creatures! The spirit of our ancestors protects us from inside for thousands of years; the tide of the new world protects us from outside. To begin is to succeed! Let us march straight into the light!<br><br>
				We hereby pledge the following:<br><br>
				1.Today’s undertaking reflects the demands of our people for justice, morality, survival, and prosperity. Therefore, we will act solely in the spirit of liberty, never in the spirit of enmity.<br><br>
				2.To the last person and to the last moment, we will forthrightly express the righteous will of the Korean people.<br><br>
				3.We will respect order in all our actions and ensure that our demeanor and claims are always honorable and upright.<br><br>
				On the first day of the month of March of the year four thousand two hundred and fifty two in calendar year of Dangun (A.D. 1919).
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