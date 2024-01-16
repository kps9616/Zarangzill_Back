<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    
    
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
        팬 댓글
    </div>
 
    <div class="container"> 
        <div class="my-ch-bx">
            <ul>
                <li>
                   
                    <div class="mych-bx">
                        <div class="mych-img">
                            <img src="${path}/resources/images/thum/face02.jpg">
                            <span>TWICE</span>
                        </div>                        
                        <div class="mych-text">
                            완벽한 궁극의 아이돌 ✧트와이스✧ #TWICE #트와이스
                        </div>
                        <div class="comment-view">
                            <span uk-icon="icon:comment-arrow"></span>
                            <a href="41-3팬게시물.html">JIHYO The 1st Mini Album “ZONE” TWICE 트와이스</a> 
                        </div>
                    </div>                    
                </li>
                
                <li>
                    <em>
                        <a href="#none" class="c_red" uk-icon="icon: close"></a>
                    </em>
                   
                    <div class="mych-bx">
                        <div class="mych-img">
                            <img src="${path}/resources/images/thum/face01.jpg">
                            <span>방탄소년단</span>
                        </div>                        
                        <div class="mych-text c_red">
                            게시물이 삭제되었습니다.
                        </div>
                        <div class="comment-view">
                            <span uk-icon="icon:comment-arrow"></span>
                            <a href="41-3팬게시물.html">아무말</a> 
                        </div>
                    </div>                    
                </li>
                
            </ul>
        </div>

    </div>  
     
   
</body>

</html>