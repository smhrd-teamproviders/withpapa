<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="https://i.imgur.com/BTx1VEw.png"/> 
    <link rel="apple-touch-icon" href="https://i.imgur.com/BTx1VEw.png"/>
    <title>WITHPAPA</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js">

</script>
<link rel="stylesheet" href="/resources/css/style.css">
<link href="${path}/resources/css/start.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<style type="text/css">
#banner_online {
	height: 502px;
	width: 379px;
	border: 1px solid black;
	box-shadow: 3px 3px 7px 1px rgb(255, 253, 253);
	background-color: white;
	z-index: 100;
	margin: auto;
	display: none;
	transform: translate(3%, 1%);
	padding: 46px;
	overflow-y: auto;
}

#banner_online h2 {
	text-align: center;
	font-size: 17px;
	margin-bottom: 10px;
}

#banner_online p .second {
	margin-left: 6px;
}

.pop_content {
	font-size: 13px;
	margin-left: 20px;
}

#banner_online_how {
	height: 78px;
	width: 444px;
	margin-left: 28px;
	border: 1px solid #82bf77;
	margin-top: 22px;
}

#banner_online_how h3 {
	font-size: 12px;
	margin-left: 6px;
	margin-top: 16px;
}

#close_button {
	float: right;
	margin-top: -3px;
	cursor: pointer;
}

.p_bottom {
	margin-left: 30px;
}

#modal {
	position: absolute;
	width: 100%;
	height: 100%;
	background: rgba(255, 255, 255, 0);
	top: 100px;
	left: 0;
	z-index: 99;
	display: none;
}

.category {
	display: flex;
	text-align: center;
	margin: auto;
}

.delbtn {
	border: none;
	background-color: rgba(0, 0, 0, 0);
}

#search {
	display: flex;
	width: 500px;
	margin: auto;
}

.swiper {
	width: 600px;
	height: 400px;
	transform: translate(10px, -165px);
	font-family: 'GmarketSansMedium';
}

.main_image_text {
	position: absolute;
	bottom: -1%;
	right: -5px;
	color: white;
	width: 600px;
	transform: translate(2px, -10px);
	font-family: 'GmarketSansMedium';
}

.main_image_box {
	position: absolute;
	bottom: -13%;
	width: 600px;
	height: 100px;
	background-color: rgba(0, 0, 0, 0.6);
}

.main_image_loc {
	position: absolute;
	bottom: -1%;
	right: 91%;
	color: white;
	font-family: 'GmarketSansMedium';
}

.swiper img {
	width: 600px;
	height: 400px;
}
</style>
</head>
<body>

	<!-- 상단 화면 -->
	<div class="ducks">
		<img src="resources/img/img_logo/logo_duck.png" alt="papaducks">
	</div>
	<div class="title">
		<p style="color: #0CA789">WITHPAPA</p>
	</div>

	<form action="search/searchresult" method="get">
		<div class="search">
			<!-- 돋보기 버튼 -->
			<a href="#" class="modal-button" id="openModalButton"> <img
				src="resources/img/img_logo/search_magnifier_icon_2 (1).png"
				alt="돋보기 이미지">
			</a>
		</div>

		<!-- 돋보기 눌렀을 때 실행되는 모달 창 -->
		<div id="modal">
			<div id="banner_online">
				<div id="close_button" style="cursor: pointer;">
					<img src="resources/img/img_searchbox/close_cross.png">
				</div>
				<input type="text" name="progNm" placeholder="어디로 놀러 가볼까요?">
				<div class="pop_content">
					<p>
						<img src="resources/img/img_searchbox/location.png"> 지역
					</p>

					<div class="scrollMenu">
						<table style="text-align: center">
							<tbody>
								<tr>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "거제시">거제시</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "거창군">거창군</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "고성군">고성군</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "김해시">김해시</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "남해군">남해군</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "밀양시">밀양시</button></td>
								</tr>

								<tr>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "사천시">사천시</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "산청군">산청군</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "양산시">양산시</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "의령군">의령군</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "진주시">진주시</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "창녕군">창녕군</button></td>
								</tr>
								<tr>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "창원시">창원시</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "통영시">통영시</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "하동군">하동군</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "함안군">함안군</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "함양군">함양군</button></td>
									<td><button class="custom-btn btn-5" name = "placeDistrict" value = "합천군">합천군</button></td>
								</tr>
							</tbody>
						</table>
					</div>

					<p>
						<img src="resources/img/img_searchbox/category.png"> 유형 선택
					</p>
				</div>
				<!-- 모달창 안에 카테고리 선택  -->
				<table>
					<tbody>
						<tr>
							<td><img src="resources/img/img_type/미술.png" border="0"
								alt="" class="indexicon1"></td>
							<td><img src="resources/img/img_type/요리.png" border="0"
								alt="" class="indexicon1"></td>
							<td><img src="resources/img/img_type/과학.png" border="0"
								alt="" class="indexicon1"></td>
							<td><img src="resources/img/img_type/체육.png" border="0"
								alt="" class="indexicon1"></td>
							<td><img src="resources/img/img_type/역사.png" border="0"
								alt="" class="indexicon1"></td>
							<td><img src="resources/img/img_type/생태.png" border="0"
								alt="" class="indexicon1"></td>
						</tr>
						<tr>
							<td>미술</td>
							<td>요리</td>
							<td>과학</td>
							<td>체육</td>
							<td>역사</td>
							<td>생태</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="progType" value="미술"></td>
							<td><input type="checkbox" name="progType" value="요리"></td>
							<td><input type="checkbox" name="progType" value="과학"></td>
							<td><input type="checkbox" name="progType" value="체육"></td>
							<td><input type="checkbox" name="progType" value="역사"></td>
							<td><input type="checkbox" name="progType" value="생태"></td>
						</tr>
					</tbody>
				</table>

				<p>
					<img src="resources/img/img_searchbox/date.png"> 날짜 선택
				</p>

				<div>
					<a>시작일</a><input type="date" name="progDayStart"> <a>종료일</a>
					<input type="date" name="progDayEnd">
				</div>
				
				<br>
				<div class = submitsearch>
					<input type="submit" value="검색">
				</div>
			</div>
		</div>
	</form>

	<!-- 카테고리 화면 -->
	<div class="categorycontainer">
		<div class="text-center indexicongroup">
			<a
				href="search/searchresult?progNm=&progType=미술&progDayStart=&progDayEnd="
				onfocus="blur()" target="_self" data-vibrate="5" name="progType"
				alt="미술"> <img src="resources/img/img_type/미술.png" border="0"
				alt="" class="indexicon"><br /> <span>미술</span>
			</a>
		</div>
		<div class="text-center indexicongroup">
			<a
				href="search/searchresult?progNm=&progType=요리&progDayStart=&progDayEnd="
				onfocus="blur()" target="_self" data-vibrate="5" name="progType"
				alt="요리"> <img src="resources/img/img_type/요리.png" border="0"
				alt="" class="indexicon"><br /> <span>요리</span>
			</a>
		</div>
		<div class="text-center indexicongroup">
			<a
				href="search/searchresult?progNm=&progType=과학&progDayStart=&progDayEnd="
				onfocus="blur()" target="_self" data-vibrate="5" name="progType">
				<img src="resources/img/img_type/과학.png" border="0" alt=""
				class="indexicon"><br /> <span>과학</span>
			</a>
		</div>
		<div class="text-center indexicongroup">
			<a
				href="search/searchresult?progNm=&progType=체육&progDayStart=&progDayEnd="
				onfocus="blur()" target="_self" data-vibrate="5" name="progType">
				<img src="resources/img/img_type/체육.png" border="0" alt=""
				class="indexicon"><br /> <span>체육</span>
			</a>
		</div>
		<div class="text-center indexicongroup">
			<a
				href="search/searchresult?progNm=&progType=역사&progDayStart=&progDayEnd="
				onfocus="blur()" target="_self" data-vibrate="5" name="progType">
				<img src="resources/img/img_type/역사.png" border="0" alt=""
				class="indexicon"><br /> <span>역사</span>
			</a>
		</div>
		<div class="text-center indexicongroup">
			<a
				href="search/searchresult?progNm=&progType=생태&progDayStart=&progDayEnd="
				onfocus="blur()" target="_self" data-vibrate="5" name="progType">
				<img src="resources/img/img_type/생태.png" border="0" alt=""
				class="indexicon"><br /> <span>생태</span>
			</a>
		</div>
	</div>

	<div class="recommend">
		<img src="resources/img/img_type/추천.png" width="30px">
	</div>
	<div class="recommend1">
		<a>추천 체험 프로그램</a>
	</div>


	<div class="swiper">
		<div class="swiper-wrapper">
			<!-- 배너 슬라이드 -->
			
		</div>
		<!-- 순서 버튼 -->
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-pagination"></div>

		<!-- 스크롤 바 -->
		<div class="swiper-scrollbar"></div>
	</div>


	<div class="jido">
		<img src="resources/img/img_type/지역.png" width="30px">
	</div>
	<div class="jido1">
		<a>지역 선택</a>
	</div>

	<!-- 맵 -->
	<div class="colormap">
		<img src="resources/img/img_district/컬러맵.png" usemap="#image-map">
		<map name="image-map">
			<area alt="거창군"
				href="search/searchresult?progNm=&placeDistrict=거창군&progDayStart=&progDayEnd="
				coords="94,12,170,97" shape="rect">
			<area alt="합천군"
				href="search/searchresult?progNm=&placeDistrict=합천군&progDayStart=&progDayEnd="
				coords="187,60,310,134" shape="rect">
			<area alt="창녕군"
				href="search/searchresult?progNm=&placeDistrict=창녕군&progDayStart=&progDayEnd="
				coords="334,71,437,140" shape="rect">
			<area alt="밀양시"
				href="search/searchresult?progNm=&placeDistrict=밀양시&progDayStart=&progDayEnd="
				coords="466,73,587,140" shape="rect">
			<area alt="함양군"
				href="search/searchresult?progNm=&placeDistrict=함양군&progDayStart=&progDayEnd="
				coords="7,109,83,227" shape="rect">
			<area alt="산청군"
				href="search/searchresult?progNm=&placeDistrict=산청군&progDayStart=&progDayEnd="
				coords="95,136,172,206" shape="rect">
			<area alt="의령군"
				href="search/searchresult?progNm=&placeDistrict=의령군&progDayStart=&progDayEnd="
				coords="188,167,266,221" shape="rect">
			<area alt="함안군"
				href="search/searchresult?progNm=&placeDistrict=함안군&progDayStart=&progDayEnd="
				coords="283,168,359,221" shape="rect">
			<area alt="창원시"
				href="search/searchresult?progNm=&placeDistrict=창원시&progDayStart=&progDayEnd="
				coords="379,183,475,282" shape="rect">
			<area alt="김해시"
				href="search/searchresult?progNm=&placeDistrict=김해시&progDayStart=&progDayEnd="
				coords="498,174,589,255" shape="rect">
			<area alt="양산시"
				href="search/searchresult?progNm=&placeDistrict=양산시&progDayStart=&progDayEnd="
				coords="610,118,692,180" shape="rect">
			<area alt="하동군"
				href="search/searchresult?progNm=&placeDistrict=하동군&progDayStart=&progDayEnd="
				coords="96,257,170,361" shape="rect">
			<area alt="진주시"
				href="search/searchresult?progNm=&placeDistrict=진주시&progDayStart=&progDayEnd="
				coords="198,241,352,300" shape="rect">
			<area alt="사천시"
				href="search/searchresult?progNm=&placeDistrict=사천시&progDayStart=&progDayEnd="
				coords="184,316,290,374" shape="rect">
			<area alt="고성군"
				href="search/searchresult?progNm=&placeDistrict=고성군&progDayStart=&progDayEnd="
				coords="311,316,412,375" shape="rect">
			<area alt="남해군"
				href="search/searchresult?progNm=&placeDistrict=남해군&progDayStart=&progDayEnd="
				coords="144,395,230,483" shape="rect">
			<area alt="통영시"
				href="search/searchresult?progNm=&placeDistrict=통영시&progDayStart=&progDayEnd="
				coords="339,395,418,504" shape="rect">
			<area alt="거제시"
				href="search/searchresult?progNm=&placeDistrict=거제시&progDayStart=&progDayEnd="
				coords="432,386,508,492" shape="rect">
		</map>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#openModalButton").click(function(event) {
				event.preventDefault();
				$("body").css("modal-open");
				$("#banner_online").fadeIn();
				$("#modal").fadeIn();

				myCustomFunction();
			});

			$("#close_button").click(function() {
				$("#banner_online").fadeOut();
				$("#modal").fadeOut();
				$("body").css("modal-open");
			});

			$("#modal").click(function(event) {
				if (event.target.id === "modal") {
					$("#banner_online").fadeOut();
					$("#modal").fadeOut();
					$("body").css("modal-open");
				}
			});
		});
	</script>
	<script>
	$(document).ready(function() {
	    $.ajax({
	        url: "recommend",
	        type: "GET",
	        dataType: "json",
	        success: printRcmdProg,
	        error: function(xhr, status, error) {
	            
	        }
	    });
	});
	
	function printRcmdProg(data) {
		let htmlRcmdProg = "";
		
		for(i in data) {
			htmlRcmdProg += "<div class='swiper-slide'>";
			htmlRcmdProg += "<div class='backdrop'></div>";
			htmlRcmdProg += "<a href='http://localhost:8089/withpapa/search/programinfo?progId="+data[i].progId+"'>";
			htmlRcmdProg += "<img src='resources/img/img_program/"+data[i].imgNm+".png' height='400' width='600' alt=''>";
			htmlRcmdProg += "<h1 class='main_image_box'></h1>";
			htmlRcmdProg += "<h1 class='main_image_text' style='font-size: 30px'>"+data[i].progNm+"</h1>";
			htmlRcmdProg += "<h1 class='main_image_loc' style='font-size: 16px'>"+data[i].placeDistrict+"</h1>";
			htmlRcmdProg += "</a></div>";
		}
		
		$(".swiper-wrapper").append(htmlRcmdProg)
		
		const swiper = new Swiper('.swiper', {
			loop : true,
			autoplay : { //자동 재생 여부
				delay : 3000, // 시간 지연 설정 (ex : 3000 : 3.0초)
				disableOnInteraction : false
			// 배너 자동 재생 유지
			},
			slidesPerView : 1,
			pagination : {
				el : '.swiper-pagination',
			},

			// 네비게이션 화살표
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},

			// 스크롤바
			scrollbar : {
				el : '.swiper-scrollbar',
			},

		});
	}
	</script>

</body>
</html>