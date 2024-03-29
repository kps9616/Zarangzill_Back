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
     <div class="top-bx bline">
        <a href="${path}/#logout" class="top-left link-txt" uk-toggle>로그아웃</a>
        휴대폰 인증        
    </div>
    <div class="container pt20"> 
        <h3 class="mt20 mb10">재인증</h3>
        
        <div class="c_red">다른 사용자가 동일한 휴대폰번호로 인증했습니다</div>
        <div class="mb20">동일한 휴대폰번호를 이용하고 있으시다면 재인증 해주세요.</div>
        <a href="${path}/#none" class="btn-line-blue w100 c_blue">010-1234-5678 재인증</a>
        <p class="msgtag">인증번호를 발송했습니다.</p>

        <div class="pw-login mb10 mt10">
            <span>-9:12</span>
            <input class="uk-input" type="text" placeholder="인증번호" aria-label="Input">
            <p class="c_red msgtag">인증번호가 틀렸습니다.</p>
        </div>

        <h3 class="mt20 mb10">휴대폰번호 변경</h3>
        <div class="mb20">휴대폰번호를 바꾸셨다면 새 휴대폰번호로 변경해 주세요.</div>
        <div class="hp-login mb10 mt10">
            <button type="button">인증번호 발송</button>
            <input class="uk-input" type="text" placeholder="새 휴대폰 번호" aria-label="Input">
            <p class="msgtag">인증번호를 발송 했습니다.</p>
        </div>
    </div>

    <!--이미지등록-->
 <script>
    const defaultImage = "images/thum/noimg.png";

    document.getElementById('imageInput').addEventListener('change', function(e) {
        const file = e.target.files[0];
        if (file && file.type.match('image.*')) {
            const reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('imagePreview').src = e.target.result;
                document.getElementById('deleteButton').style.display = 'inline'; // 여기서 "x" 버튼을 보이게 합니다.
            };
            reader.readAsDataURL(file);
        }
    });

    function deleteImage() {
        document.getElementById('imagePreview').src = defaultImage;
        document.getElementById('imageInput').value = "";
        document.getElementById('deleteButton').style.display = 'none';
    }
</script>

<!--로그아웃 확인 모달-->
<div id="logout" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

        <button class="uk-modal-close-default" type="button" uk-close></button>
        <div class="uk-modal-body uk-text-center mb20 mt20">
            <p uk-icon="icon: warning; ratio: 2" ></p>
            <p>로그아웃 하시겠습니까?</p>
        </div>
       
        <div class="uk-modal-footer uk-text-center">
            <button class="uk-button uk-button-default uk-modal-close" type="button">닫기</button>
            <button class="uk-button uk-button-primary" type="button">로그아웃</button>
        </div>
    </div>
</div>
</body>

</html>