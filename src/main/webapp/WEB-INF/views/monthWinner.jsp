<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/reset.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/video.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/style.css" >

    <script src="${path}/resources/js/jquery.min.js"></script>
    <script src="${path}/resources/js/uikit.js"></script>
    <script src="${path}/resources/js/uikit-icons.js"></script>
    <script src="${path}/resources/js/script.js"></script>
    <script src="${path}/resources/js/ajax.js"></script>

    <title>자랑질앱</title>
    <style>
      
    </style>
</head>

<script>
    const nowYear = "${year}";
    const nowMonth = "${month}";

    $( document ).ready(function() {
        $.ajax({
            url: '/api/v1/win/month/list',
            method: 'GET',
            dataType: 'json',
            data: $("#winPredForm").serialize(),
            success: function(response) {
                var winPredMList = response.winPredMList;
                console.log(winPredMList);
                var html = "";

                html += '<li class="rank-adv">';
                html += '    <span class="rank-adv-icon">광고</span>';
                html += '    <div class="rankimg"><a href="/advertisement"><img src="${path}/resources/images/thum/thum-cu.jpg"></a></div>';
                html += '    <div class="rankinfo">';
                html += '        <div class="rankinfo-tit ellipsis2"><a href="/advertisement">CU편의점 고인물 편 ♡♡♡편의점 알바이야기 연속 보기</a></div>';
                html += '        <div class="c_gray ellipsis">#편의점 #CU편의점 알바이야기 #CU편의점</div>';
                html += '        <div class="c_gray font11 mb5">2023.01.02</div>';
                html += '        <div class="rankinfo-name"><a href="#none">CU편의점</a></div>';
                html += '    </div>';
                html += '</li>';

                for(var i = 0; i < winPredMList.length; i++) {
                    var winPredInfo = winPredMList[i];
                    console.log(winPredInfo);
                    html += '<li>';
                    html += '    <div class="rankno tac">'+(i+1)+'</div>';
                    html += '    <div class="rankimg"><a href="/subShots"><img src="${path}/resources/images/thum/thum0'+(i+1)+'.jpg"></a></div>';
                    html += '    <div class="rankinfo">';
                    html += '        <div class="rankinfo-tit ellipsis2"><a href="/subShots">'+winPredInfo.video_description+'</a></div>';
                    html += '        <div class="c_gray ellipsis">'+winPredInfo.video_tags+'</div>';
                    html += '       <div class="c_gray font11 mb5">'+winPredInfo.video_created_at+'</div>';
                    html += '       <div class="rankinfo-name"><a href="#none">'+winPredInfo.channel_name+'</a></div>';
                    html += '    </div>';
                    html += '    <div class="c_gray wp60 tac font12">'+winPredInfo.video_score+'</div>';
                    html += '    <div class="c_gray wp60 tac font12">'+winPredInfo.pred_cnt+'</div>';
                    html += '</li>';
                }

                $("#monthWinList").html(html);
            },
            error: function(error) {
                console.log(error);
            }
        });

    });

    function fn_beforeList() {
        $("#dType").val("before");

        const mForm = $("#monthForm");
        mForm.submit();
    }


</script>
<body>
<form id="monthForm" name="monthForm" method="get" action = "/monthWinnerList">
    <input type="hidden" id="sYear" name="sYear" value="${year}"/>
    <input type="hidden" id="sMonth" name="sMonth" value="${month}"/>
    <input type="hidden" id="dType" name="dType" value=""/>

</form>

<form id="winPredForm" name="winPredForm" method="post">
    <input type="hidden" id="userId" name="userId" value="${userId}"/>
    <input type="hidden" id="predictionType" name="predictionType" value="M"/>
    <input type="hidden" id="startDate" name="startDate" value="20240101"/>
    <input type="hidden" id="endDate" name="endDate" value="20240131"/>
</form>
    <div class="container">
        <div class="tab-2th">
            <a href="/monthWinner" class="mleft on">월 우승</a><a href="/weekWinner" class="mright">주 우승</a>
        </div>

        <div class="data-nav">
            <a href="#" title="이전" onclick="fn_beforeList()"><em uk-icon="icon: chevron-left; ratio: 1.2"></em></a>
            <h3>${year}. ${month}월 <span>진행중</span></h3>
            <a href="#" title="다음" class="nav-disable"><em uk-icon="icon: chevron-right; ratio: 1.2"></em></a>
        </div>

  

        <div class="all-rank-list">
            <div class="all-rank-tit">
                <span class="all-rank-no">순위</span>
                <span>점수</span>
                <span>우찜</span>
            </div>

            <ul class="mt5" id="monthWinList">
                <!--
                <li class="rank-adv">
                    <span class="rank-adv-icon">광고</span>
                    <div class="rankimg"><a href="46-2광고.html"><img src="images/thum/thum-cu.jpg"></a></div>
                    <div class="rankinfo">
                        <div class="rankinfo-tit ellipsis2"><a href="46-2광고.html">CU편의점 고인물 편 ♡♡♡편의점 알바이야기 연속 보기</a></div>
                        <div class="c_gray ellipsis">#편의점 #CU편의점 알바이야기 #CU편의점</div>
                        <div class="c_gray font11 mb5">2023.01.02</div>
                        <div class="rankinfo-name"><a href="#none">CU편의점</a></div>
                    </div>
                </li>
                <li>
                        <div class="rankno tac">1</div>
                        <div class="rankimg"><a href="/subShots"><img src="images/thum/thum01.jpg"></a></div>
                        <div class="rankinfo">
                            <div class="rankinfo-tit ellipsis2"><a href="/subShots">완벽한 아이돌 압구정동 아이돌 제의 뉴진스제의 뉴진스제의 뉴진스</a></div>
                            <div class="c_gray ellipsis">#뉴진스돌 #아이돌 #압구정 아이돌 #뉴진스돌 #아이돌 #압구정 아이돌</div>
                            <div class="c_gray font11 mb5">2023.01.02</div>
                            <div class="rankinfo-name"><a href="#none">Newjeans</a></div>
                        </div>
                        <div class="c_gray wp60 tac font12">2485</div>
                        <div class="c_gray wp60 tac font12">72</div>
                </li>
                <li>
                        <div class="rankno wp40 tac">2</div>
                        <div class="rankimg"><a href="/subShots"><img src="images/thum/thum02.jpg"></a></div>
                        <div class="rankinfo">
                            <div class="rankinfo-tit ellipsis2"><a href="/subShots">완벽한 아이돌 압구정동 아이돌 제의 뉴진스제의 뉴진스제의 뉴진스</a></div>
                            <div class="c_gray ellipsis">#뉴진스돌 #아이돌 #압구정 아이돌 #뉴진스돌 #아이돌 #압구정 아이돌</div>
                            <div class="c_gray font11 mb5">2023.01.02</div>
                            <div class="rankinfo-name"><a href="#none">Newjeans</a></div>
                        </div>
                        <div class="c_gray wp60 tac font12">2485</div>
                        <div class="c_gray wp60 tac font12">72</div>
                   
                </li>
                <li>
                        <div class="rankno wp40 tac">3</div>
                        <div class="rankimg"><a href="#none"><img src="images/thum/thum04.jpg"></a></div>
                        <div class="rankinfo">
                            <div class="rankinfo-tit ellipsis2"><a href="#none">완벽한 아이돌 압구정동 아이돌 제의 뉴진스제의 뉴진스제의 뉴진스</a></div>
                            <div class="c_gray ellipsis">#뉴진스돌 #아이돌 #압구정 아이돌 #뉴진스돌 #아이돌 #압구정 아이돌</div>
                            <div class="c_gray font11 mb5">2023.01.02</div>
                            <div class="rankinfo-name"><a href="#none">Newjeans</a></div>
                        </div>
                        <div class="c_gray wp60 tac font12">2485</div>
                        <div class="c_gray wp60 tac font12">72</div>
                    
                </li>
                <li>
                        <div class="rankno wp40 tac">4</div>
                        <div class="rankimg"><a href="#none"><img src="images/thum/thum03.jpg"></a></div>
                        <div class="rankinfo">
                            <div class="rankinfo-tit ellipsis2"><a href="#none">완벽한 아이돌 압구정동 아이돌 제의 뉴진스제의 뉴진스제의 뉴진스</a></div>
                            <div class="c_gray ellipsis">#뉴진스돌 #아이돌 #압구정 아이돌 #뉴진스돌 #아이돌 #압구정 아이돌</div>
                            <div class="c_gray font11 mb5">2023.01.02</div>
                            <div class="rankinfo-name"><a href="#none">Newjeans</a></div>
                        </div>
                        <div class="c_gray wp60 tac font12">2485</div>
                        <div class="c_gray wp60 tac font12">72</div>
                    
                </li>
                -->
            </ul>
        </div>

        <!--새로고침아이콘-->
        <div class="refresh-icon">
            <a href="#none" ><span uk-icon="icon: refresh;ratio: 1.3"></span></a>
        </div>
    </div>

    

    <!--하단메뉴-->
    <!--
    <div class="full-bottom-bar">
        <div class="v_bottom_nav">                
            <ul>
                <li><a href="#" class="vsicon"><span uk-icon="icon: bottom01;"><i class="sr-only">숏폼</i></span></a></li>
                <li><a href="#" class="vsicon"><span uk-icon="icon: bottomOn02;"><i class="sr-only">우승예측</i></span></a></li>
                <li class="mcircle"><a href="#" class="vsicon"> <em uk-icon="icon: bottom03;"><i class="sr-only">촬영</i></em></a></li>
                <li><a href="#" class="vsicon"><span uk-icon="icon: bottom04;"><i class="sr-only">팬</i></span></a></li>
                <li><a href="#" class="vsicon"><span uk-icon="icon: bottom05;"><i class="sr-only">마이페이지</i></span></a></li>
            </ul>        
        </div>
        <div class="full-bar-bg"><span></span><span class="bg-transparent"></span><span></span></div>
    </div>
        -->
  
</body>

</html>