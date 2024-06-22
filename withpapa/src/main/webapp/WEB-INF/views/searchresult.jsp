<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<link rel = "stylesheet" href = "resources/css/searchresult.css">
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

#banner_online {
    height: 501px;
    width: 488px;
    border: 1px solid black;
    box-shadow: 3px 3px 7px 1px rgb(255, 253, 253);
    background-color: white;
    z-index: 100;
    margin: auto;
    display: none;
    position: absolute;
    top: 43%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 20px;
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
    cursor:pointer;
}
        
.p_bottom {
    margin-left: 30px;
}
        
#modal {
    position: fixed;
    width: 100%;
    height: 100%;
    background: rgb(255, 255, 255,0);
    top: -100px;
    left: 0;
    z-index: 99;
    display: none;
    margin: auto;
}
        
.modal-open{
	overflow:hidden;
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
    width: 554px;
    margin: auto;
    position:relative;
    left:30px;
}
</style>
</head>
<body>
	<!-- 검색 결과 화면 -->
   <div id="search">
        <input type="text" placeholder="어디로 놀러 가볼까요?">
    
        <!-- 돋보기 버튼 -->
    
        <a href="#" class="modal-button" id="openModalButton">
        <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" alt="돋보기 이미지">
     </a>
     </div>
    
	<!-- 돋보기 눌렀을 때 나오는 모달 창 -->
   <div id="modal"></div>
   <div id="banner_online">
   <div id="close_button" style="cursor: pointer;">
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
	

	<!-- 장소 사진 -->
   <div class = "place">
    <img src="data:image/jpg;base64,${result.imgNm}">
    <!-- 카테고리 유형 -->
   <div class = "categorytype">
       <img src="data:image/jpg;base64,${result.progType}">
    </div>
    <!-- 체험장소 이름 -->
   <div class="title">
    <h2>${result.progNm}fdaf</h2>
    </div>
    <!-- 체험지역 -->
   <div class = "location">
    <a>${result.placeDistrict}asfdaf</a>
    </div>
    <br>
    <img src="data:image/jpg;base64,${result.imgNm}">
    <br>
    <img src="data:image/jpg;base64,${result.imgNm}">
    <br>
    <img src="data:image/jpg;base64,${result.imgNm}">
    </div> 
  
  <!-- 카테고리 유형 -->
   <div class = "categorytype1">
       <img src="data:image/jpg;base64,${result.progType}">
    </div>
  <!-- 체험장소 이름 -->
   <div class="title1">
    <h2>${result.progNm}fdaf</h2>
    </div>
  <!-- 체험지역 -->
   <div class = "location1">
    <a>${result.placeDistrict}asfdaf</a>
    </div>
    
  <!-- 카테고리 유형 -->
   <div class = "categorytype2">
       <img src="data:image/jpg;base64,${result.progType}">
    </div>
  <!-- 체험장소 이름 -->
   <div class="title2">
    <h2>${result.progNm}fdaf</h2>
    </div>
  <!-- 체험지역 -->
   <div class = "location2">
    <a>${result.placeDistrict}asfdaf</a>
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

  <script src = "searchresult.js"></script>

</body>
</html>