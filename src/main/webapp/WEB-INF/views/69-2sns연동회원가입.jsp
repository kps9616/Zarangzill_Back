<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
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
     <div class="top-bx bline">
        <a href="javascript:history.back();" class="top-left link-txt">취소</a>
        회원가입        
    </div>
    <div class="container pt20"> 
        <h3 class="mt20 tac">가입연동</h3>
        <p class="font12 tac">구글과 애플 ID중 연동 로그인할 서비스를 선택해 주세요.</p>
        <div class="login-btbx mt20">
            <button type="button"><img src="${path}/images/icon/google-g.png" alt="구글버튼" onclick="location='69-3휴대폰인증.html'"></button> 
            <button type="button"><img src="${path}/images/icon/apple.png" alt="애플" onclick="location='69-3휴대폰인증.html'"></button> 
        </div>
    </div>
</body>

</html>