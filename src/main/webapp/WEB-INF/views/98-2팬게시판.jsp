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
     <!--container-full b_grayLB-->
    <div class="container-full b_grayLB">      
        <div class="top-bx">
            <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
            채널  <span uk-icon="icon: ban;" class="c_red pl5"></span>         
            <div class="top-right">
                <button id="popupButton" type="button"><span uk-icon="icon: cog"  class="pd10"></span></button>         
            </div>       
          
            <div class="white-bx wp100" id="whiteBox">
                <a href="${path}/92-3채널정보수정.html">수정</a>
                <a href="${path}/#modal-center" uk-toggle>삭제</a>
            </div>
    
            
        </div>

        <div class="channel-bx">
            <div class="channel-top">
                <div class="ch-img"><img src="${path}/images/thum/grup03.jpg"></div>
                <div class="ch-info">                    
                    <div class="ch-info-name">
                       Twice.danceteam <span>트와이스 댄스팀</span>
                    </div>
                    <div class="btn-pan-color">
                        <button type="button" id="subscribe-button" class="v_button">팬</button>
                    </div>
                </div>
                <div class="ch-info-icon">
                    <span class="icon-winner">
                        <img src="${path}/images/icon/m-medal01.png">
                        <em>05</em>
                    </span>
                    <span class="icon-winner">
                        <img src="${path}/images/icon/w-medal02.png">
                        <em>25</em>
                    </span>
                </div>                   
            </div>

            <div class="ch-inf-num">
                <div>3.5<em>k</em><span>구독자</span></div>
                <div>05<span>월 우승</span></div>
                <div>35<span>주 우승</span></div>
                <div>10<span>멤버</span></div>                               
            </div>

        </div>

    </div>
    <!--container-full b_grayLB-->   
    
    <div class="container-full">
        <div class="tab-nav">
            <ul>
                <li><a href="${path}/91-2채널.html">영상</a></li>
                <li><a href="${path}/98-1팬게시판.html" class="on">팬게시판</a></li>
                <li><a href="${path}/99-1멤버.html">멤버</a></li>
                <li><a href="${path}/101-1팬.html">팬</a></li>
            </ul>
        </div>
        <!--container-->
        <div class="container">
            <div class="ch-bbs-bx">
                <ul>
                    <li class="ch-bbs-list align-img-top">
                        <div class="chbbslist-img">
                            <img src="${path}/images/thum/grup03.jpg">
                        </div>
                        <div class="chbbslist-bx">
                            <div class="chbbslist-name">
                                Twice.danceteam<span>5일 전</span>
                                <em><a href="${path}/#none" uk-icon="icon:close"></a></em>
                            </div>
                            <div class="chbbslist-text">
                                <a href="${path}/41-3팬게시물.html">
                                    <p>새로운 멤버가 추가되었어요 환영해주세요</p>
                                    <p><img src="${path}/images/thum/face02.jpg"></p>
                                </a>    
                               
                            </div>
                            <div class="ch-comment">
                                <a href="${path}/41-3팬게시물.html">
                                    <span uk-icon="icon:  commenting; ratio: 1.2"></span>
                                    <span>30</span>
                                </a>
                            </div>
                        </div>
                        
                    </li>
                    
                </ul>
            </div>

        </div>
        <!--container end-->
    </div>    
    <!--container-full end-->

    


    <div class="foot-fixed">
        <div class="msg-send">
            <div class="msg-send-icon">
                <div uk-form-custom>
                    <input type="file" aria-label="Custom controls">
                    <span class="uk-link" uk-icon="icon: plus-circle;ratio:1.5"></span>
                </div>
            </div>
            <div class="msg-send-inp">
                <div class="uk-inline w100">
                    <a class="uk-form-icon uk-form-icon-flip on" href="${path}/#" uk-icon="icon: send"></a>
                    <input class="uk-input" type="text" aria-label="Clickable icon" placeholder="글씨가 적혀있으면 보내기 버튼 class on">
                </div>
            </div>
            
        </div>
    </div>




    <!--삭제하기-->
    <div id="modal-center" class="uk-flex-top" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="uk-modal-body uk-text-center mb20 mt20">
                <p uk-icon="icon: warning; ratio: 2" class="c_red"></p>
                <p>삭제 하시겠습니까?</p>
            </div>
           
            <div class="uk-modal-footer uk-text-center">
                <button class="uk-button uk-button-default uk-modal-close" type="button">취소</button>
                <button class="uk-button uk-button-danger" type="button">삭제</button>
            </div>
        </div>
    </div>

    <script> 

        // 상단 수정. 삭제
        const popupButton = document.getElementById("popupButton");
        const whiteBox = document.getElementById("whiteBox");
    
        // 버튼 클릭 이벤트 처리
        popupButton.addEventListener("click", () => {
            // white-bx에 "active" 클래스를 토글하여 애니메이션 적용
            whiteBox.classList.toggle("active");
        });
    
        // document를 클릭하면 white-bx 닫기
        document.addEventListener("click", (event) => {
            if (!popupButton.contains(event.target) && !whiteBox.contains(event.target)) {
                whiteBox.classList.remove("active");
            }
        });
        </script>  
   
</body>

</html>