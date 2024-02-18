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
     <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        최근 본 영상
    </div>
    <div class="container"> 
        <div class="thum-list">
            <ul>
                <li>
                    <div class="bigthum">
                        <a href="${path}/107쇼츠.html"><img src="${path}/images/thum/thum01.jpg"  class="thum"></a>
                    </div>
                    <div class="list-tit ellipsis2">
                        홍대 댄스 여신 준비된 아이돌 데뷔 임박!<span> #홍대여신 #아이돌 연습생 #홍대아이돌들</span> 
                    </div>
                    <div class="list-name">
                        <a href="${path}/#none">
                            <img class="small-thum mr5" src="${path}/images/thum/face01.jpg">
                            Hong Dae
                        </a>
                    </div> 
                </li>
                <li>
                    <div class="bigthum">
                        <a href="${path}/107쇼츠.html"><img src="${path}/images/thum/thum02.jpg"  class="thum"></a>
                    </div>
                    <div class="list-tit ellipsis2">
                    준비된 아이돌 데뷔 임박 바로 보기!<span> #홍대여신 #아이돌 연습생 #홍대아이돌들</span> 
                    </div>
                    <div class="list-name">
                        <a href="${path}/#none">
                            <img class="small-thum mr5" src="${path}/images/thum/face02.jpg">
                            idol dance team
                        </a>
                    </div> 
                </li>
                <li>
                    <div class="bigthum">
                        <a href="${path}/107쇼츠.html"><img src="${path}/images/thum/thum01.jpg"  class="thum"></a>
                    </div>
                    <div class="list-tit ellipsis2">
                        홍대 댄스 여신 준비된 아이돌 바로 보기!<span> #홍대여신 #아이돌 연습생 #홍대아이돌들</span> 
                    </div>
                    <div class="list-name">
                        <a href="${path}/#none">
                            <img class="small-thum mr5" src="${path}/images/thum/face01.jpg">
                            dance team
                        </a>
                    </div> 
                </li>
                
                <li>
                    <div class="bigthum">
                        <div class="video-del w100"><img src="${path}/images/icon/del-video.png" alt="삭제된영상아이콘" width="60"></div> 
                        <img src="${path}/images/thum/thum02.jpg"  class="thum filter-gray">
                    </div>
                    <div class="list-tit ellipsis2">
                        <div class="c_red">삭제된 영상입니다.</div>
                    </div>
                    <div class="list-name">
                        <a href="${path}/#none">
                            <img class="small-thum mr5 img-grayscale" src="${path}/images/thum/face02.jpg">
                            dance team
                        </a>
                    </div> 
                </li>                     
               
            </ul>

        </div>
         

            

    </div> 
    
   
</body>

</html>