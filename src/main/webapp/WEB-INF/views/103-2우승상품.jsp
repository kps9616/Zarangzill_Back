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
     
        <div class="top-bx bline">
            <a href="${path}/javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
            우승상품      
        </div>
         <div class="container">
            <div class="my-product">
                <ul>
                    <li>
                        <div class="my-prod-gray">2023.04.04</div>
                        <div class="my-prod-img"><img src="${path}/images/thum/product01.jpg"></div>
                        <div class="my-prod-gray">2023 13번째 주 우승</div>
                        <div class="my-prod-tit ellipsis"><span>스타벅스</span>스타벅스 오늘도 달콤하게(ice)</div>
                    </li>
                    <li>
                        <div class="my-prod-gray">2023.011.05</div>
                        <div class="my-prod-img"><img src="${path}/images/thum/product02.jpg"></div>
                        <div class="my-prod-gray">2023.10월 우승</div>
                        <div class="my-prod-tit ellipsis"><span>이마트</span>신세계 상품권 10만원권</div>
                    </li>
                    
                </ul>
            </div>
        </div>

</body>

</html>