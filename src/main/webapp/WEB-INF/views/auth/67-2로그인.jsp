<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    
    
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/reset.css" >    
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/video.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/style.css" >

    <script src="${path}/resources/js/jquery.min.js"></script>
    <script src="${path}/resources/js/uikit.js"></script>
    <script src="${path}/resources/js/uikit-icons.js"></script>
    <script src="${path}/resources/js/script.js"></script>
    
    <title>자랑질앱</title>

  
</head>
<body>
    <div class="testimg" style="overflow: hidden;">
    <img src="${path}/resources/images/thum/thum01.jpg" >
    </div>
    

    <!-- 로그인 모달 -->
    <div id="bottom-modal" class="bmodal z-top" style="display: block;" >

        <!-- Modal content -->
        <div class="bottom-modal top-radius"  style="height:350px;">
        
            <div class="uk-modal-header top-radius relative">
                <span uk-icon="icon: close" class="bbtn-close"></span>
                <h2 class="uk-modal-title uk-text-center">LOGIN</h2>
            </div>
            
            <div class="bttom-modal-con">
                <div class="login-btbx">
                    <button type="button"><img src="${path}/resources/images/icon/google-g.png" alt="구글로그인버튼"></button> 
                    <button type="button"><img src="${path}/resources/images/icon/apple.png" alt="애플"></button> 
                </div>
                <div class="login-other">
                다른방법으로 <a href="#none" id="other-login-link">로그인</a>
                </div>
            </div>
        
            <div class="uk-modal-footer">
                <a href="68-2회원가입.html" class="btn-line-blue w100">회원가입</a>
            </div>
        </div>

    </div>

    <!-- 휴대폰 인증 모달 -->
    <div id="other-modal" class="bmodal z-top" style="display: none;" >

         <!-- Modal content -->
         <div class="bottom-modal top-radius" style="height:350px;">
            
                <div class="uk-modal-header top-radius relative">
                    <span uk-icon="icon: close" class="other-modal-close"></span>
                    <h2 class="uk-modal-title uk-text-center">휴대폰번호로 로그인</h2>
                </div>
                
                <div class="bttom-modal-con">
                   <div class="login-bx">
                        <div class="hp-login mb10">
                            <button type="button">임시 비밀번호 발송</button>
                            <input class="uk-input" type="text" placeholder="휴대폰 번호" aria-label="Input">
                            <p class="c_gray font12">임시 비밀번호를 발송 했습니다.</p>
                        </div>
                        
                        <div class="pw-login">
                            <input class="uk-input" type="text" placeholder="임시 비밀번호" aria-label="Input">
                            <p class="c_red font12">임시 비밀번호가 틀렸습니다.</p>
                        </div>
                    </div>
               
         </div>

        </div>
    </div>

     <!--하단메뉴-->
    <div class="full-bottom-bar">
        <div class="v_bottom_nav">                
            <ul>
                <li><a href="#" class="vsicon"><span uk-icon="icon: bottom01;"><i class="sr-only">숏폼</i></span></a></li>
                <li><a href="#" class="vsicon"><span uk-icon="icon: bottom02;"><i class="sr-only">우승예측</i></span></a></li>
                <li class="mcircle"><a href="#" class="vsicon"> <em uk-icon="icon: bottom03;"><i class="sr-only">촬영</i></em></a></li>
                <li><a href="#" class="vsicon"><span uk-icon="icon: bottom04;" ><i class="sr-only">팬</i></span></a></li>
                <li><a href="#" class="vsicon"  id="btn-login"><span uk-icon="icon: bottomOn05;"><i class="sr-only">마이페이지</i></span></a></li>
            </ul>        
        </div>
        <div class="full-bar-bg"><span></span><span class="bg-transparent"></span><span></span></div>
    </div>

    <script>      
         // 로그인 하단모달
var modal = document.getElementById('bottom-modal');
var btn = document.getElementById("btn-login");
var span = document.getElementsByClassName("bbtn-close")[0];

btn.onclick = function() {
    modal.style.display = "block";
}

span.onclick = function() {
    modal.style.display = "none";
}

// "다른 방법으로 로그인" 클릭 시 다른 모달 창 표시
var otherModal = document.getElementById('other-modal');
var otherLink = document.getElementById("other-login-link");
var otherClose = document.getElementsByClassName("other-modal-close")[0];

otherLink.onclick = function() {
    modal.style.display = "none"; // 기존 모달 창 닫기
    otherModal.style.display = "block"; // 새로운 모달 창 열기
    return false; // <a> 태그의 기본 동작(이동)을 막기 위함
}

otherClose.onclick = function() {
    otherModal.style.display = "none";
}

    </script>

    
</body>

</html>