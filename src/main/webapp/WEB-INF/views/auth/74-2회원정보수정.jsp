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

    <title>자랑질앱</title>
    <style>
      
    </style>
</head>
<body>


     <!--탑-->
     <div class="top-bx bline">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        회원정보
        <div class="top-right">
            <button id="popupButton" type="button"><span uk-icon="icon: more-vertical"  class="pd10"></span></button>         
        </div>       
      
        <div class="white-bx" id="whiteBox">
            <a href="#none">로그아웃</a>
            <a href="#unregiste" uk-toggle>회원탈퇴</a>
        </div>

    </div>
    <div class="container pt20"> 
        <h3 class="mt20 mb10 tac">회원정보 입력</h3>
        
        <ul class="form-create">
            <li class="photo">
                <span id="deleteButton" onclick="deleteImage()"><i uk-icon="icon:close;"></i></span>
                <img src="${path}/resources/images/thum/face02.jpg" id="imagePreview">
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
                <input class="uk-input w60" type="text" placeholder="20121212" aria-label="Input"> - 
                <input class="uk-input w10" type="text" placeholder="4" aria-label="Input"> ****** 
            </li>
            <li>
                만 19세 이상 광고수익 가능하며 허위 기재 시 이용이 제한 될 수 있습니다.
            </li>
            <li>
                <h3>휴대폰번호</h3>
                <div class="hp-login mb20 mt10">
                    <button type="button" id="hp-change">휴대폰번호 변경</button>
                    <input class="uk-input" type="text" value="01012345789" aria-label="Input">
                </div>
                <div class="ph-change">
                    <!-- X 표시 아이콘 추가 -->
                    <span uk-icon="icon:close"  id="close-btn"></span>

                    <div class="hp-login mb10 mt10">
                        <button type="button">인증번호 발송</button>
                        <input class="uk-input" type="text" placeholder="새 휴대폰 번호" aria-label="Input">
                        <p class="msgtag">인증번호를 발송 했습니다.</p>
                    </div>
                    <div class="pw-login">
                        <span>-9:12</span>
                        <input class="uk-input" type="text" placeholder="인증번호" aria-label="Input">
                        <p class="c_red msgtag">인증번호가 틀렸습니다.</p>
                    </div>
                </div>
            </li>
            <li class="snsimg">
                <h3>로그인 연동 Google</h3>
                <img src="${path}/resources/images/icon/google-g.png" class="on">
                <img src="${path}/resources/images/icon/apple.png">
            </li>
        </ul>
        <button type="button" class="bt_gradient w100" onclick="location='72-2휴대폰재인증.html'">회원정보 저장</button>   
    </div>

    <!--휴대폰번호 변경 토글-->
    <script>
        document.getElementById('hp-change').addEventListener('click', function() {
            document.querySelector('.ph-change').style.display = 'block';
        });
    
        document.getElementById('close-btn').addEventListener('click', function() {
            document.querySelector('.ph-change').style.display = 'none';
        });
    </script>

    <!--이미지등록-->
 <script>
    const defaultImage = "${path}/resources/images/thum/noimg.png";

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

<script>  

    // 상단 로그아웃 회원탈퇴 토글
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

<!--회원탈퇴모달-->
<div id="unregiste" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

        <button class="uk-modal-close-default" type="button" uk-close></button>
        <div class="uk-modal-header">
            <h2 class="uk-modal-title">회원탈퇴</h2>
        </div>
        <div class="uk-modal-body uk-text-center mb20 mt20 tal">
            <p class="c_gray mb15">
                <span uk-icon="icon: check;"></span> 채널 삭제<br>
                <span uk-icon="icon: check;"></span> 영상 삭제<br>
                <span uk-icon="icon: check;"></span> 팬 게시글 익명처리<br>
                <span uk-icon="icon: check;"></span> 영상 댓글 익명처리                
            </p>
            <p>회원가입을 취소 하시겠습니까?</p>
        </div>
       
        <div class="uk-modal-footer uk-text-center">
            <button class="uk-button uk-button-default uk-modal-close" type="button">취소</button>
            <button class="uk-button uk-button-danger ml20" type="button">탈퇴</button>
        </div>
    </div>
</div>
</body>

</html>