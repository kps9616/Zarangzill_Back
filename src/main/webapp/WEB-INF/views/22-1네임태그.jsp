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
    
    <script src="${path}/js/uikit.js"></script>
    <script src="${path}/js/uikit-icons.js"></script>

    <script src="${path}/js/jquery.min.js"></script>
    <title>자랑질앱</title>
    <style>
      
    </style>
</head>
<body>
    <div class="top-bx">
        <a href="${path}/main.html" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        검색
    </div>
    <div class="container">      

        <div class="top-search">
            <div class="uk-inline">
                <a class="uk-form-icon uk-form-icon-flip" href="${path}/#" uk-icon="icon: close"></a>
                <input class="uk-input" type="text" aria-label="Clickable icon" value="트와이스">
            </div>
        </div>

        <div class="chioce-bx">   
            <div class="radio-set">
                <input type="radio" id="b1" name="radio_b" value="▶ 영상" onclick="window.location.href='21-1검색결과_숏춤.html'">
                <label for="b1" class="m-frist wp100"><span>▶ 영상</span></label>
    
                <input type="radio" id="b2" name="radio_b" value="#해시태그" onclick="window.location.href='21-2검색결과_해시태그.html'">
                <label for="b2" class="wp100"><span>#해시태그</span></label>

                <input type="radio" id="b3" name="radio_b" value="@네임태그" checked>
                <label for="b3" class="wp100"><span>@네임태그</span></label>
            </div>
        </div>


       
        <div class="name_list">
            <ul>
                <li>
                    <img src="${path}/images/thum/grup01.jpg">
                    <a href="${path}/#none">#트와이스 <span>3,050,000</span><em uk-icon="chevron-right"></em></a>
                </li>
                <li>
                    <img src="${path}/images/thum/grup02.jpg">
                    <a href="${path}/#none">#트와이스 사나<span>50,000</span><em uk-icon="chevron-right"></em></a>
                </li>
                <li>
                    <img src="${path}/images/thum/grup03.jpg">
                    <a href="${path}/#none">#트와이스 나연<span>10,500</span><em uk-icon="chevron-right"></em></a>
                </li>
                <li>
                    <img src="${path}/images/thum/grup04.jpg">
                    <a href="${path}/#none">#트와이스 나연<span>10,500</span><em uk-icon="chevron-right"></em></a>
                </li>
            </ul>
        </div>
  
    </div>   
    
   
   
</body>

</html>