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
	height: 350px;
	width: 475px;
	border: 1px solid black;
	box-shadow: 3px 3px 7px 1px grey;
	background-color: white;
	z-index: 9999;
	margin-left: 14%;
	margin-top: -12%;
	display: none;
	position: absolute;
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
	position: fixed;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	top: 0;
	left: 0;
	z-index: 99;
	display: none;
}

.delbtn {
	border: none;
	background-color: rgba(0, 0, 0, 0);
}

.indexicon{
			width:40px;
			text-align:center;
}
.indexicongroup{
			margin:
}
.indexicongroup span {
			display:block;
			font-size:13px;
			color:#282828;
}

</style>
</head>
<body>

	<div class="ducks">
            <img src="resources/img/KakaoTalk_20240613_193751220.png" alt="papaducks" width="100px">
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
		<button type="button" id="openPop" class="magnifer">
			<img
				src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
				width="30px">
		</button>
		</div>
		
		<div class='row my-3'>
        <div class = "col-12 col-md-6 d-flex justify-content-around pr-md-0 mb-3 pt-3">
         <div class = "text-center indexicongroup"> 
             <a href="" onfocus="blur()" class="" target="_self" data-vibrate="5">
                 <img src="resources/img/미술.png" border="0" alt="" class="indexicon">
                <span >미술</span>
             </a>
             </div>
             <div class = "text-center indexicongroup"> 
             <a href="" onfocus="blur()" class="" target="_self" data-vibrate="5">
                 <img src="resources/img/요리.png" border="0" alt="" class="indexicon">
                 <span >요리</span>
                 </a>
             </div>
             <div class = "text-center indexicongroup"> 
             <a href="" onfocus="blur()" class="" target="_self" data-vibrate="5">
                 <img src="resources/img/현미경3.png" border="0" alt="" class="indexicon">
                 <span >과학</span>
             </a>
             </div>
             <div class = "text-center indexicongroup">
             <a href="" onfocus="blur()" class="" target="_self" data-vibrate="5">
                 <img src="resources/img/운동.png" border="0" alt="" class="indexicon">
                 <span >운동</span>
             </a>
             </div>
             <div class = "text-center indexicongroup">
             <a href="" onfocus="blur()" class="" target="_self" data-vibrate="5">
                 <img src="resources/img/역사.png" border="0" alt="" class="indexicon">
                 <span >역사</span>
            
             </a>
             </div>
             <div class = "text-center indexicongroup">
             <a href="" onfocus="blur()" class="" target="_self" data-vibrate="5">
                 <img src="resources/img/생태.png" border="0" alt="" class="indexicon">
                 <span >생태</span>
             </a>
             </div>
        </div>
     </div>
	
		<div id="modal"></div>
        <div id="banner_online">
		<div id="close_button" style="cursor: pointer;">
			<img src="resources/img/close_cross.png">
		</div>
		<div class="pop_content">
			<p>
				<img src="resources/img/location.png"> 지역
			</p>
			
				<div class="scrollMenu"></div>
				<label>거제시<input type="checkbox" /></label>
				<label>거창군<input type="checkbox" /></label>
				<label>고성군<input type="checkbox" /></label>
				<label>김해시<input type="checkbox" /></label>
				<label>남해군<input type="checkbox" /></label>
				<label>밀양시<input type="checkbox" /></label>
				<label>사천시<input type="checkbox" /></label>
				<label>산청군<input type="checkbox" /></label>
				<label>양산시<input type="checkbox" /></label>
				<label>의령군<input type="checkbox" /></label>
				<label>진주시<input type="checkbox" /></label>
				<label>창녕군<input type="checkbox" /></label>
				<label>창원시<input type="checkbox" /></label>
				<label>통영시<input type="checkbox" /></label>
				<label>하동군<input type="checkbox" /></label>
				<label>함안군<input type="checkbox" /></label>
				<label>함양군<input type="checkbox" /></label>
				<label>합천군<input type="checkbox" /></label>
	
			<p>
				<img src="resources/img/category.png"> 유형 선택
			</P>
			<div class="category">

				<button type="button" class="delbtn">
					<img src="resources/img/free-icon-font-palette-3917248.png" width="45"><br>미술<input
						type="checkbox" />
				</button>
				<button type="button" class="delbtn">
					<img src="resources/img/free-icon-cooking-5507905.png" width="45"><br>요리<input
						type="checkbox" />
				</button>
				<button type="button" class="delbtn">
					<img src="resources/img/free-icon-microscope-883348.png" width="45"><br>과학<input
						type="checkbox" />
				</button>
				<button type="button" class="delbtn">
					<img src="resources/img/free-icon-sports-2553695.png" width="45"><br>운동<input
						type="checkbox" />
				</button>
				<button type="button" class="delbtn">
					<img src="resources/img/free-icon-sejong-the-great-5789257.png" width="45"><br>역사<input
						type="checkbox" />
				</button>
				<button type="button" class="delbtn">
					<img src="resources/img/free-icon-tree-2298405.png" width="45"><br>생태<input
						type="checkbox" />
				</button>

			</div>
			<p>
				<img src="resources/img/date.png"> 날짜 선택
			</p>
			<input type="date" />

		</div>
	</div>
		<br>

		
	
        
         <div class="center_map_area">
            <div id="center_map" class="map_area" style="width: 30rem; height: 26rem; transform: scale(1);">
                    <ul class="map">
                        <li class="area_box map_area01">
                        <!-- Image Map Generated by http://www.image-map.net/ -->
                        <img src = "resources/img//경상남도 지도 거창군1.png" usemap="#image-map">
    
                        <map name="image-map">
                        <area target="_blank" alt="거창군" title="거창군" href="https://www.geochang.go.kr/" coords="180,108,83,44" shape="rect">
                        </map>
              
                        <li class="area_box map_area02"><img src="resources/img//경상남도 합천군 색.png" alt="합천군"></li>
                        <li class="area_box map_area03"><img src="resources/img//경상남도 지도 창녕군.png" alt="창녕군"></li>
                        <li class="area_box map_area04"><img src="resources/img//경상남도 지도 밀양시.png" alt="밀양시"></li>
                        <li class="area_box map_area05"><img src="resources/img//경상남도 지도 양산시.png" alt="양산시"></li>
                        <li class="area_box map_area06"><img src="resources/img//경상남도 함양군 색.png" alt="함양군"></li>
                        <li class="area_box map_area07"><img src="resources/img//경상남도 지도 산청군 색.png" alt="산청군"></li>
                        <li class="area_box map_area08"><img src="resources/img//경상남도 지도 의령군.png" alt="의령군"></li>
                        <li class="area_box map_area09"><img src="resources/img//경상남도 지도 함안군.png" alt="함안군"></li>
                        <li class="area_box map_area10"><img src="resources/img//경상남도 지도 창원시1.png" alt="창원시"></li>
                        <li class="area_box map_area11"><img src="resources/img//경상남도 지도 김해시.png" alt="김해시"></li>
                        <li class="area_box map_area12"><img src="resources/img//경상남도 지도 하동군.png" alt="하동군"></li>
                        <li class="area_box map_area13"><img src="resources/img//경상남도 지도 진주시.png" alt="진주시"></li>
                        <li class="area_box map_area14"><img src="resources/img//경상남도 지도 사천시.png" alt="사천시"></li>
                        <li class="area_box map_area15"><img src="resources/img//경상남도 지도 고성군.png" alt="고성군"></li>
                        <li class="area_box map_area16"><img src="resources/img//경상남도 지도 남해군.png" alt="남해군"></li>
                        <li class="area_box map_area17"><img src="resources/img//경상남도 지도 통영시.png" alt="통영시"></li>
                        <li class="area_box map_area18"><img src="resources/img//경상남도 지도 거제시.png" alt="거제시"></li>
					
          </ul>
          </div>
          </div>
          
         
    <footer>
        <p style="text-align: center;">COPYRIGHT (C) 2024 WITHPAPA, ALL RIGHTS RESERVED</p>
    </footer>
    
    <script type="text/javascript">
		$(document).ready(function() {
			$("#openPop").click(function() {
				$("#banner_online").show();
			});

			$("#openModalPop").click(function() {
				$("#banner_online").fadeIn();
				$("#modal").fadeIn();
			});

			$("#close_button").click(function() {
				$("#banner_online").fadeOut();
				$("#modal").fadeOut();
			});
		});
	</script>
	


	
</body>
</html>