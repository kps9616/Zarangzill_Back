<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/reset.css" >    
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/video.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/style.css" >

    <script src="${path}/resources/js/jquery.min.js"></script>
    <script src="${path}/resources/js/uikit.js"></script>
    <script src="${path}/resources/js/uikit-icons.js"></script>
    <script src="${path}/resources/js/script.js"></script>

    <title>자랑질앱</title>
    <style>
      
    </style>
</head>
<body>
     <!--탑-->
     <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
      제작자 센터
        
    </div>
    <div class="container"> 
        <ul class="bbs_list">
            <li>                                
                <a href="105-3제작자센터-view.html" class="tit-link">
                    영상 촬영
                </a>
                <span uk-icon="icon: chevron-right;"></span>
            </li>
            <li>                
                <a href="105-3제작자센터-view.html"  class="tit-link">                    
                    음악을 선택해서 촬영
                </a>
                <span uk-icon="icon: chevron-right;"></span>
            </li>            
        </ul>
        <!--데이터  없을시-->
        <div class="nonedb"><span uk-icon="icon: warning"></span><br>내용이 없습니다.</div>

    </div>   
    
    
   
</body>

</html>