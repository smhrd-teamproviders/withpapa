<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="${path}/resources/css/programinfo.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js">
        window.onload = function() {
            for (var i = 0; i < document.getElementsByTagName('input').length; i++) {
                if (document.getElementsByTagName('input')[i].getAttribute('type') == 'checkbox') {
                    document.getElementsByTagName('input')[i].checked = true;
                }
            }
        };
</script>
<meta charset="UTF-8">
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
    display: none;
    position: absolute;
    top: 43%;
    left: 50%;
    transform : translate (-50%,-50%);
    padding : 20px;
    overflow-y : auto;
    
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
    position: fixed;
    width: 100%;
    height: 100%;
    background: rgb(255, 255, 255 , 0);
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
    position:relative;
    left:32px;
}
</style>
</head>
<body>
<!-- 프로그램 상세 정보 페이지 -->
  <div id="search">
     <input type="text" placeholder="어디로 놀러 가볼까요?">
    <!-- 돋보기 버튼 -->
  <a href="#" class="modal-button" id="openModalButton">
     <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" alt="돋보기 이미지">
   </a>
   </div>



  <div id="modal"></div>
  <div id="banner_online">
  <div id="close_button" style = "cursur: pointer;">
     <img src="${path}/resources/img/img_searchbox/close_cross.png" alt="Close">
   </div>
  <div class="pop_content">
    <p>
     <img src="${path}/resources/img/img_searchbox/location.png" alt="location"> 지역
      </p>

  <div class="scrollMenu">
        <button class="mappart" name="placeDistrict">거제시</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">거창군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">고성군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">김해시</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">남해군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">밀양시</button>  <div class="space"></div>
        <span style="line-height:20%"><br></span>
        <button class="mappart" name="placeDistrict">사천시</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">산청군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">양산시</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">의령군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">진주시</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">창녕군</button>  <div class="space"></div>
        <span style="line-height:20%"><br></span>
        <button class="mappart" name="placeDistrict">창원시</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">통영시</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">하동군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">함안군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">함양군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">합천군</button>  <div class="space"></div>
        </div>
     
    <p>
       <img src="${path}/resources/img/img_searchbox/category.png" alt="category"> 유형 선택
     </p>
  
   <div class="category">
   <div class="text-center indexicongroup"> 
    <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
         <img src="resources/img/img_type/미술.png" border="0" alt="" class="indexicon1">
         <span>미술</span>
        </a>
        </div>  

   <div class="text-center indexicongroup"> 
    <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
         <img src="resources/img/img_type/요리.png" border="0" alt="" class="indexicon1">
         <span>요리</span>
        </a>
        </div>

   <div class="text-center indexicongroup"> 
    <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
         <img src="resources/img/img_type/과학.png" border="0" alt="" class="indexicon1">
         <span>과학</span>
        </a>
        </div>

   <div class="text-center indexicongroup">
    <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
         <img src="resources/img/img_type/체육.png" border="0" alt="" class="indexicon1">
         <span>체육</span>
        </a>
        </div>

   <div class="text-center indexicongroup">
    <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
         <img src="resources/img/img_type/역사.png" border="0" alt="" class="indexicon1">
         <span>역사</span>
        </a>
        </div>

   <div class="text-center indexicongroup">
    <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
         <img src="resources/img/img_type/생태.png" border="0" alt="" class="indexicon1">
         <span>생태</span>
        </a>
        </div>

        </div>
        </div>
     <p>
        <img src="${path}/resources/img/img_type/date.png"> 날짜 선택
    </p>
        <input type="date" />
    </div>
    
    <!-- 카테고리 유형 -->
  <div class = "categorytype">
       <img src="">
    </div>
    
    <!-- 체험장소 이름 -->
  <div class="title">
       <h2>도자기만들기</h2> <!-- 값 넘어오면 ${progNm} 쓰기 -->
    </div>
    
    <!-- 체험지역 -->
  <div class = "location">
    <a>${result.placeDistrict}ㅇㄹㅇㄹ</a>
    </div>

    <!-- 평범한 버튼 -->
       <button onclick = "location.href = ${progUrl}" class = "placehomepage">바로가기</button>
    
  <div class="place">
       <img src="${imgNm }" alt="">
    </div> 
      
  <div class="placeinfo">
      <a>일정 | </a> ${progperiod}
      <br>
      <a>운영시간 | </a> ${progTmStart}<a>~</a>${progTmEnd}
      <br>
      <a>장소 | </a> ${placeNm}
    </div>

  <div class="placeinfo2">
      <a>연락처 | </a>${placePhoneNo}
      <br>
      <a>비용 | </a>${progCost}
      <br>
      <a>주소 | </a> ${placeAddress}
    </div>

  <div class="placeinfo3">
      <a>체험 내용 :</a> ${progContent} 
    </div>

<!-- 지도 화면 -->
  <div id="map" style="width:546px;height:280px;"></div>
  
  <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e6f79d0b7c01aaf6bd4612381ea932e"></script>
  <script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.56715, 126.97571), // 지도의 중심좌표
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
		    position: new kakao.maps.LatLng(37.56670, 126.97729), // 마커의 좌표
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


 <script type="text/javascript">
        $(document).ready(function() {
            $("#openModalButton").click(function(event) {
                event.preventDefault(); // Prevent the default link behavior
                $("body").css("modal-open");
                $("#banner_online").fadeIn();
                $("#modal").fadeIn();
    
                // Execute your custom function
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
                $("body").css("modal-open"); // 스크롤 복원
               }
            });
         });
 </script>

 <script src = "searchbutton.js"></script>
 
</body>
</html>