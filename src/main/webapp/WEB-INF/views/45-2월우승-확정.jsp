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
     
    <div class="container">
        <div class="tab-2th">
            <a href="${path}/45-1월우승-진행중.html" class="mleft on">월 우승</a><a href="${path}/48-2주우승-진행중" class="mright">주 우승</a>
        </div>

        <div class="data-nav">
            <a href="${path}/#" title="이전"><em uk-icon="icon: chevron-left; ratio: 1.2"></em></a>
            <h3>2023. 8월 </h3>
            <a href="${path}/#" title="다음"><em uk-icon="icon: chevron-right; ratio: 1.2"></em></a>
        </div>
        
        <div class="rank-nav">
            <ul>
                <li><a href="${path}/#" class="on">종합</a></li>
                <li><a href="${path}/#">귀여움</a></li>
                <li><a href="${path}/#">힙</a></li>
                <li><a href="${path}/#">개성</a></li>
            </ul>
        </div>

        <div class="thum-adv">
            <div class="rank-adv">                    
                <span class="rank-adv-icon">광고</span>
                <div class="rankimg"><a href="${path}/#none"><img src="${path}/images/thum/thum-cu.jpg"></a></div>
                <div class="rankinfo">
                    <div class="rankinfo-tit ellipsis2"><a href="${path}/#none">CU편의점 고인물 편 ♡♡♡편의점 알바이야기 연속 보기</a></div>
                    <div class="c_gray ellipsis">#편의점 #CU편의점 알바이야기 #CU편의점</div>
                    <div class="c_gray font11 mb5">2023.01.02</div>
                    <div class="rankinfo-name"><a href="${path}/#none">CU편의점</a></div>
                </div>           
           
            </div>
        </div>

        <div class="thum-list">
            <ul>
                <li>
                    <div class="rank-num"><strong>1.</strong>2,313 <span>/ 730명</span></div>
                    <div class="bigthum">
                        <div class="rank-badge">
                            <img src="${path}/images/icon/m-winner.png">
                        </div>
                        <img src="${path}/images/thum/thum04.jpg"  class="thum">
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
                    <div class="rank-num"><strong>2.</strong>2,013 <span>/ 630명</span></div>
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
                    <div class="rank-num"><strong>3.</strong>1,013 <span>/ 430명</span></div>
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
                    <div class="rank-num"><strong>4.</strong>913 <span>/ 330명</span></div>
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
               
            </ul>

        </div>
        
        
    </div>

    

    <!--하단메뉴-->
    <div class="full-bottom-bar">
        <div class="v_bottom_nav">                
            <ul>
                <li><a href="${path}/#" class="vsicon"><span uk-icon="icon: bottom01;"><i class="sr-only">숏폼</i></span></a></li>
                <li><a href="${path}/#" class="vsicon"><span uk-icon="icon: bottomOn02;"><i class="sr-only">우승예측</i></span></a></li>
                <li class="mcircle"><a href="${path}/#" class="vsicon"> <em uk-icon="icon: bottom03;"><i class="sr-only">촬영</i></em></a></li>
                <li><a href="${path}/#" class="vsicon"><span uk-icon="icon: bottom04;"><i class="sr-only">팬</i></span></a></li>
                <li><a href="${path}/#" class="vsicon"><span uk-icon="icon: bottom05;"><i class="sr-only">마이페이지</i></span></a></li>
            </ul>        
        </div>
        <div class="full-bar-bg"><span></span><span class="bg-transparent"></span><span></span></div>
    </div>
        
  
</body>

</html>