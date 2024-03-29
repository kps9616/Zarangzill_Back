<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    
    
    <link rel="stylesheet" type="text/css"  href="${path}/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/reset.css" >    
    <link rel="stylesheet" type="text/css"  href="${path}/css/video.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/style.css" >

    <script src="${path}/js/jquery.min.js"></script>
    <script src="${path}/js/uikit.js"></script>
    <script src="${path}/js/uikit-icons.js"></script>
    <script src="${path}/js/script.js"></script>
    
    <title>자랑질앱</title>

  
</head>
<body>
    <div class="testimg" style="overflow: hidden;">
        <img src="${path}/images/thum/thum01.jpg" >
     </div>
     

     <!-- 영상댓글 모달 -->
     <div id="bottom-modal" class="bmodal" style="display: block;">

         <!-- Modal content -->
         <div class="bottom-modal top-radius"  style="height: auto;">
            
                <div class="uk-modal-header top-radius relative">
                    <span uk-icon="icon: close" class="bbtn-close"></span>
                    <h2 class="uk-modal-title uk-text-center">우승예측 투표하기</h2>
                </div>
               
                <div class="modal-vote-con">
                    <div class="mod-team-txt">홍대 스트리트 댄스팀. 춤에 대한 열정이 많은 멤버들로  구성된 팀들의 진짜 실력 
                        <span>#스트리트 댄스팀 #홍대춤꾼</span>
                    </div>
                    <div class="mod-team-name">@Hong dae</div>

                    <!--투표버튼-->
                    <div class="mod-team-btnbx">
                        <div class="mod-btn-black">
                            <h3 class="mb10">8월 우승</h3>
                            <a href="${path}/#">
                                <div><em uk-icon="icon: vote-check;"></em><span>투표완료</span></div>
                            </a>
                        </div>
                        <div class="mod-btn-blue">
                            <h3 class="mb10">30번째 우승</h3>
                            <a href="${path}/#">
                                <div><em uk-icon="icon: vote-ok;"></em><span>투표하기</span></div>
                                <span class="font11">7월 25일 ~ 7월 29일</span>
                            </a>
                        </div>
                    </div>
                    <!--최근 순위 정보-->                   
                    
                    <div class="mod-w-rank">
                    <h3>최근 순위정보</h3>
                        <div class="w-rank-list">
                            <span>22</span>
                            <em>29주</em>
                        </div>
                        <div class="w-rank-list">
                            <span>32</span>
                            <em>30주</em>
                        </div>
                        <div class="w-rank-list">
                            <img src="${path}/images/icon/crown-yellow.png">
                            <span>1</span>
                            <em>31주</em>
                        </div>
                        <div class="w-rank-list no-line">
                            <span>3</span>
                            <em>32주</em>
                        </div>
                    </div>                   
                </div>
         </div>
     </div>

       
     <script>
        // 하단모달
        var modal = document.getElementById('bottom-modal');
        var btn = document.getElementById("Btn-comment");
        var span = document.getElementsByClassName("bbtn-close")[0];

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }

        </script> 
</body>

</html>