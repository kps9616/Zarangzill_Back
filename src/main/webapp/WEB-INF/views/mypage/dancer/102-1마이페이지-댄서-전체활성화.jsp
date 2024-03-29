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
<body class="bg">

     <!--탑-->
    <div class="top-bx bline">
        마이페이지               
    </div>

    <div class="container pt20">
        <div class="mypage">
            <div class="toggle-container">
                <span>일반</span>
                <label class="toggle-switch">
                    <input type="checkbox" id="toggle" checked>
                    <span class="slider"></span>
                </label>
                <span>댄서</span>
            </div>
        </div>


        <!--나의 배지-->
        <div class="my-badge">
            <div class="my-badge-bx">
                <div class="my-icon-img">
                    <img src="${path}/images/icon/my-channel.png">
                </div>
                <div class="my-badge-tit active">채널개설</div>
            </div>
            <div class="my-badge-bx">
                <div class="my-icon-img">
                    <img src="${path}/images/icon/my-movie.png">
                </div>
                <div class="my-badge-tit active">영상 등록</div>
            </div>
            <div class="my-badge-bx">
                <div class="my-icon-img">
                    <span>05</span>
                    <img src="${path}/images/icon/my-mov-num.png">
                </div>
                <div class="my-badge-tit active">5개 영상</div>
            </div>
            <div class="my-badge-bx">
                <div class="my-icon-img">
                    <span>10</span>
                    <img src="${path}/images/icon/my-mov-num-gray.png">
                </div>
                <div class="my-badge-tit active">10개 영상</div>
            </div>
        </div>
        <div class="my-badge">
            <div class="my-badge-bx">
                <div class="my-badge-img">
                    <img src="${path}/images/icon/top-100.png">
                </div>
                <div class="my-badge-tit active">TOP 100일</div>
            </div>
            <div class="my-badge-bx">
                <div class="my-badge-img">                    
                    <span>10</span>
                    <img src="${path}/images/icon/my-week.png">
                </div>
                <div class="my-badge-tit active">주 우승</div>
            </div>
            <div class="my-badge-bx">
                <div class="my-badge-img">                    
                    <span>02</span>
                    <img src="${path}/images/icon/my-month.png">
                </div>
                <div class="my-badge-tit active">월 우승</div>
            </div>
            <div class="my-badge-bx">
                <div class="my-badge-img">
                    <img src="${path}/images/icon/year-winner.png">
                </div>
                <div class="my-badge-tit active">왕중왕</div>
            </div>
        </div>

        <div class="my-link mt20 mb20">
        <a href="${path}/90-2내채널.html"> 내 채널<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
        <a href="${path}/102-2내영상.html"> 내 영상<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
        <a href="${path}/103-2우승상품.html"> 우승상품<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
        </div>
        
        <div class="my-link mb20">
        <a href="${path}/104-2즐겨찾는사운드.html"> 즐겨 찾는 사운드<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
        <a href="${path}/104-3내가올린사운드.html"> 내가 올린 사운드<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
        </div>

        <div class="my-link mt5">
        <a href="${path}/105-2제작자센터.html"> 제작자 센터<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
        <a href="${path}/106-2온라인문의.html"> 온라인 문의<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
        </div>


    </div>

<!--하단메뉴-->
<div class="full-bottom-bar">
    <div class="v_bottom_nav">                
        <ul>
            <li><a href="${path}/#" class="vsicon"><span uk-icon="icon: bottom01;"><i class="sr-only">숏폼</i></span></a></li>
            <li><a href="${path}/#" class="vsicon"><span uk-icon="icon: bottom02;"><i class="sr-only">우승예측</i></span></a></li>
            <li class="mcircle"><a href="${path}/#" class="vsicon"> <em uk-icon="icon: bottom03;"><i class="sr-only">촬영</i></em></a></li>
            <li><a href="${path}/#" class="vsicon"><span uk-icon="icon: bottom04;"><i class="sr-only">팬</i></span></a></li>
            <li><a href="${path}/#" class="vsicon"><span uk-icon="icon: bottomOn05;"><i class="sr-only">마이페이지</i></span></a></li>
        </ul>        
    </div>
    <div class="full-bar-bg"><span></span><span class="bg-transparent"></span><span></span></div>
</div>


        
           
    
<!--심사점수에 따른 그래프 백분율환산 적용 그리고 토글-->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            
            // 토글 버튼과 닫기 버튼의 클릭 이벤트 리스너 설정
            document.querySelector('#toggleBtn').addEventListener('click', function(e) {
                e.preventDefault();
                toggleScoreInfo();
            });

            document.querySelector('#closeBtn').addEventListener('click', function(e) {
                e.preventDefault();
                toggleScoreInfo();
            });

            // score-info 상자의 토글 함수
            function toggleScoreInfo() {
                const scoreInfo = document.querySelector('.score-info');

                if(scoreInfo.style.opacity === '1') {
                    scoreInfo.style.transition = 'transform 0.5s, opacity 0.5s, max-height 0.5s';
                    scoreInfo.style.transform = 'translateY(-100%)';
                    scoreInfo.style.opacity = '0';
                    scoreInfo.style.maxHeight = '0';
                    resetBarWidths();
                } else {
                    scoreInfo.style.transition = 'transform 0.5s, opacity 0.5s, max-height 0.5s';
                    scoreInfo.style.transform = 'translateY(0)';
                    scoreInfo.style.opacity = '1';
                    scoreInfo.style.maxHeight = '200px';
                    animateBars();
                }
            }

            // 모든 막대의 너비를 0으로 재설정하는 함수
            function resetBarWidths() {
                for (let i = 1; i <= 4; i++) {
                    let barElement = document.getElementById('scoreBar' + i);
                    if (barElement) {
                        barElement.style.width = '0%';
                    }
                }
            }

            // 막대 애니메이션을 활성화하는 함수
            function animateBars() {
                let totalScore = 0;
                let scores = document.querySelectorAll('.my-score > div[data-score]');
                scores.forEach(score => {
                    totalScore += parseInt(score.getAttribute('data-score'), 10);
                });

                let i = 1;
                scores.forEach(score => {
                    let percentage = (parseInt(score.getAttribute('data-score'), 10) / totalScore) * 100;
                    let barElement = document.getElementById('scoreBar' + i);
                    if (barElement) {
                        setTimeout(() => {
                            barElement.style.transition = 'width 0.8s ease-out';
                            barElement.style.width = percentage + '%';
                        }, 800 * i);
                    }
                    i++;
                });
            }

            // 초기 점수 계산 및 표시
            let totalScore = 0;
            let scores = document.querySelectorAll('.my-score > div[data-score]');
            scores.forEach(score => {
                totalScore += parseInt(score.getAttribute('data-score'), 10);
            });
            document.getElementById('totalScore').innerText = totalScore;

        });


    </script>
</body>

</html>