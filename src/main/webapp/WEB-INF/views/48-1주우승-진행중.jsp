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
            <a href="${path}/45-1월우승-진행중.html" class="mleft">월 우승</a><a href="${path}/48-2주우승-진행중" class="mright on">주 우승</a>
        </div>

        <div class="data-nav">
            <a href="${path}/#" title="이전"><em uk-icon="icon: chevron-left; ratio: 1.2"></em></a>
            <h3>2023. 8월 <span>(2023.07.30 ~ 2023.08.05)</span></h3>
            <a href="${path}/#" title="다음" class="nav-disable"><em uk-icon="icon: chevron-right; ratio: 1.2"></em></a>
        </div>

  
        <div class="top-search mt10">
            <div class="uk-inline">
                <a class="uk-form-icon uk-form-icon-flip" href="${path}/#" uk-icon="icon: search"></a>
                <input class="uk-input" type="text" aria-label="Clickable icon">
            </div>
        </div>
        

        <div class="all-rank-list">
            <div class="all-rank-tit">
                <span class="all-rank-no">순위</span>
                <span>점수</span>
                <span>우찜</span>
            </div>

            <ul class="mt5">
                <li class="rank-adv">
                    
                        <span class="rank-adv-icon">광고</span>
                        <div class="rankimg"><a href="${path}/#none"><img src="${path}/images/thum/thum-cu.jpg"></a></div>
                        <div class="rankinfo">
                            <div class="rankinfo-tit ellipsis2"><a href="${path}/#none">CU편의점 고인물 편 ♡♡♡편의점 알바이야기 연속 보기</a></div>
                            <div class="c_gray ellipsis">#편의점 #CU편의점 알바이야기 #CU편의점</div>
                            <div class="c_gray font11 mb5">2023.01.02</div>
                            <div class="rankinfo-name"><a href="${path}/#none">CU편의점</a></div>
                        </div>
                        
                   
                </li>
                <li>
                        <div class="rankno tac">1</div>
                        <div class="rankimg"><a href="${path}/#none"><img src="${path}/images/thum/thum01.jpg"></a></div>
                        <div class="rankinfo">
                            <div class="rankinfo-tit ellipsis2"><a href="${path}/#none">완벽한 아이돌 압구정동 아이돌 제의 뉴진스제의 뉴진스제의 뉴진스</a></div>
                            <div class="c_gray ellipsis">#뉴진스돌 #아이돌 #압구정 아이돌 #뉴진스돌 #아이돌 #압구정 아이돌</div>
                            <div class="c_gray font11 mb5">2023.01.02</div>
                            <div class="rankinfo-name"><a href="${path}/#none">Newjeans</a></div>
                        </div>
                        <div class="c_gray wp60 tac font12">2485</div>
                        <div class="c_gray wp60 tac font12">72</div>
                    </a>
                </li>
                <li>
                        <div class="rankno wp40 tac">2</div>
                        <div class="rankimg"><a href="${path}/#none"><img src="${path}/images/thum/thum02.jpg"></a></div>
                        <div class="rankinfo">
                            <div class="rankinfo-tit ellipsis2"><a href="${path}/#none">완벽한 아이돌 압구정동 아이돌 제의 뉴진스제의 뉴진스제의 뉴진스</a></div>
                            <div class="c_gray ellipsis">#뉴진스돌 #아이돌 #압구정 아이돌 #뉴진스돌 #아이돌 #압구정 아이돌</div>
                            <div class="c_gray font11 mb5">2023.01.02</div>
                            <div class="rankinfo-name"><a href="${path}/#none">Newjeans</a></div>
                        </div>
                        <div class="c_gray wp60 tac font12">2485</div>
                        <div class="c_gray wp60 tac font12">72</div>
                   
                </li>
                <li>
                        <div class="rankno wp40 tac">3</div>
                        <div class="rankimg"><a href="${path}/#none"><img src="${path}/images/thum/thum04.jpg"></a></div>
                        <div class="rankinfo">
                            <div class="rankinfo-tit ellipsis2"><a href="${path}/#none">완벽한 아이돌 압구정동 아이돌 제의 뉴진스제의 뉴진스제의 뉴진스</a></div>
                            <div class="c_gray ellipsis">#뉴진스돌 #아이돌 #압구정 아이돌 #뉴진스돌 #아이돌 #압구정 아이돌</div>
                            <div class="c_gray font11 mb5">2023.01.02</div>
                            <div class="rankinfo-name"><a href="${path}/#none">Newjeans</a></div>
                        </div>
                        <div class="c_gray wp60 tac font12">2485</div>
                        <div class="c_gray wp60 tac font12">72</div>
                    
                </li>
                <li>
                        <div class="rankno wp40 tac">4</div>
                        <div class="rankimg"><a href="${path}/#none"><img src="${path}/images/thum/thum03.jpg"></a></div>
                        <div class="rankinfo">
                            <div class="rankinfo-tit ellipsis2"><a href="${path}/#none">완벽한 아이돌 압구정동 아이돌 제의 뉴진스제의 뉴진스제의 뉴진스</a></div>
                            <div class="c_gray ellipsis">#뉴진스돌 #아이돌 #압구정 아이돌 #뉴진스돌 #아이돌 #압구정 아이돌</div>
                            <div class="c_gray font11 mb5">2023.01.02</div>
                            <div class="rankinfo-name"><a href="${path}/#none">Newjeans</a></div>
                        </div>
                        <div class="c_gray wp60 tac font12">2485</div>
                        <div class="c_gray wp60 tac font12">72</div>
                    
                </li>
            </ul>
        </div>

        <!--새로고침아이콘-->
        <div class="refresh-icon">
            <a href="${path}/#none" ><span uk-icon="icon: refresh;ratio: 1.3"></span></a>
        </div>
    </div>

    

    <!--하단메뉴
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
        -->
  
</body>

</html>