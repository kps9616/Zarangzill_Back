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
    <link rel="stylesheet" type="text/css"  href="${path}/css/style.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/video.css" >
    <script src="${path}/js/uikit.js"></script>
    <script src="${path}/js/uikit-icons.js"></script>

    <script src="${path}/js/jquery.min.js"></script>
    <title>자랑질앱</title>
    <style>
        /*기본태그css*/
        
    </style>
</head>
<body>
    <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        검색            
    </div>
    <div class="container">     

        <div class="top-search">
            <div class="uk-inline">
                <a class="uk-form-icon uk-form-icon-flip" href="${path}/21-1검색결과_숏춤.html" uk-icon="icon: search"></a>
                <input class="uk-input" type="text" aria-label="Clickable icon">
            </div>
        </div>

        <div class="chioce-bx">
            <div class="font14">많이 본 영상</div>
            <div class="radio-set">
                <input type="radio" id="a1" name="radio_a" value="남" checked>
                <label for="a1" class="m-frist wp40"><span>남</span></label>
    
                <input type="radio" id="a2" name="radio_a" value="여">
                <label for="a2" class="wp40"><span>여</span></label>
            </div>
            <div class="font16"> × </div>
            <div class="radio-set">
                <input type="radio" id="b1" name="radio_b" value="10대" checked>
                <label for="b1" class="m-frist"><span>10대</span></label>
    
                <input type="radio" id="b2" name="radio_b" value="20대">
                <label for="b2"><span>20대</span></label>

                <input type="radio" id="b3" name="radio_b" value="30대 이상">
                <label for="b3"><span>30대 이상</span></label>
            </div>
        </div>

        <div class="thum-list">
            <ul>
                <li>
                    <div class="bigthum">
                        <img src="${path}/images/thum/thum01.jpg"  class="thum">
                    </div>
                    <div class="list-tit ellipsis2">
                        홍대 댄스 여신 준비된 아이돌 데뷔 임박 바로 보기!<span> #홍대여신 #아이돌 연습생 #홍대아이돌들</span> 
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
                        <img src="${path}/images/thum/thum02.jpg"  class="thum">
                    </div>
                    <div class="list-tit ellipsis2">
                        홍대 댄스 여신 준비된 아이돌 데뷔 임박 바로 보기!<span> #홍대여신 #아이돌 연습생 #홍대아이돌들</span> 
                    </div>
                    <div class="list-name">
                        <a href="${path}/#none">
                            <img class="small-thum mr5" src="${path}/images/thum/face02.jpg">
                            Hong Dae
                        </a>
                    </div> 
                </li>
                <li>
                    <div class="bigthum">
                        <img src="${path}/images/thum/thum01.jpg"  class="thum">
                    </div>
                    <div class="list-tit ellipsis2">
                        홍대 댄스 여신 준비된 아이돌 데뷔 임박 바로 보기!<span> #홍대여신 #아이돌 연습생 #홍대아이돌들</span> 
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
                        <img src="${path}/images/thum/thum02.jpg"  class="thum">
                    </div>
                    <div class="list-tit ellipsis2">
                        홍대 댄스 여신 준비된 아이돌 데뷔 임박 바로 보기!<span> #홍대여신 #아이돌 연습생 #홍대아이돌들</span> 
                    </div>
                    <div class="list-name">
                        <a href="${path}/#none">
                            <img class="small-thum mr5" src="${path}/images/thum/face02.jpg"  class="thum">
                            Hong Dae
                        </a>
                    </div> 
                </li>
               
            </ul>

        </div>
     

    </div>   
    
    
</body>

</html>