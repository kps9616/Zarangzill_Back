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
</head>
<body>
     
        <div class="top-bx">
            <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
            내영상      
        </div>
         <div class="container">
            <div class="ea-sort">
                <div class="ea-left">영상 : 2개</div>
                <div class="sort-right">
                    <label><input class="uk-checkbox" type="checkbox">월 우승</label>
                    <label><input class="uk-checkbox" type="checkbox"> 주 우승</label>
                </div>
            </div>
            <div class="mych-mov">
                <ul>
                <c:choose>
                <c:when test="${myVideoList.size() >0 }">
                    <li>
                        <div class="mych-mov-img">
                            <a href="${path}/107쇼츠.html"><img src="${path}/images/thum/thum04.jpg"/></a>
                        </div>

                        <div class="mych-mov-info">
                            <a href="${path}/94-2영상관리.html">
                                <div class="mych-info-tit">
                                    완벽한 궁극의 아이돌 ✧트와이스✧<span> #TWICE #트와이스</span>
                                </div>
                                <div class="mych-info-badge b_blue">월 우승 2023.07</div>
                                <div class="mych-view-info">
                                    <p><span>뷰</span>14,322</p>
                                    <p><span>심사</span>830 / 55명(27위)</p>
                                    <p><span uk-icon="icon: cog"></p>
                                </div>
                            </a>
                        </div>
                    </li>
                </c:when>
                    <c:otherwise>
                        <li>
                            <div class="mych-mov-img">
                                <a href="${path}/107쇼츠.html"><img src="${path}/images/thum/thum01.jpg"></a>
                            </div>
                            <div class="mych-mov-info">
                                <a href="${path}/94-2영상관리.html">
                                    <div class="mych-info-tit">
                                        완벽한 궁극의 아이돌 ✧트와이스✧<span> #TWICE #트와이스</span>
                                    </div>
                                    <div class="mych-info-badge b_green">주 우승 2023.07</div>
                                    <div class="mych-view-info">
                                        <p><span uk-icon="icon: ban;" class="c_red"></span>신고로 제한된 영상</p>
                                        <p><span>뷰</span>14,322</p>
                                        <p><span>심사</span>830 / 55명(27위)</p>
                                        <p><span>즐겨찾기</span>236</p>
                                        <p><span>우승예측</span>214</p>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </c:otherwise>
                </c:choose>


                </ul>
            </div>
        </div>

</body>

</html>