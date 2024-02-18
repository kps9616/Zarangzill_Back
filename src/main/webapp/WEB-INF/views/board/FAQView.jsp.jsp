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
     <div class="top-bx bline">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
       자주 묻는 질문        
    </div>
    <div class="container"> 
       <div class="bbs_view">
            <c:choose>
                <c:when test="${empty(faqInfo.updated_at)}">
                    <em>${faqInfo.created_at}</em>
                </c:when>
                <c:otherwise>
                    <em>${faqInfo.updated_at}</em>
                </c:otherwise>
            </c:choose>
            <span class="title">
                ${faqInfo.subject}
            </span>
           <p>
               ${faqInfo.description}
           </p>
        </div>
    </div>
</body>

</html>