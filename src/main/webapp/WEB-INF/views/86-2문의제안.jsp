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
    <style>
      
    </style>
</head>
<body>
     <!--탑-->
     <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
       문의/제안        
    </div>
    <div class="container"> 
        <div class="bbs_inp">
            <textarea class="inp_txtr mb20" name="" placeholder="문의 내용을 입력해주세요"></textarea>
            <button type="button" class="bt_gradient w100">문의 등록</button>
        </div>

        <ul class="bbs_list mt40">
            <li>                
                <a href="${path}/87-2문의제안-view.html" class="tit-link">
                    <em>2023.09.22  19:00</em>
                    <div class="clamp">채널이 삭제되었습니다. 기여자로 등록된 영상을 백업해 두지 않았는데 채널이나 영상을 복구 할 수 있나요?  
                    </div> 
                    <div class="txt_icon b_gray">답변대기</div>              
                </a>
               
                <a href="${path}/#modal-center" class="uk-icon-link" uk-icon="trash" uk-toggle></a>
            </li> 
            <li>                
                <a href="${path}/87-2문의제안-view.html" class="tit-link">
                    <em>2023.09.12  10:00</em>
                    <div class="clamp">문의 내용이 보여집니다. 내용이 너무 길어서 3줄이 넘어 가면 이후 ...처리 됩니다. 내용의 3줄까지만 보여지고 클릭해서 문의 내용 보기에서 문의 내용을 모두  확인 할 수 있습니다.                        
                    </div>
                    <div class="txt_icon b_point">답변완료</div>                    
                </a>
                <a href="${path}/#modal-center" class="uk-icon-link" uk-icon="trash" uk-toggle></a>
            </li>
                       
        </ul>
        <!--데이터  없을시-->
        <div class="nonedb"><span uk-icon="icon: warning"></span><br>문의 내용이 없습니다.</div>
    </div>   
    
    <!--문의 삭제하기-->
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
   
</body>

</html>