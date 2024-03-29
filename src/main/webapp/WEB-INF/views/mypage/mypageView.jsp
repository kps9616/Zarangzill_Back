<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    
    <link rel="stylesheet" type="text/css"  href="/resources/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="/resources/css/reset.css" >
    <link rel="stylesheet" type="text/css"  href="/resources/css/video.css" >
    <link rel="stylesheet" type="text/css"  href="/resources/css/style.css" >

    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/uikit.js"></script>
    <script src="/resources/js/uikit-icons.js"></script>
    <script src="/resources/js/script.js"></script>

    <title>자랑질앱</title>
    <style>

    </style>
    <script>
        var token = $("meta[name='_csrf']").attr("content");
        var header = $("meta[name='_csrf_header']").attr("content");

        $(document).ready(function(){
            $("#toggle" ).click( function() {
                setTimeout($(location).attr('href', '/mypage/mypageDancerView'),2000)
            } );
        });
    </script>
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
                    <input type="checkbox" id="toggle">
                    <span class="slider"></span>
                </label>
                <span>댄서</span>
            </div>

            <div class="user-info">
                <img src="${path}${loginDTO.picture}" class="thum" alt="face02.jpg">
                <div class="user-mody">
                    <img src="<c:url value="/resources/images/icon/google-g.png"/>">
                    <span class="pr5 pl10">${loginDTO.number}</span>
                    <a href="<c:url value="/member/memberInfoModifyView"/>" class="uk-icon-link" uk-icon="cog"></a>
                </div> 
            </div>
        </div>         
      
        <div class="mypage-info">
            <div class="my-infobx active">
                <em></em>
                <span>78</span>
                <p>심사점수 <a href="#" class="uk-icon-link" uk-icon="icon: question; ratio: 0.8" id="toggleBtn"></a></p>
                <p>스타심사위원</p>
            </div>
            <div class="my-infobx active">
                <em></em>
                <span uk-icon="basic"></span>
                <p>7일</p>
                <p>연속방문</p>
            </div>
            <div class="my-infobx active">
                <em></em>
                <span uk-icon="week"></span>
                <p>WEEK</p>
                <p>주 우승 맞춤</p>
            </div>
            <div class="my-infobx">
                <em></em>
                <span uk-icon="month"></span>
                <p>MONTH</p>
                <p>월 우승 맞춤</p>
            </div>
        </div>
        <div class="score-info">
            <button class="close-btn" id="closeBtn"><span uk-icon="close"></span></button>           
            <div class="my-score-bx">
                <div class="my-score-tit">
                    <h3>스타 심사위원</h3>
                    <div class="tar">
                        <span id="totalScore">0</span> 점까지 투표가능
                    </div>
                </div>
                <div class="my-score-grf">
                    <div class="bar-segment color1" id="scoreBar1" style="width: 0;"></div>
                    <div class="bar-segment color2" id="scoreBar2" style="width: 0;"></div>
                    <div class="bar-segment color3" id="scoreBar3" style="width: 0;"></div>
                    <div class="bar-segment color4" id="scoreBar4" style="width: 0;"></div>
                </div>
                <div class="my-score-list">
                    <div class="my-score">
                        <span>기본점수</span>
                        <div data-score="15"><em style="background-color: #59D366;"></em>15</div>
                    </div>
                    <div class="my-score">
                        <span>7일 연속 방문</span>
                        <div data-score="9"><em style="background-color: #F5C900;"></em>9</div>
                        <p>7일 남음</p>
                    </div>
                    <div class="my-score">
                        <span>주 우승 맞춤</span>
                        <div data-score="9"><em style="background-color: #29DDC7;"></em>9</div>
                        <p>7일 남음</p>
                    </div>
                    <div class="my-score">
                        <span>월 우승 맞춤</span>
                        <div data-score="45"><em style="background-color: #387FFF;"></em>45</div>
                        <p>27일 남음</p>
                    </div>
                </div>
            </div>
            
            
        </div>
        <div class="my-link-2th">
            <a href="/mypage/recentViewVideo">
                <em uk-icon="icon: play-circle;"></em>
                최근 본 영상
                <span uk-icon="icon: chevron-right; ratio: 1.2"></span>
            </a>
            <a href="/mypage/favoriteVideoView">
                <em uk-icon="icon: bookmark;"></em>
                즐겨찾기 영상
                <span uk-icon="icon: chevron-right; ratio: 1.2"></span>
            </a>
            <a href="/mypage/judgeView">
                <em uk-icon="icon: side01;"></em>
                심사
                <span uk-icon="icon: chevron-right; ratio: 1.2"></span>
            </a>
            <a href="/mypage/winPredView">
                <em uk-icon="icon: side02;"></em>
                우승예측
                <span uk-icon="icon: chevron-right; ratio: 1.2"></span>
            </a>
        </div>
         <div class="my-link mt20 mb20">
            <a href="/mypage/videoReplyView"> 영상댓글<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
            <a href="/board/fanBoardListView"> 팬 게시글<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
            <a href="/board/fanBoardRelpyListView"> 팬 댓글<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
         </div>
         
         <h3><span uk-icon="icon: center; ratio: 1.2"></span> 고객센터</h3>
         <div class="my-link mt5">
            <a href="/board/boardListView?type=1"> 공지사항<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
            <a href="/board/serviceIntroductionView?type=2"> 서비스소개<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
            <a href="/board/FAQListView?type=3"> 자주 묻는 질문<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
            <a href="/board/QnAListView?type=4"> 문의/제안<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
            <a href="/board/useTermsView"> 이용약관<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
            <a href="/board/privacyStatementView"> 개인정보 취급방침<span uk-icon="icon: chevron-right; ratio: 1.2"></span></a>
         </div>
    </div>

<!--하단메뉴
<div class="full-bottom-bar">
    <div class="v_bottom_nav">                
        <ul>
            <li><a href="#" class="vsicon"><span uk-icon="icon: bottom01;"><i class="sr-only">숏폼</i></span></a></li>
            <li><a href="#" class="vsicon"><span uk-icon="icon: bottom02;"><i class="sr-only">우승예측</i></span></a></li>
            <li class="mcircle"><a href="#" class="vsicon"> <em uk-icon="icon: bottom03;"><i class="sr-only">촬영</i></em></a></li>
            <li><a href="#" class="vsicon"><span uk-icon="icon: bottom04;"><i class="sr-only">팬</i></span></a></li>
            <li><a href="/mypage/mypageView" class="vsicon"><span uk-icon="icon: bottomOn05;"><i class="sr-only">마이페이지</i></span></a></li>
        </ul>        
    </div>
    <div class="full-bar-bg"><span></span><span class="bg-transparent"></span><span></span></div>
</div>
-->

        
           
    
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