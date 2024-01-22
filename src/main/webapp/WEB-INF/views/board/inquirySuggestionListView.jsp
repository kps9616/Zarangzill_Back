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
        <c:choose>
            <c:when test="${boardList.size() >0 }">
                <ul class="bbs_list mt40">
                    <c:forEach var="boardInfo" items="${boardList}">
                    <li>
                        <a href="board/inquirySuggestionView?id=${boardInfo.id}" class="tit-link">
                            <c:choose>
                                <c:when test="${empty(boardInfo.updated_at)}">
                                    <em>${boardInfo.created_at}</em>
                                </c:when>
                                <c:otherwise>
                                    <em>${boardInfo.updated_at}</em>
                                </c:otherwise>
                            </c:choose>
                            <div class="clamp">
                                    ${boardInfo.description}
                            </div>
                            <div class="txt_icon b_gray">답변대기</div>
                        </a>

                        <a href="#modal-center" class="uk-icon-link" uk-icon="trash" uk-toggle></a>
                    </li>
                    </c:forEach>
                </ul>
            </c:when>
            <c:otherwise>
                <!--데이터  없을시-->
                <div class="nonedb"><span uk-icon="icon: warning"></span><br>문의 내용이 없습니다.</div>
            </c:otherwise>
        </c:choose>
    </div>   
    
    <!--문의 삭제하기
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
    -->
   
</body>

</html>