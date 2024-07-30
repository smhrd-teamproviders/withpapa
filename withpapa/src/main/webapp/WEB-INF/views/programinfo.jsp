<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<script src="https://code.jquery.com/jquery-3.2.1.min.js">
        window.onload = function() {
            for (var i = 0; i < document.getElementsByTagName('input').length; i++) {
                if (document.getElementsByTagName('input')[i].getAttribute('type') == 'checkbox') {
                    document.getElementsByTagName('input')[i].checked = true;
                }
            }
        };
</script>
<meta charset="UTF-8"/>
<style>
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
    
}
.title{
	 font-family: 'GmarketSansMedium';
}

.programinfo{
	 font-family: 'GmarketSansMedium';

}

</style>
<link href="${path}/resources/css/programinfo.css" rel="stylesheet">
<head>
<style type="text/css">
/* CSS 코드 */
#banner_online {
	height: 500px;
	width: 450px;
	border: 1px solid black;
	box-shadow: 3px 3px 7px 1px rgb(255, 253, 253);
	background-color: white;
	z-index: 100;
	margin: auto;
	position: absolute;
	top: 63%;
	left: 50%;
	transform: translate(-52%, -60%);
	padding: 45px;
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
	background: rgb(255, 255, 255, 0);
	top: -100px;
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
	width: 617px;
	margin: auto;
	position: relative;
	left: 32px;
}
</style>
</head>
<body>

	<div style="margin-left: 35vw;">
		<!-- 오리 버튼 (홈페이지 리다이렉트) -->
		<a href="http://localhost:8089/withpapa/" onfocus="blur()"
			target="_self" data-vibrate="5" name="progType"> <img
			src="http://localhost:8089/withpapa/resources/img/img_logo/logo_duck.png"
			border="0" alt="papaducks" class="papaduck">
		</a>
	</div>

	<form action="searchresult" method="get">
		<div class="search">
			<input type="text" name="progNm" placeholder="어디로 놀러 가볼까요?">
			<!-- 돋보기 버튼 -->
			<a href="#" class="modal-button" id="openModalButton"> <img
				src="http://localhost:8089/withpapa/resources/img/img_logo/search_magnifier_icon_2 (1).png"
				alt="돋보기 이미지">
			</a>
		</div>

		<!-- 돋보기 눌렀을 때 실행되는 모달 창 -->
		<div id="modal">
			<div id="banner_online">
				<div id="close_button" style="cursor: pointer;">
					<img
						src="http://localhost:8089/withpapa/resources/img/img_searchbox/close_cross.png">
				</div>

				<!-- <form action="search/searchresult" method="get"> -->
				<div class="pop_content">
					<p>
						<img
							src="http://localhost:8089/withpapa/resources/img/img_searchbox/location.png">
						지역
					</p>

					<div class="scrollMenu">
						<table style="text-align: center">
							<tbody>
								<tr>
									<td><input type="radio" name="placeDistrict" value="거제시">거제시</td>
									<td><input type="radio" name="placeDistrict" value="거창군">거창군</td>
									<td><input type="radio" name="placeDistrict" value="고성군">고성군</td>
									<td><input type="radio" name="placeDistrict" value="김해시">김해시</td>
									<td><input type="radio" name="placeDistrict" value="남해군">남해군</td>
									<td><input type="radio" name="placeDistrict" value="밀양시">밀양시</td>
								</tr>

								<tr>
									<td><input type="radio" name="placeDistrict" value="사천시">사천시</td>
									<td><input type="radio" name="placeDistrict" value="산청군">산청군</td>
									<td><input type="radio" name="placeDistrict" value="양산시">양산시</td>
									<td><input type="radio" name="placeDistrict" value="의령군">의령군</td>
									<td><input type="radio" name="placeDistrict" value="진주시">진주시</td>
									<td><input type="radio" name="placeDistrict" value="창녕군">창녕군</td>
								</tr>
								<tr>
									<td><input type="radio" name="placeDistrict" value="창원시">창원시</td>
									<td><input type="radio" name="placeDistrict" value="통영시">통영시</td>
									<td><input type="radio" name="placeDistrict" value="하동군">하동군</td>
									<td><input type="radio" name="placeDistrict" value="함안군">함안군</td>
									<td><input type="radio" name="placeDistrict" value="함양군">함양군</td>
									<td><input type="radio" name="placeDistrict" value="합천군">합천군</td>
								</tr>
							</tbody>
						</table>
					</div>

					<p>
						<img
							src="http://localhost:8089/withpapa/resources/img/img_searchbox/category.png">
						유형 선택
					</p>
				</div>
				<!-- 모달창 안에 카테고리 선택  -->
				<table>
					<tbody>
						<tr>
							<td><img
								src="http://localhost:8089/withpapa/resources/img/img_type/미술.png"
								border="0" alt="" class="indexicon1"></td>
							<td><img
								src="http://localhost:8089/withpapa/resources/img/img_type/요리.png"
								border="0" alt="" class="indexicon1"></td>
							<td><img
								src="http://localhost:8089/withpapa/resources/img/img_type/과학.png"
								border="0" alt="" class="indexicon1"></td>
							<td><img
								src="http://localhost:8089/withpapa/resources/img/img_type/체육.png"
								border="0" alt="" class="indexicon1"></td>
							<td><img
								src="http://localhost:8089/withpapa/resources/img/img_type/역사.png"
								border="0" alt="" class="indexicon1"></td>
							<td><img
								src="http://localhost:8089/withpapa/resources/img/img_type/생태.png"
								border="0" alt="" class="indexicon1"></td>
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
					<img
						src="http://localhost:8089/withpapa/resources/img/img_searchbox/date.png">
					날짜 선택
				</p>

				<div>
					<a>시작일</a><input type="date" name="progDayStart"> <a>종료일</a>
					<input type="date" name="progDayEnd">
				</div>

				<div>
					<input type="submit" value="검색">
				</div>
				<!-- </form> -->
			</div>
		</div>
	</form>

	<div>
		<!-- 카테고리 유형 -->
		<div class="categorytype">
			<img src="data:image/jpg;base64,${progType}" width="50px"
				height="50px">
		</div>

		<!-- 체험장소 이름 -->
		<div class="title">
			<p class="text" style="font-size: 30px">${progNm}</p>
		</div>

		<!-- 홈페이지 버튼 -->
		<button onclick="location.href='${progUrl}'" class="placehomepage">바로가기</button>
	</div>

	<!-- 프로그램 이미지 -->
	<div class="place">
		<img src="data:image/jpg;base64,${imgNm}" alt="">
	</div>

	<!-- 지도 화면 -->
	<div id="map" style="width: 546px; height: 280px;"></div>

	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e6f79d0b7c01aaf6bd4612381ea932e"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(${placeLatitd}, ${placeLongtd}), // 지도의 중심좌표
		        level: 3, // 지도의 확대 레벨
		        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
		    }; 

		// 지도를 생성한다 
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		// 지도 타입 변경 컨트롤을 생성한다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);	

		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new kakao.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

		// 지도에 마커를 생성하고 표시한다
		var marker = new kakao.maps.Marker({
		    position: new kakao.maps.LatLng(${placeLatitd}, ${placeLongtd}), // 마커의 좌표
		    draggable : true, // 마커를 드래그 가능하도록 설정한다
		    map: map // 마커를 표시할 지도 객체
		});

		// 마커에 mouseover 이벤트를 등록한다
		kakao.maps.event.addListener(marker, 'mouseover', function() {
		    console.log('마커에 mouseover 이벤트가 발생했습니다!');
		});

		// 마커에 mouseout 이벤트 등록
		kakao.maps.event.addListener(marker, 'mouseout', function() {
		    console.log('마커에 mouseout 이벤트가 발생했습니다!');
		});

		// 마커에 dragstart 이벤트 등록
		kakao.maps.event.addListener(marker, 'dragstart', function() {
		    console.log('마커에 dragstart 이벤트가 발생했습니다!');
		});

		// 마커에 dragend 이벤트 등록
		kakao.maps.event.addListener(marker, 'dragend', function() {
		    console.log('마커에 dragend 이벤트가 발생했습니다!');
		});

	  </script>

	<!-- 프로그램 정보 -->
	<div class="programinfo">
		<table>
			<tbody>
				<tr>
					<td class="tdright">일정 |</td>
					<td>${progPeriod}</td>
					<td class="tdright">연락처 |</td>
					<td>${placePhoneNo}</td>
				</tr>
				<tr>
					<td class="tdright">운영시간 |</td>
					<td>${progTime}</td>
					<td class="tdright">비용 |</td>
					<td>${progCost}</td>
				</tr>
				<tr>
					<td class="tdright">장소 |</td>
					<td>${placeNm}</td>
					<td class="tdright">주소 |</td>
					<td>${placeAddress}</td>
				</tr>
				<tr>
					<td colspan="4">체험내용 |<br> ${progContent }
					</td>
				</tr>
			</tbody>
		</table>
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
    
            $("#close_button").click(function(){
                $("#banner_online").fadeOut();
                $("#modal").fadeOut();
                $("body").css("modal-open");
            });

            $("#modal").click(function(event) {
               if (event.target.id === "modal"){
                $("#banner_online").fadeOut();
                $("#modal").fadeOut();
                $("body").css("modal-open"); 
               }
            });
         });
         </script>

</body>
</html>