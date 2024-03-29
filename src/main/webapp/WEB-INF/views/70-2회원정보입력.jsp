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
        <a href="${path}/#cancel" class="top-left link-txt" uk-toggle>취소</a>
        회원가입        
    </div>
    <div class="container pt20"> 
        <h3 class="mt20 mb10 tac">회원정보 입력</h3>
        
        <ul class="form-create">
            <li class="photo">
                <span id="deleteButton" onclick="deleteImage()"><i uk-icon="icon:close;"></i></span>
                <img src="${path}/images/thum/noimg.png" id="imagePreview">
                <div uk-form-custom>
                    <input type="file" id="imageInput" aria-label="Custom controls">
                    <div class="flex-align">
                        <span class="uk-link"></span><i uk-icon="icon: image;" class="pr10"></i>사진 등록
                    </div>
                </div>
                
            </li>           
            <li>
                <input class="uk-input" type="text" placeholder="" value="아이유" aria-label="Input">
            </li>
            <li>
                <label>생년월일</label>
                <input class="uk-input w60" type="text" placeholder="생년원일 6자리" aria-label="Input"> - 
                <input class="uk-input w10" type="text" placeholder="" aria-label="Input"> ****** 
            </li>
            <li>
                만 19세 이상 광고수익 가능하며 허위 기재 시 이용이 제한 될 수 있습니다.
            </li>
        </ul>
        <button type="button" class="bt_gradient w100" onclick="location='72-2휴대폰재인증.html'">가입완료</button>   
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

<!--회원 취소하기 모달-->
<div id="cancel" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

        <button class="uk-modal-close-default" type="button" uk-close></button>
        <div class="uk-modal-body uk-text-center mb20 mt20">
            <p uk-icon="icon: warning; ratio: 2" class="c_red"></p>
            <p>회원가입을 취소 하시겠습니까?</p>
        </div>
       
        <div class="uk-modal-footer uk-text-center">
            <button class="uk-button uk-button-default uk-modal-close" type="button">닫기</button>
            <button class="uk-button uk-button-danger" type="button">가입취소</button>
        </div>
    </div>
</div>
</body>

</html>