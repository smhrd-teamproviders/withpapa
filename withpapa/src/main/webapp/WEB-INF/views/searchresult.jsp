<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<link rel = "stylesheet" href = "${path}/resources/css/searchresult.css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    div{
        display :flex;
        justify-content : center;
        align-items: center;
        flex-wrap:  wrap;
    }

    div img {
        width: 900px;
        height: 500px;
        border: 2px solid #fff;
        border-radius: 13px;
        box-shadow: 0px 4px 7px 0px ;
        cursor:  pointer;
        margin : 150px;
        transition:  400ms;
    }

    div img:hover{
        filter : grayscale(1);
        transform : scale(1.03)
    }    
</style>
</head>
<body>
	<!-- 검색 결과 화면 -->
	<div class="search">
        <input type="text" placeholder="어디로 놀러 가볼까요?">
        <a href="" class="modal-button">
            <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" alt="돋보기 이미지">
        </a>
        <div>
            <img src="" alt ="">
            <div class="dRjYpx">
            <div class="title"><div class="new-tag">신규</div>
            <h3 class="limited-text-lines-1">도자기 만들기</h3>
        </div>
           <br> <p class="description limited-text-lines-2">경상남도 거창군</p>
        </div>
            <img src="" alt ="">
            <div class="dRjYpx">
                <div class="title"><div class="new-tag">신규</div>
                <h3 class="limited-text-lines-1">치즈감자빵 만들기</h3>
            </div>
               <br> <p class="description limited-text-lines-2">경상남도 거창군</p>
            </div>
            <img src="" alt ="">
            <div class="dRjYpx">
                <div class="title"><div class="new-tag">신규</div>
                <h3 class="limited-text-lines-1">철판 아이스크림 만들기</h3>
            </div>
               <br> <p class="description limited-text-lines-2">경상남도 거창군</p>
            </div>
        </div>
        </div>


</body>
</html>