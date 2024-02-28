<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    
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
    <script>
        var errMsg = "<c:out value="${errMsg}"/>";

        $(document).ready(function(){
            if(errMsg != ""){
                alert(errMsg);
            }

            $('#allAgree').on('change', function() {
                /* 실행문 */
                if($('#allAgree').is(':checked')){
                    $('.allAgree').prop('checked', true);
                } else {
                    $('.allAgree').prop('checked', false);
                }
            });

            $('#markgChk').on('change', function() {
                /* 실행문 */
                fnMarkChek();
            });

            $('#formAgree').submit(function() {
                var agreeCnt = $('.allAgree').length;
                var agreeCheck = $('.allAgree:checked').length;

                fnMarkChek();

                if(agreeCnt != agreeCheck){
                    alert("이용약관 동의는 필수입니다.")
                    return false;
                }
            });

        });

        function fnMarkChek(){
            if($('#markgChk').is(':checked')){
                $('#markgChk').val("Y")
            } else {
                $('#markgChk').val("N")
            }
        }
    </script>
</head>
<body>


     <!--탑-->
     <div class="top-bx bline">
        <a href="#cancel" class="top-left link-txt" uk-toggle>취소</a>
        회원가입        
    </div>
    <form method="post" action="<c:url value="/snsSignUp"/>" id="formAgree">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <div class="container pt20">
       <h3>이용약관</h3>
        <ul class="join-agree">
            <li>
                <label><input class="uk-checkbox" type="checkbox" id="allAgree"> 모두 동의</label>
            </li>
            <li>
                <label><input class="uk-checkbox allAgree" type="checkbox"> [필수] 이용약관 동의</label>
                <a href="#agree" class="txt-link"  uk-toggle>보기</a>
            </li>
            <li>
                <label><input class="uk-checkbox allAgree" type="checkbox" > [필수] 개인정보 수집 및 이용 동의</label>
                <a href="#policy" class="txt-link"  uk-toggle>보기</a>
            </li>
            <li>
                <label><input class="uk-checkbox" type="checkbox" name="markgChk" id="markgChk" value="N" > [선택]마케팅 및 광고성 정보수신 동의</label>
            </li>
        </ul>
        <input name="email" type="hidden" value="${email}">
        <button type="submit" class="bt_gradient w100" form="formAgree">다음</button>
    </div>
    </form>
     <!--이용약관 모달-->
    
         <div id="agree" uk-modal>
             <div class="uk-modal-dialog">
                 <button class="uk-modal-close-default" type="button" uk-close></button>
                 <div class="uk-modal-header">
                     <h2 class="uk-modal-title">약관동의</h2>
                 </div>
                 <div class="uk-modal-body" uk-overflow-auto>
                     <p>${useTermsInfo.description}</p>
                 </div>
                 <div class="uk-modal-footer tac">
                     <button class="uk-button uk-button-default uk-modal-close" type="button">확인</button>
                 </div>
             </div>
         </div>
        <!--개인정보취급방침-->
         <div id="policy" uk-modal>
            <div class="uk-modal-dialog">
                <button class="uk-modal-close-default" type="button" uk-close></button>
                <div class="uk-modal-header">
                    <h2 class="uk-modal-title">개인정보 수집 및 이용 동의</h2>
                </div>
                <div class="uk-modal-body" uk-overflow-auto>
                    <p>${privacyStatementInfo.description}</p>
                </div>
                <div class="uk-modal-footer tac">
                    <button class="uk-button uk-button-default uk-modal-close" type="button">확인</button>
                </div>
            </div>
        </div>
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