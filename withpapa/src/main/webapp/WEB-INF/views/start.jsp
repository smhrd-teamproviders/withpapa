<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js">
	window.onload = function() {
		for (var i = 0; i < document.getElementsByTagName('input').length; i++) {
			if (document.getElementsByTagName('input')[i].getAttribute('type') == 'checkbox') {
				document.getElementsByTagName('input')[i].checked = true;
			}
		}
	};
</script>
<link href="${path}/resources/css/start.css" rel="stylesheet"/> 
<style type="text/css">
#banner_online {
    height: 500px;
    width: 453px;
    border: 1px solid black;
    box-shadow: 3px 3px 7px 1px rgb(255, 253, 253);
    background-color: white;
    z-index: 100;
    margin: auto;
    display: none;
    position: absolute;
    top: 80%;
    left: 50%;
    transform : translate(-50%,-50%);
    padding:20px;
    overflow-y:auto;
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
    background: rgba(255, 255, 255, 0);
    top: 100px;
    left: 0;
    z-index: 99;
    display: none;               
}

.modal-open {
    overflow: hidden;
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
    display :flex;
    width: 500px;
    margin: auto;
}
</style>
</head>
<body>
	<!-- 상단 화면 -->
	<div class="ducks">
          <img src="resources/img/img_logo/logo_duck.png" alt="papaducks" width="100px">
       </div>
    <div class="main">
    <div class="title">
          <p style="color:#0CA789;">WITHPAPA</p>
       </div>
    <div class="subtitle">
          <h5>아빠들과 함께하는 아이들의 소중한 시간</h5>
       </div>
       </div>
         
    <div class="search">
		  <input type="text" placeholder="어디로 놀러 가볼까요?">
		
		
		<!-- 돋보기 버튼 -->

    <a href="#" class="modal-button" id="openModalButton">
        <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" alt="돋보기 이미지">
         </a>
	     </div>
		<!-- 돋보기 눌렀을 때 실행되는 모달 창 -->
	<div id="modal"></div>
    <div id="banner_online">
	<div id="close_button" style="cursor: pointer;">
		<img src="resources/img/img_searchbox/close_cross.png">
	  </div>
	<div class="pop_content">
		<p>
		<img src="resources/img/img_searchbox/location.png"> 지역
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
        <button class="mappart" name="placeDistrict">양산시</button>  <div class="space"></div><button class="mappart" name="placeDistrict">의령군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">진주시</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">창녕군</button>  <div class="space"></div>
        <span style="line-height:20%"><br></span>
        <button class="mappart" name="placeDistrict">창원시</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">통영시</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">하동군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">함안군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">함양군</button>  <div class="space"></div>
        <button class="mappart" name="placeDistrict">합천군</button>
        </div>
	
		 <p>
		 <img src="resources/img/img_searchbox/category.png"> 유형 선택
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
         <img src="resources/img/img_type/date.png"> 날짜 선택
        </p>
         <input type="date" />
        </div>
        
        
		<!-- 카테고리 화면 -->
	<div class='row my-3'>
    <div class = "col-12 col-md-6 d-flex justify-content-around pr-md-0 mb-3 pt-3">
    <div class = "text-center indexicongroup"> 
    <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
         <img src="resources/img/img_type/미술.png" border="0" alt="" class="indexicon">
            <span>미술</span>
         </a>
     </div>
    <div class = "text-center indexicongroup"> 
        <a href="" onfocus="blur()" target="_self" data-vibrate="5" name="progType">
          <img src="resources/img/img_type/요리.png" border="0" alt="" class="indexicon">
            <span>요리</span>
         </a>
     </div>
    <div class = "text-center indexicongroup"> 
    <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
          <img src="resources/img/img_type/과학.png" border="0" alt="" class="indexicon">
            <span>과학</span>
          </a>
     </div>
      <div class = "text-center indexicongroup">
          <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
          <img src="resources/img/img_type/체육.png" border="0" alt="" class="indexicon">
            <span>체육</span>
          </a>
     </div>
    <div class = "text-center indexicongroup">
          <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
          <img src="resources/img/img_type/역사.png" border="0" alt="" class="indexicon">
            <span>역사</span>
          </a>
     </div>
    <div class = "text-center indexicongroup">
          <a href="" onfocus="blur()"  target="_self" data-vibrate="5" name="progType">
          <img src="resources/img/img_type/생태.png" border="0" alt="" class="indexicon">
            <span>생태</span>
          </a>
     </div>
     </div>
     </div>
	
        <!-- 지도 화면  -->
    <div class="center_map_area">
    <div id="center_map" class="map_area" style="width: 30rem; height: 26rem; transform: scale(1);">
    <ul class="map">
    <li class="area_box map_area01">   
         <img src = "resources/img/img_district/경상남도 지도 거창군1.png" usemap="#image-map">
         <map name="image-map">
         <area target="_blank" alt="거창군" title="거창군" href="https://www.geochang.go.kr/" coords="180,108,83,44" shape="rect">
     </map>
         <li class="area_box map_area02"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 합천군 색.png" alt="합천군"></a></li>
         <li class="area_box map_area03"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 창녕군.png" alt="창녕군"></a></li>
         <li class="area_box map_area04"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 밀양시.png" alt="밀양시"></a></li>
         <li class="area_box map_area05"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 양산시.png" alt="양산시"></a></li>
         <li class="area_box map_area06"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 함양군 색.png" alt="함양군"></a></li>
         <li class="area_box map_area07"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 산청군 색.png" alt="산청군"></a></li>
         <li class="area_box map_area08"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 의령군.png" alt="의령군"></a></li>
         <li class="area_box map_area09"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 함안군.png" alt="함안군"></a></li>
         <li class="area_box map_area10"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 창원시1.png" alt="창원시"></a></li>
         <li class="area_box map_area11"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 김해시.png" alt="김해시"></a></li>
         <li class="area_box map_area12"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 하동군.png" alt="하동군"></a></li>
         <li class="area_box map_area13"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 진주시.png" alt="진주시"></a></li>
         <li class="area_box map_area14"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 사천시.png" alt="사천시"></a></li>
         <li class="area_box map_area15"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 고성군.png" alt="고성군"></a></li>
         <li class="area_box map_area16"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 남해군.png" alt="남해군"></a></li>
         <li class="area_box map_area17"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 통영시.png" alt="통영시"></a></li>
         <li class="area_box map_area18"><a href = "https://www.youtube.com/" target = "_blank"><img src="resources/img/img_district/경상남도 지도 거제시.png" alt="거제시"></a></li>
					
      </ul>
      </div>
      </div>
          
         
   <div id='wrapper'>
       <footer>COPYRIGHT (C) 2024 WITHPAPA, ALL RIGHTS RESERVED</footer>
      </div>
    
    
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
    
            $("#close_button").click(function() {
                $("#banner_online").fadeOut();
                $("#modal").fadeOut();
                $("body").css("modal-open");
            });

            $("#modal").click(function(event) {
               if (event.target.id === "modal") {
                $("#banner_online").fadeOut();
                $("#modal").fadeOut();
                $("body").css("modal-open"); // 스크롤 복원
              }
            });
          });
     </script>
	
  <script src="start.js"></script>



	
</body>
</html>