<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" type="text/css"  href="${path}/css/reset.css?20230921" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/video.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/style.css" >
  
    
    <script src="${path}/js/jquery.min.js"></script>
    <script src="${path}/js/uikit.js"></script>
    <script src="${path}/js/uikit-icons.js"></script>
    <script src="${path}/js/script.js"></script>

    <title>비디오 레이아웃</title>
</head>

<body style="background-color: #151515;">
    <div class="top-abs-back">
        <a href="${path}/javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
    </div>
    <div class="testimg">
        <img src="${path}/images/thum/thum-cu.jpg" >
     </div>
    <div class="v_contents" style="bottom: 5vh;">
        <ul>
            <li class="v_con_info">
                <div class="v_img"><a href="${path}/#none"><img src="${path}/images/thum/culogo.jpg"></a></div>
                <div class="v_grup"><a href="${path}/#none">CU편의점</a></div>
            </li>
            <li class="v_con_tit">CU편의점 고인물 편 ♡♡♡편의점 알바 이야기 연속 보기 <span>#편의점 CU #편의점알바이야기</span> </li>
        </ul>
    </div>
    

   
</body>

</html>