<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <link rel="stylesheet" type="text/css"  href="/resources/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="/resources/css/reset.css" >    
    <link rel="stylesheet" type="text/css"  href="/resources/css/video.css" >
    <link rel="stylesheet" type="text/css"  href="/resources/css/style.css" >

    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/uikit.js"></script>
    <script src="/resources/js/uikit-icons.js"></script>
    <script src="/resources/js/script.js"></script>

    <title>자랑질앱</title>
    <style>
      
    </style>
</head>
<body>
     <!--탑-->
     <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        즐겨찾기영상
    </div>
    <div class="container"> 
        <div class="thum-list">
            <ul>
                <c:forEach var="videoFavoriteInfo" items="${videoFavoriteList}">
                    <c:choose>
                        <c:when test="${videoFavoriteInfo.video_flag_use eq 'Y'}">
                            <li>
                                <div class="bigthum">
                                    <a href="/subShots?id=${videoFavoriteInfo.video_id}"><img src="/upload/thumb/${videoFavoriteInfo.video_thumbnail}"  class="thum"></a>
                                </div>
                                <div class="list-tit ellipsis2">
                                        ${videoFavoriteInfo.video_description}<span>${videoFavoriteInfo.video_tags}</span>
                                </div>
                                <div class="list-name">
                                    <a href="#none">
                                        <img class="small-thum mr5" src="/upload/thumb/${videoFavoriteInfo.profile_image}">
                                            ${videoFavoriteInfo.userNm}
                                    </a>
                                </div>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li>
                                <div class="bigthum">
                                    <div class="video-del-100"><img src="/upload/icon/del-video.png" alt="삭제된영상아이콘" width="50"></div>
                                    <img src="/upload/thumb/thum02.jpg"  class="thum filter-gray">
                                </div>
                                <div class="list-tit ellipsis2">
                                    <div class="c_red">삭제된 영상입니다.</div>
                                </div>
                                <div class="list-name">
                                    <a href="#none">
                                        <img class="small-thum mr5 img-grayscale" src="/upload/thumb/face02.jpg" >
                                        dance team
                                    </a>
                                </div>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </ul>
        </div>
    </div>
</body>
</html>