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
        심사
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
                    <!--심사한 내용-->
                    <div class="ranking-view">
                        <div class="m-rank-num">78<em>/78</em></div>
                        <div class="m-rank-grf">
                            <div class="bar-container score1" data-percentage="25">
                                <label>힙</label>
                                <div class="bar-bg">
                                    <div class="bar-fill"></div>
                                </div>
                                
                                <span class="sr-only">25%</span>
                            </div>
                            <div class="bar-container score2" data-percentage="50">
                                <label>개성</label>
                                <div class="bar-bg">
                                    <div class="bar-fill"></div>
                                </div>
                                <span class="sr-only">50%</span>
                            </div>
                            <div class="bar-container score3" data-percentage="25">
                                <label>귀여움</label>
                                <div class="bar-bg">
                                    <div class="bar-fill"></div>
                                </div>
                                <span class="sr-only">25%</span>
                            </div>
                        </div>
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
                    <!--심사한 내용-->
                    <div class="ranking-view">
                        <div class="m-rank-num">45<em>/45</em></div>
                        <div class="m-rank-grf">
                            <div class="bar-container score1" data-percentage="50">
                                <label>힙</label>
                                <div class="bar-bg">
                                    <div class="bar-fill"></div>
                                </div>
                                
                                <span class="sr-only">50%</span>
                            </div>
                            <div class="bar-container score2" data-percentage="25">
                                <label>개성</label>
                                <div class="bar-bg">
                                    <div class="bar-fill"></div>
                                </div>
                                <span class="sr-only">25%</span>
                            </div>
                            <div class="bar-container score3" data-percentage="25">
                                <label>귀여움</label>
                                <div class="bar-bg">
                                    <div class="bar-fill"></div>
                                </div>
                                <span class="sr-only">25%</span>
                            </div>
                        </div>
                    </div>

                </li>
                
                <li>
                    <div class="bigthum">
                        <div class="video-del-100"><img src="${path}/images/icon/del-video.png" alt="삭제된영상아이콘" width="50"></div>                        
                        <img src="${path}/images/thum/thum02.jpg"  class="thum filter-gray">
                    </div>
                    <div class="list-tit ellipsis2">
                        <div class="c_red">삭제된 영상입니다.</div>
                    </div>
                    <div class="list-name">
                        <a href="${path}/#none">
                            <img class="small-thum mr5 img-grayscale" src="${path}/images/thum/face02.jpg" >
                            dance team
                        </a>
                    </div> 
                </li>                     
               
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