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
        
        <div class="login-bx">
            <h3>휴대폰 인증</h3> 
            <div class="hp-login mb10 mt10">
                <button type="button">인증번호 발송</button>
                <input class="uk-input" type="text" placeholder="휴대폰 번호" aria-label="Input">
                <p class="msgtag">인증번호를 발송 했습니다.</p>
            </div>
            
            <div class="pw-login">
                <span>-9:12</span>
                <input class="uk-input" type="text" placeholder="인증번호" aria-label="Input">
                <p class="c_red msgtag">인증번호가 틀렸습니다.</p>
            </div>
        </div>
    </div>
</body>

</html>