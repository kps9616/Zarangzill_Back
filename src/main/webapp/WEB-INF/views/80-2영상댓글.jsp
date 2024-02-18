<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    
    
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
        영상 댓글
    </div>
 
    <div class="container"> 
        <div class="my-ch-bx">
            <ul>
                <li>
                    <div class="mych-thum" style="background-image:url(images/thum/thum01.jpg);">
                        <span class="sr-only">영상썸네일</span>
                    </div>
                    <div class="mych-bx">
                        <div class="mych-img">
                            <img src="${path}/images/thum/face02.jpg">
                            <span>TWICE</span>
                        </div>                        
                        <div class="mych-text">
                            완벽한 궁극의 아이돌 ✧트와이스✧ #TWICE #트와이스
                        </div>
                        <div class="comment-view">
                            <span uk-icon="icon:comment-arrow"></span>
                            <a href="${path}/25-2댓글.html">JIHYO The 1st Mini Album “ZONE” TWICE 트와이스</a> 
                        </div>
                    </div>                    
                </li>
                
                <li>
                    <em>
                        <a href="${path}/#none" class="c_red" uk-icon="icon: close"></a>
                    </em>
                    <div class="mych-thum filter-gray" style="background-image:url(images/thum/thum01.jpg);">
                        <div class="video-del"><img src="${path}/images/icon/del-video.png" alt="삭제된영상아이콘" width="30"></div>  
                        <span class="sr-only">영상썸네일</span>
                    </div>
                    <div class="mych-bx">
                        <div class="mych-img">
                            <img src="${path}/images/thum/face01.jpg">
                            <span>방탄소년단</span>
                        </div>                        
                        <div class="mych-text c_red">
                            영상이 삭제되었습니다.
                        </div>
                        <div class="comment-view">
                            <span uk-icon="icon:comment-arrow"></span>
                            <a href="${path}/25-2댓글.html">아무말</a> 
                        </div>
                    </div>                    
                </li>
                
            </ul>
        </div>

    </div>  
     
   
</body>

</html>