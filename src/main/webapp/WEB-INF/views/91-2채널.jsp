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
                <li><a href="${path}/91-2채널.html" class="on">영상</a></li>
                <li><a href="${path}/98-2팬게시판.html">팬게시판</a></li>
                <li><a href="${path}/99-1멤버.html">멤버</a></li>
                <li><a href="${path}/101-1팬.html">팬</a></li>
            </ul>
        </div>
        <div class="container">
            <div class="mych-mov">
                <h3 class="mt10 pb10 bline">영상 : 2개</h3>
                <ul>
                    <li>
                        <div class="mych-mov-img">
                            <a href="${path}/107쇼츠.html"><img src="${path}/images/thum/thum04.jpg"></a>
                        </div>
                       
                            <div class="mych-mov-info">
                                <a href="${path}/94-2영상관리.html">
                                    <div class="mych-info-tit">
                                        완벽한 궁극의 아이돌 ✧트와이스✧<span> #TWICE #트와이스</span>
                                    </div>
                                    <div class="mych-info-badge b_blue">월 우승 2023.07</div>
                                    <div class="mych-view-info">
                                        <p><span>뷰</span>14,322</p>
                                        <p><span>심사</span>830 / 55명(27위)</p>
                                        <p><span>즐겨찾기</span>236</p>
                                        <p><span>우승예측</span>214</p>
                                    </div>
                                </a>
                            </div>
                       
                        
                    </li>
                    <li>
                        <div class="mych-mov-img">
                            <a href="${path}/107쇼츠.html"><img src="${path}/images/thum/thum01.jpg"></a>
                        </div>
                        <div class="mych-mov-info">
                            <a href="${path}/94-2영상관리.html">
                                <div class="mych-info-tit">
                                    완벽한 궁극의 아이돌 ✧트와이스✧<span> #TWICE #트와이스</span>
                                </div>
                                <div class="mych-info-badge b_green">주 우승 2023.07</div>
                                <div class="mych-view-info">
                                    <p><span uk-icon="icon: ban;" class="c_red"></span>신고로 제한된 영상 </p>
                                    <p><span>뷰</span>14,322</p>
                                    <p><span>심사</span>830 / 55명(27위)</p>
                                    <p><span>즐겨찾기</span>236</p>
                                    <p><span>우승예측</span>214</p>
                                </div>
                            </a>    
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <!--삭제하기-->
        <div id="modal-center" class="uk-flex-top" uk-modal>
            <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

                <button class="uk-modal-close-default" type="button" uk-close></button>
                <h2 class="uk-modal-title tac">채널 삭제</h2>
                <div class="uk-modal-body tac font12">
                    <p>채널의 영상, 팬, 멤버, 게시물이 삭제되며
                        채널 삭제 후 복구가 안 됩니다. <br>
                    </p>
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