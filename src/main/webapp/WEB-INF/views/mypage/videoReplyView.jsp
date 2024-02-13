<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    
    
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
        영상 댓글
    </div>
 
    <div class="container"> 
        <div class="my-ch-bx">
            <ul>
                <c:forEach var="videoReplyInfo" items="${videoReplyList}">
                <c:choose>
                <c:when test="${videoReplyInfo.video_flag_use eq 'Y'}">
                    <li>
                        <div class="mych-thum" style="background-image:url(/upload/thum/${videoReplyInfo.video_thumbnail});">
                            <span class="sr-only">영상썸네일</span>
                        </div>
                        <div class="mych-bx">
                            <div class="mych-img">
                                <img src="/upload/thum/${videoReplyInfo.profile_image}">
                                <span>${videoReplyInfo.member_name}</span>
                            </div>
                            <div class="mych-text">
                                    ${videoReplyInfo.video_description}<span>${videoReplyInfo.video_tags}</span>
                            </div>
                            <div class="comment-view">
                                <span uk-icon="icon:comment-arrow"></span>
                                <a href="25-2댓글.html?reply_id=${videoReplyInfo.reply_id}">${videoReplyInfo.reply_description}</a>
                            </div>
                        </div>
                    </li>
                </c:when>
                    <c:otherwise>
                        <li>
                            <em>
                                <a href="#none" class="c_red" uk-icon="icon: close"></a>
                            </em>
                            <div class="mych-thum filter-gray" style="background-image:url(/upload/thum/thum01.jpg);">
                                <div class="video-del"><img src="/upload/icon/del-video.png" alt="삭제된영상아이콘" width="30"></div>
                                <span class="sr-only">영상썸네일</span>
                            </div>
                            <div class="mych-bx">
                                <div class="mych-img">
                                    <img src="/upload/thum/face01.jpg">
                                    <span>${videoReplyInfo.member_name}</span>
                                </div>
                                <div class="mych-text c_red">
                                    영상이 삭제되었습니다.
                                </div>
                                <div class="comment-view">
                                    <span uk-icon="icon:comment-arrow"></span>
                                    <a href="25-2댓글.html?reply_id=${videoReplyInfo.reply_id}">${videoReplyInfo.video_description}</a>
                                </div>
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