<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="${path}/resources/css/programinfo.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
    left: 48%;
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
    width: 500px;
    margin: auto;
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
  <div id="close_button">
     <img src="${path}/resources/img/img_searchbox/close_cross.png" alt="Close">
   </div>
  <div class="pop_content">
    <p>
     <img src="${path}/resources/img/img_searchbox/location.png" alt="location"> 지역
      </p>
  <div class="scrollMenu"></div>
     <button class="mappart">거제시</button>
     <button class="mappart">거창군</button>
     <button class="mappart">고성군</button>
     <button class="mappart">김해시</button>
     <button class="mappart">남해군</button>
     <button class="mappart">밀양시</button>
     <button class="mappart">사천시</button>
     <button class="mappart">산청군</button>
     <button class="mappart">양산시</button>
     <button class="mappart">의령군</button>
     <button class="mappart">진주시</button>
     <button class="mappart">창녕군</button>
     <button class="mappart">창원시</button>
     <button class="mappart">통영시</button>
     <button class="mappart">하동군</button>
     <button class="mappart">함안군</button>
     <button class="mappart">함양군</button>
     <button class="mappart">합천군</button>

    <p>
       <img src="${path}/resources/img/img_searchbox/category.png" alt="category"> 유형 선택
     </p>
  <div class="category">
     <button type="button" class="delbtn">
       <img src="${progType}/resources/img/img_type/미술.png" width="45"><br>미술<input type="checkbox" />
     </button>
            
     <button type="button" class="delbtn">
       <img src="${progType}/resources/img/img_type/요리.png" width="45"><br>요리<input type="checkbox" />
     </button>
     
     <button type="button" class="delbtn">
       <img src="${progType}/resources/img/img_type/과학.png" width="45"><br>과학<input type="checkbox" />
     </button>
     
     <button type="button" class="delbtn">
       <img src="${progType}/resources/img/img_type/체육.png" width="45"><br>체육<input type="checkbox" />
     </button>
     
     <button type="button" class="delbtn">
       <img src="${progType}/resources/img/img_type/역사.png" width="45"><br>역사<input type="checkbox" />
     </button>
     
     <button type="button" class="delbtn">
       <img src="${progType}/resources/img/img_type/생태.png" width="45"><br>생태<input type="checkbox" />
     </button>
     
    </div>
    <p>
       <img src="resources/img/img_type/date.png"> 날짜 선택
    </p>
       <input type="date" />
    </div>
    </div>
    
  <div class="title">
       <h2>${progNm}</h2> <!-- 값 넘어오면 ${progNm} 쓰기 -->
    </div>

<!-- 평범한 버튼 -->
    <button class="placehomepage" href = "${progUrl}">바로가기</button>
    
  <div class="place">
       <img src="${imgNm }" alt="">
    </div> 
      
  <div class="placeinfo">
      <a>일정 | </a> 
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
  <div id="map" style="width:480px;height:280px;"></div>

  <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e6f79d0b7c01aaf6bd4612381ea932e"></script>
  <script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
            level: 3, // 지도의 확대 레벨
            mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
        }; 

    // 지도를 생성한다 
    var map = new kakao.maps.Map(mapContainer, mapOption); 
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