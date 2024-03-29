<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <link rel="stylesheet" type="text/css"  href="${path}/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/reset.css" >    
    <link rel="stylesheet" type="text/css"  href="${path}/css/video.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/style.css" >

    <script src="${path}/js/jquery.min.js"></script>
    <script src="${path}/js/uikit.js"></script>
    <script src="${path}/js/uikit-icons.js"></script>
    <script src="${path}/js/script.js"></script>

    <title>자랑질앱</title>
    <style>
      
    </style>
</head>
<body>
     <!--탑-->
     <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
       공지사항
        
    </div>
    <div class="container"> 
        <ul class="bbs_list">
            <li>                                
                <a href="${path}/83-2공지사항-view.html" class="tit_link white-gradation">
                    <div class="white-gradation-overlay"></div>
                    <em>2023.10.12  10:00</em>
                    긴급 서버 점검이 2023년10월 12일 02:00 ~ 06:00 4시간 동안 이루어집니다. 사용자의 폭발적 증가로 인한 대규모 서버 증설과 최적화 작업이 이루어집니다. 
                    점검 시간동안 접속이 불가능하니 양해 부탁드립니다.
                                   
                </a>
                <span uk-icon="icon: chevron-right;"></span>
            </li>
            <li>                
                <a href="${path}/83-2공지사항-view.html"  class="tit_link white-gradation">
                    <div class="white-gradation-overlay"></div>
                    <em>2023.09  10:00</em>
                    사용자의 폭발적 증가로 인한 대규모 서버 증설과 최적화 작업이 이루어집니다. 
                     내용이 길어지면 클릭 후 전체 내용을 확인할 수 있는 페이지로 이동합니다
                </a>
                <span uk-icon="icon: chevron-right;"></span>
            </li>            
        </ul>
        <!--데이터  없을시-->
        <div class="nonedb"><span uk-icon="icon: warning"></span><br>공지사항이 없습니다.</div>

    </div>   
    
    
   
</body>

</html>