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
</head>
<body>
     <!--container-full b_grayLB-->
    <div class="container-full b_grayLB">      
        <div class="top-bx">
            <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
            채널              
            <div class="top-right">
                <button id="popupButton" type="button"><span uk-icon="icon: more-vertical"  class="pd10"></span></button>         
            </div>     
          
            <div class="white-bx" id="whiteBox">                
                <a href="${path}/#modal-sections" uk-toggle>신고하기</a>
            </div>
        </div> 

        <div class="container pb20">
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
                            <img src="${path}/images/icon/w-medal03.png">
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
        

    </div>
    <!--container-full b_grayLB-->   
    
    <div class="container-full">
        <div class="tab-nav">
            <ul>
                <li><a href="${path}/38-2채널.html">영상</a></li>
                <li><a href="${path}/41-1팬게시판.html">팬게시판</a></li>
                <li><a href="${path}/43-1멤버.html" class="on">멤버</a></li>
            </ul>
        </div>

        <div class="container">
            <div class="name_list mt20 nobd">
                <ul>
                    <li>
                        <img src="${path}/images/thum/grup01.jpg">
                        <a href="${path}/43-2개인채널.html">트와이스 지효 <em uk-icon="chevron-right"></em></a>
                    </li>
                    <li>
                        <img src="${path}/images/thum/grup02.jpg">
                        <a href="${path}/43-2개인채널.html">#트와이스 사나<span>twice.abc</span><em uk-icon="chevron-right"></em></a>
                    </li>
                    <li>
                        <img src="${path}/images/thum/grup03.jpg">
                        <a href="${path}/43-2개인채널.html">#트와이스 나연<span>niceteam</span><em uk-icon="chevron-right"></em></a>
                    </li>
                </ul>
            </div>
        </div>
       
    </div>    


     <!--신고하기 모달-->

     <div id="modal-sections" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="uk-modal-header">
                <h2 class="uk-modal-title">신고하기</h2>
            </div>
            <div class="uk-modal-body" uk-overflow-auto>
                <div class="flex-column">
                    <label class="pb10"><input class="uk-radio" type="radio" name="radio" checked><span class="pl5">음란/성적</span></label>
                    <label class="pb10"><input class="uk-radio" type="radio" name="radio"><span class="pl5">폭력/괴롭힘</span></label>
                    <label class="pb10"><input class="uk-radio" type="radio" name="radio"><span class="pl5">위험/혐오</span></label>
                    <label class="pb10"><input class="uk-radio" type="radio" name="radio"><span class="pl5">표절/권리 침해</span></label>
                    <textarea class="uk-textarea bdgray" rows="5" placeholder="내용" aria-label="Textarea"></textarea>
                </div>
            </div>
            <div class="uk-modal-footer uk-text-right">
                <button class="uk-button uk-button-default uk-modal-close" type="button">취소</button>
                <button class="uk-button uk-button-primary" type="button">신고</button>
            </div>
        </div>
    </div>


    <script>
        //신고하기

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


        //구독버튼
        const subscribeButton = document.getElementById('subscribe-button');
        let isClicked = false;
        subscribeButton.addEventListener('click', function()
            {
                if (!isClicked) {
                subscribeButton.classList.add('bt_subscribe'); 
                } else {
                subscribeButton.classList.remove('bt_subscribe');
                }
                isClicked = !isClicked; 
            }
        );
    </script>
</body>

</html>