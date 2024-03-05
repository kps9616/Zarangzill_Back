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
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/style.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/video.css" >
    <script src="${path}/resources/js/uikit.js"></script>
    <script src="${path}/resources/js/uikit-icons.js"></script>

    <script src="${path}/resources/js/jquery.min.js"></script>
    <title>자랑질</title>
    
</head>
<body>
    <div class="top-bx bline">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        내 채널  
        <a href="${path}/channel/createChennelView" class="top-right pt5 c_blue">+ 채널 만들기</a>
    </div>
    <div class="container">
        <div class="mych-list mt20">
            <ul>
                <c:forEach var="usrChannelInfo" items="${usrChannelList}">
                <c:choose>
                <c:when test="${usrChannelInfo.channel_type eq 's' and usrChannelInfo.restriction eq 'N'}">
                    <li>
                        <span class="my-cog" uk-icon="cog"></span>
                        <div class="my-img"><img src="${path}${usrChannelInfo.profile_image}"></div>
                        <a href="${path}/91-2채널.html?channel_id=${usrChannelInfo.channel_id}" class="mych-tit ellipsis">
                            ${usrChannelInfo.channel_name}<em>my</em>
                            <span>${usrChannelInfo.channel_description}</span>
                        </a>
                        <div class="mych-num">${usrChannelInfo.channel_member_cnt}명</div>
                    </li>
                </c:when>
                <c:when test="${usrChannelInfo.channel_type eq 's' and usrChannelInfo.restriction eq 'Y'}">
                    <li>
                        <span class="my-cog" uk-icon="cog"></span>
                        <div class="my-img"><img src="${path}${usrChannelInfo.profile_image}"></div>
                        <a href="${path}/91-2채널.html?channel_id=${usrChannelInfo.channel_id}" class="mych-tit ellipsis">
                                ${usrChannelInfo.channel_name}<em>my</em>
                            <span>${usrChannelInfo.channel_description}</span>
                        </a>
                        <div class="mych-num">${usrChannelInfo.channel_member_cnt}명</div>
                    </li>
                </c:when>
                    <c:otherwise>
                        <li>
                            <div class="my-img"><img src="${path}${usrChannelInfo.profile_image}"></div>
                            <a href="${path}/91-2채널.html?channel_id=${usrChannelInfo.channel_id}" class="mych-tit ellipsis">
                                ${usrChannelInfo.channel_name}
                                <span>${usrChannelInfo.channel_description}</span>
                            </a>
                            <div class="mych-num">${usrChannelInfo.channel_member_cnt}명</div>
                        </li>
                    </c:otherwise>
                </c:choose>
                </c:forEach>

            </ul>
        </div>

    </div> <!--//container-->  
    
   


</body>
</html>