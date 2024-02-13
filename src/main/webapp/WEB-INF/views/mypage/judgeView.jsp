<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
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
</head>
<body>
     <!--탑-->
     <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        심사
    </div>
    <div class="container"> 
        <div class="thum-list">
            <ul>
                <c:forEach var="judgeScoreInfo" items="${judgeScoreList}">
                <c:choose>
                <c:when test="${judgeScoreInfo.mflag_use eq 'Y'}">
                    <li>
                        <div class="bigthum">
                            <a href="/subShots?id=${judgeScoreInfo.video_id}"><img src="/upload/thum/${judgeScoreInfo.video_thumbnail}"  class="thum"></a>
                        </div>
                        <div class="list-tit ellipsis2">
                                ${judgeScoreInfo.video_description}<span>${judgeScoreInfo.video_tags}</span>
                        </div>
                        <div class="list-name">
                            <a href="#none">
                                <img class="small-thum mr5" src="/upload/thum/${judgeScoreInfo.profile_image}">
                                    ${judgeScoreInfo.userNm}
                            </a>
                        </div>
                        <!--심사한 내용-->
                        <div class="ranking-view">
                            <div class="m-rank-num">${judgeScoreInfo.ranking}<em>/${judgeScoreList.size()}</em></div>
                            <div class="m-rank-grf">
                                <div class="bar-container score1" data-percentage="${judgeScoreInfo.sum_judge_score_1}">
                                    <label>힙</label>
                                    <div class="bar-bg">
                                        <div class="bar-fill"></div>
                                    </div>

                                    <span class="sr-only">${judgeScoreInfo.sum_judge_score_1}%</span>
                                </div>
                                <div class="bar-container score2" data-percentage="${judgeScoreInfo.sum_judge_score_2}">
                                    <label>개성</label>
                                    <div class="bar-bg">
                                        <div class="bar-fill"></div>
                                    </div>
                                    <span class="sr-only">${judgeScoreInfo.sum_judge_score_2}%</span>
                                </div>
                                <div class="bar-container score3" data-percentage="${judgeScoreInfo.sum_judge_score_3}">
                                    <label>귀여움</label>
                                    <div class="bar-bg">
                                        <div class="bar-fill"></div>
                                    </div>
                                    <span class="sr-only">${judgeScoreInfo.sum_judge_score_3}%</span>
                                </div>
                            </div>
                        </div>
                    </li>
                </c:when>
                    <c:otherwise>
                        <li>
                            <div class="bigthum">
                                <div class="video-del-100"><img src="/upload/icon/del-video.png" alt="삭제된영상아이콘" width="50"></div>
                                <img src="/upload/thum/thum02.jpg"  class="thum filter-gray">
                            </div>
                            <div class="list-tit ellipsis2">
                                <div class="c_red">삭제된 영상입니다.</div>
                            </div>
                            <div class="list-name">
                                <a href="#none">
                                    <img class="small-thum mr5 img-grayscale" src="/upload/thum/face02.jpg" >
                                    dance team
                                </a>
                            </div>
                        </li>
                    </c:otherwise>
                </c:choose>
                </c:forEach>
            </ul>
        </div>
    </div>
     
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const totalNum = parseFloat(document.querySelector('.m-rank-num em').innerText.replace("/", ""));
            const currentNum = parseFloat(document.querySelector('.m-rank-num').textContent.split("<")[0]);

            const percentageOfTotal = (currentNum / totalNum) * 100;

            const bars = document.querySelectorAll('.m-rank-grf > .bar-container'); 
            bars.forEach(bar => {
                const barPercentage = parseFloat(bar.getAttribute('data-percentage'));
                const adjustedPercentage = Math.round((barPercentage / 100) * percentageOfTotal);
                const fill = bar.querySelector('.bar-fill');
                const label = bar.querySelector('span');
                
                if (fill) {
                    setTimeout(() => {
                        fill.style.width = adjustedPercentage + "%";
                        label.textContent = adjustedPercentage + "%";
                    }, 500);
                }
            });
        });
    </script>
   
</body>

</html>