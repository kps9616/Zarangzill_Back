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
</head>
<body>
     
        <div class="top-bx">
            <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
            내영상      
        </div>
         <div class="container">
            <div class="ea-sort">
                <div class="ea-left">영상 : ${myVideoList.size()}개</div>
                <div class="sort-right">
                    <c:choose>
                    <c:when test="${win_type eq 'M' }">
                        <label><input class="uk-checkbox" type="checkbox" checked="checked"  onclick="window.location.href='/video/myVideoListView'">월 우승</label>
                        <label><input class="uk-checkbox" type="checkbox" onclick="window.location.href='/video/myVideoListView?win_type=W'"> 주 우승</label>
                    </c:when>
                    <c:when test="${win_type eq 'W' }">
                        <label><input class="uk-checkbox" type="checkbox" onclick="window.location.href='/video/myVideoListView?win_type=W'">월 우승</label>
                        <label><input class="uk-checkbox" type="checkbox" checked="checked"  onclick="window.location.href='/video/myVideoListView'"> 주 우승</label>
                    </c:when>
                        <c:otherwise>
                            <label><input class="uk-checkbox" type="checkbox"  onclick="window.location.href='/video/myVideoListView?win_type=M'">월 우승</label>
                            <label><input class="uk-checkbox" type="checkbox" onclick="window.location.href='/video/myVideoListView?win_type=W'"> 주 우승</label>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            <div class="mych-mov">
                <ul>
                <c:choose>
                <c:when test="${myVideoList.size() >0 }">
                    <c:forEach var="myVideoInfo" items="${myVideoList}">
                        <li>
                            <div class="mych-mov-img">
                                <a href="${path}/subShots?id=${myVideoInfo.video_id}"><img src="${path}${myVideoInfo.video_thumbnail}"/></a>
                            </div>

                            <div class="mych-mov-info">
                                <a href="${path}/94-2영상관리.html">
                                    <div class="mych-info-tit">
                                        ${myVideoInfo.video_description}<span>${myVideoInfo.video_tags}</span>
                                    </div>
                                    <div class="mych-info-badge b_blue">${myVideoInfo.win_date}</div>
                                    <div class="mych-view-info">
                                        <p><span>뷰</span>${myVideoInfo.view_cnt}</p>
                                        <p><span>심사</span>${myVideoInfo.total_score_1 + myVideoInfo.total_score_2 + myVideoInfo.total_score_3} / ${myVideoInfo.judge_cnt}명(27위)</p>
                                        <p><span uk-icon="icon: cog"></p>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </c:forEach>
                </c:when>
                    <c:otherwise>
                    </c:otherwise>
                </c:choose>


                </ul>
            </div>
        </div>

</body>

</html>