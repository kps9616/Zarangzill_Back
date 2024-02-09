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
<body class="bg">
     <!--탑-->
     <div class="top-bx">
        <a href="${path}/javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        팬 게시글
    </div>
 
    <!--container-->
    <div class="container">
        <div class="ch-bbs-bx">
            <ul>
                <c:forEach var="fanBoardInfo" items="${fanBoardList}">
                <c:choose>
                <c:when test="${fanBoardInfo.board_flag_use eq 'Y'}">
                    <li class="ch-bbs-list align-img-top white-gradation">
                        <div class="white-gradation-overlay"></div>
                        <div class="chbbslist-img">
                            <img src="${path}/images/thum/${fanBoardInfo.channel_profile_image}">
                        </div>
                        <div class="chbbslist-bx">
                            <div class="chbbslist-name">
                                ${fanBoardInfo.channel_name}<span>${fanBoardInfo.date_diff}일 전</span>

                            </div>
                            <div class="chbbslist-text">
                                <a href="/board/fanBoardView?board_id=${fanBoardInfo.board_id}&channel_id=${fanBoardInfo.channel_id}">
                                    ${fanBoardInfo.board_description}
                                </a>
                            </div>
                        </div>

                    </li>
                </c:when>
                    <c:otherwise>
                    </c:otherwise>
                </c:choose>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!--container end-->
     
   
</body>

</html>