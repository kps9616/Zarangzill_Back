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
     
        <div class="top-bx bline">
            <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
            우승상품      
        </div>
         <div class="container">
            <div class="my-product">
                <c:choose>
                <c:when test="${winProductList.size() >0 }">
                <ul>
                    <c:forEach var="winProductInfo" items="${winProductList}">
                    <li>
                        <div class="my-prod-gray">${winProductInfo.created_at}</div>
                        <div class="my-prod-img"><img src="${path}${winProductInfo.thumbnail}"></div>
                        <div class="my-prod-gray">${winProductInfo.subject}</div>
                        <div class="my-prod-tit ellipsis">${winProductInfo.description}</div>
                    </li>
                    </c:forEach>
                </ul>
                </c:when>
                    <c:otherwise>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>

</body>

</html>