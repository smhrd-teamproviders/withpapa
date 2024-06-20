<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<link rel = "stylesheet" href = "${path}/resources/css/searchresult.css">
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
        height: 500px;
        width: 450px;
        border: 1px solid black;
        box-shadow: 3px 3px 7px 1px rgb(255, 253, 253);
        background-color: white;
        z-index: 9999;
        margin: auto;
        display: none;
        position: relative;
        top: 253px;
        left: 211px;
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
        }
        
        .p_bottom {
            margin-left: 30px;
        }
        
        #modal {
            position: relative;
            width: 100%;
            height: 100%;
            background: rgb(255, 255, 255);
            top: -100px;
            left: 0;
            z-index: 99;
            display: none;
            margin: auto;
        }
        
        .delbtn {
            border: none;
            background-color: rgba(0, 0, 0, 0);
        }
        
        #search{
            display :flex;
            width: 500px;
            margin: auto;
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

    <div id="modal"></div>
<div id="banner_online">
    <div id="close_button" style="cursor: pointer;">
        <img src="${path}/resources/img/close_cross.png" alt="Close">
    </div>
    <div class="pop_content">
        <p>
            <img src="${path}/resources/img/location.png" alt="location"> 지역
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
        <!-- Add other checkboxes here -->
        <p>
            <img src="${path}/resources/img/category.png" alt="category"> 유형 선택
        </p>
        <div class="category">
            <button type="button" class="delbtn">
                <img src="${path}/resources/img/free-icon-font-palette-3917248.png" width="45" alt="미술"><br>미술<input type="checkbox" />
            </button>
            <!-- Add other buttons here -->
        </button>
        <button type="button" class="delbtn">
            <img src="${path}/resources/img/요리.png" width="45"><br>요리<input
                type="checkbox" />
        </button>
        <button type="button" class="delbtn">
            <img src="${path}/resources/img/현미경3.png" width="45"><br>과학<input
                type="checkbox" />
        </button>
        <button type="button" class="delbtn">
            <img src="${path}/resources/img/운동.png" width="45"><br>운동<input
                type="checkbox" />
        </button>
        <button type="button" class="delbtn">
            <img src="${path}/resources/img/역사.png" width="45"><br>역사<input
                type="checkbox" />
        </button>
        <button type="button" class="delbtn">
            <img src="${path}/resources/img/생태.png" width="45"><br>생태<input
                type="checkbox" />
        </button>

    </div>
        </div>
        <p>
            <img src="${path}/resources/img/date.png" alt="date"> 날짜 선택
        </p>
        <input type="date" />
    </div>
</div>

<div class = "place">
    <img src="" alt ="">
    <br>
    <img src="" alt ="">
    <br>
    <img src="" alt ="">
    <br>
    <img src="" alt ="">
  </div> 

  <div class="title">
    <h2>도자기 만들기</h2>
    </div>

  <div class = "location">
    <a>경상남도 거창군</a>
  </div>



<script type="text/javascript">
    $(document).ready(function() {
        $("#openModalButton").click(function(event) {
            event.preventDefault(); // Prevent the default link behavior
            $("#banner_online").fadeIn();
            $("#modal").fadeIn();

            // Execute your custom function
            myCustomFunction();
        });

        $("#close_button").click(function() {
            $("#banner_online").fadeOut();
            $("#modal").fadeOut();
        });
    });

</script>  

</body>
</html>

</body>
</html>