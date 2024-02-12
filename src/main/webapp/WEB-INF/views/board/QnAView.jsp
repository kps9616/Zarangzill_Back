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
    <script>
        var token = $("meta[name='_csrf']").attr("content");
        var header = $("meta[name='_csrf_header']").attr("content");

        $(document).ready(function(){
            // 실행할 기능을 정의해주세요.
        });


        //게시글 삭제
        function fnMemberWithdrawal(){
            $("#flag_use").val("N");
            var formData = $("#form1").serialize();
            $.ajax({
                cache : false,
                url : "/board/updateBoard",
                type : 'POST',
                data : formData,
                beforeSend : function(xhr){
                    xhr.setRequestHeader(header, token);
                },
                success : function(data) {
                    var jsonObj = JSON.parse(data);
                },
                error : function(xhr, status) {
                    alert(xhr + " : " + status);
                }
            });

        }
    </script>
</head>
<body>
    <form id="form1" name="form1" method="post">
        <input type="hidden" name="board_id" id="board_id" value="${qnaInfo.id}">
        <input type="hidden" name="flag_use" id="flag_use">
    </form>
     <!--탑-->
     <div class="top-bx bline">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        문의/제안
        <a href="#modal-center" class="top-right pd15 c_red" uk-icon="icon: trash" uk-toggle></a>
    </div>
    <div class="container"> 
       <div class="bbs_view">
            ${qnaInfo.description}
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
</body>

</html>