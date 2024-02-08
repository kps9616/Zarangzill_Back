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
    <link rel="stylesheet" type="text/css"  href="${path}/css/style.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/video.css" >
    <script src="${path}/js/uikit.js"></script>
    <script src="${path}/js/uikit-icons.js"></script>

    <script src="${path}/js/jquery.min.js"></script>
    <title>자랑질</title>
    
</head>
<body>
    <div class="top-bx bline">
        <a href="${path}/javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        내 채널  
        <a href="${path}/90-3채널만들기.html" class="top-right pt5 c_blue">+ 채널 만들기</a>  
    </div>
    <div class="container">
        <div class="mych-list mt20">
            <ul>
               
                <li>                    
                   <span class="my-cog" uk-icon="cog"></span>
                    <div class="my-img"><img src="${path}/images/thum/grup01.jpg"></div>                   
                        <a href="${path}/91-2채널.html" class="mych-tit ellipsis">                            
                            myteam<em>my</em>
                            <span>나의 공식댄스채널</span>
                        </a>
                    <div class="mych-num">1명</div>
                </li>
               
                <li>                    
                    <span class="my-cog" uk-icon="cog"></span>
                    <div class="my-img"><img src="${path}/images/thum/grup02.jpg"></div>                   
                        <a href="${path}/91-2채널.html" class="mych-tit ellipsis">
                            dancer-top10
                            <span>채널설명자리</span>
                        </a>
                    <div class="mych-num">4명<span uk-icon="icon: ban;" class="c_red pl5"></span></div>
                </li>
                <li> 
                    <div class="my-img"><img src="${path}/images/thum/grup03.jpg"></div>                   
                        <a href="${path}/91-2채널.html" class="mych-tit ellipsis">
                            ourteam
                            <span>우리 공식댄스채널</span>
                        </a>
                    <div class="mych-num">10명</div>
                </li>
            </ul>
        </div>

    </div> <!--//container-->  
    
   


</body>
</html>