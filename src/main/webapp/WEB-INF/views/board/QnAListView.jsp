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
    <script>
        $(document).ready(function(){

        });

        function boardSave(){
            var formData = $("#boraForm").serialize();
            $.ajax({
                type:'post',   //post 방식으로 전송
                url:'/board/createBoard',   //데이터를 주고받을 파일 주소
                data:formData,   //위의 변수에 담긴 데이터를 전송해준다.
                dataType:'json',   //html 파일 형식으로 값을 담아온다.
                success : function(data){   //파일 주고받기가 성공했을 경우. data 변수 안에 값을 담아온다.
                    alert("저장했습니다.");
                    location.reload();
                },
                error: function (request, status, error) {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

                }
            });
        }
    </script>
</head>
<body>
     <!--탑-->
     <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
       문의/제안        
    </div>
    <div class="container"> 
        <div class="bbs_inp">
            <form class="form-signin" id="boraForm">
                <input class="uk-input" type="text" id="subject" name="subject" placeholder="제목을 입력해주세요" aria-label="Input">
                <input class="uk-input" type="hidden" id="type" name="type" value="4" aria-label="Input">
                <textarea class="inp_txtr mb20" id="description" name="description" placeholder="문의 내용을 입력해주세요"></textarea>

                <button type="button" class="bt_gradient w100" onclick="boardSave();">>문의 등록</button>
            </form>
        </div>
        <c:choose>
            <c:when test="${qnaList.size() > 0 }">
                <ul class="bbs_list mt40">
                    <c:forEach var="qnaInfo" items="${qnaList}">
                    <li>
                        <a href="/board/inquirySuggestionView?id=${qnaInfo.id}" class="tit-link">
                            <c:choose>
                                <c:when test="${empty(qnaInfo.updated_at)}">
                                    <em>${qnaInfo.created_at}</em>
                                </c:when>
                                <c:otherwise>
                                    <em>${qnaInfo.updated_at}</em>
                                </c:otherwise>
                            </c:choose>
                            <div class="clamp">
                                    ${qnaInfo.description}
                            </div>

                            <c:choose>
                                <c:when test="${ qnaInfo.reply_yn eq 'N' }">
                                    <div class="txt_icon b_gray">답변대기</div>
                                </c:when>
                                <c:otherwise>
                                    <div class="txt_icon b_point">답변완료</div>
                                </c:otherwise>
                            </c:choose>

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
    -->
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