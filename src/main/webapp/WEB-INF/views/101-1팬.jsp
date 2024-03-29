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
                <li><a href="${path}/98-1팬게시판.html">팬게시판</a></li>
                <li><a href="${path}/99-1멤버.html">멤버</a></li>
                <li><a href="${path}/101-1팬.html" class="on">팬</a></li>
            </ul>
        </div>
        <style>
            
                    </style>

        <!--container-->
        <div class="container">
            <h3 class="mt10 pb10 bline">팬 : 2명</h3>
            <div class="mych-member mt20">
                <ul>
                    <li>       
                         <div class="mym-name">홍길동</div>
                         <div class="mym-cog"><a href="${path}/#modal-sections2" uk-toggle><span uk-icon="icon:close"></span></a></div>
                     </li>

                     <li>           
                        <div class="mym-name">홍길남</div>
                        <div class="mym-cog"><a href="${path}/#modal-sections2" uk-toggle><span uk-icon="icon:close"></span></a></div>
                    </li>
                     
                </ul>
            </div>        

        </div>
        <!--container end-->
    </div>    
    <!--container-full end-->

     <!--권한 넘기기-->
     <div id="modal-sections" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="uk-modal-header">
                <h2 class="uk-modal-title">권한 넘기기</h2>
            </div>
            <div class="uk-modal-body" uk-overflow-auto>
               <div class="member-check">
                    <div class="member-checkbx"><input class="uk-radio" type="radio" name="radio2" checked> </div>
                    <div class="member-check-img"><img src="${path}/images/thum/face01.jpg"></div>
                    <div>지효</div>
                </div>
                <div class="member-check">
                    <div class="member-checkbx"><input class="uk-radio" type="radio" name="radio2" > </div>
                    <div class="member-check-img"><img src="${path}/images/thum/face02.jpg"></div>
                    <div>나연</div>
                </div>

                <div class="member-check">
                    <div class="member-checkbx"><input class="uk-radio" type="radio" name="radio2" > </div>
                    <div class="member-check-img"><img src="${path}/images/thum/grup03.jpg"></div>
                    <div>안유진</div>
                </div>
                

            </div>
            <div class="uk-modal-footer uk-text-right">
                <button class="uk-button uk-button-default uk-modal-close mr10" type="button">취소</button>
                <button class="uk-button uk-button-primary" type="button">권한 넘김</button>
            </div>
        </div>
    </div>

 <!--멤버 내보내기-->
 <div id="modal-sections2" uk-modal>
    <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

        <button class="uk-modal-close-default" type="button" uk-close></button>
        <div class="uk-modal-body uk-text-center mb20 mt20">
            <p>멤버를 내보내시겠습니까?</p>
        </div>
       
        <div class="uk-modal-footer uk-text-center">
            <button class="uk-button uk-button-default uk-modal-close" type="button">취소</button>
            <button class="uk-button uk-button-danger" type="button">내보내기</button>
        </div>
    </div>
</div>
    


 <!--기여자-->
 <div id="modal-sections3" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

        <button class="uk-modal-close-default" type="button" uk-close></button>
        <h2 class="uk-modal-title tac">기여자</h2>
        <div class="uk-modal-body" style="min-height: 200px;">   
            <input class="uk-input" type="text" placeholder="@">
            <div class="member-invt">
                <div class="member-invt-img"><img src="${path}/images/thum/face01.jpg"> 지용</div>
                <button type="button" class="sm-btn-line-blue">초대하기</button>
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