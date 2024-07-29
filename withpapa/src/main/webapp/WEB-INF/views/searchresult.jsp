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
<meta charset= "UTF-8" />
<link rel="stylesheet" href="/resources/css/style.css">
<link href="${path}/resources/css/searchresult.css" rel="stylesheet">
<head>
<style type="text/css">
#banner_online {
	height: 500px;
	width: 450px;
	border: 1px solid black;
	box-shadow: 3px 3px 7px 1px rgb(255, 253, 253);
	background-color: white;
	z-index: 100;
	margin: auto;
	display: none;
	top: 62%;
	left: 47%;
	transform: translate(-50%, -50%);
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
	width: 500px;
	margin: auto;
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


		<form action="search/searchresult" method="get">
		<div class="search">
			<input type="text" name="progNm" placeholder="어디로 놀러 가볼까요?">
			<!-- 돋보기 버튼 -->
			<a href="#" class="modal-button" id="openModalButton"> <img
				src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
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
			</div>
		</div>
	</form>
	
	
	<div class = "container">
	<c:forEach var="result" items="${result}">
		<!-- 장소 사진 -->
		<div class="place">
			<a href="programinfo?progId=${result.progId}"><img src="data:image/jpg;base64,${result.imgNm}" name="place1"></a>
			<!-- 카테고리 유형 -->
			<div class="search_container">
				<div class="categorytype">
					<img src="data:image/jpg;base64,${result.progType}">
				</div>
				<!-- 체험장소 이름 -->
				<div class="search_textContainer">
					<div>
						<h2>
							<a class = "title" href="programinfo?progId=${result.progId}"
								onclick="location.href=programinfo?progId=${result.progId}">${result.progNm}</a>
						</h2>
					</div>
					<!-- 체험지역 -->
					<div class="location">
						<a>${result.placeDistrict}</a>
					</div>
				</div>

			</div>
		</div>
	</c:forEach>
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



</body>
</html>