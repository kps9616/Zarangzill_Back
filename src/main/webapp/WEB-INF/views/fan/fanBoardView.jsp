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

        function fnDeleteBoardReply(reply_id){
            if(confirm("삭제하시겠습니까?")){
                $.ajax({
                    cache : false,
                    url : "/board/deleteBoardReply",
                    type : 'POST',
                    data : {
                        "reply_id" : reply_id
                    },
                    success : function(data) {
                        if(data.response == "success"){
                            alert("삭제했습니다.");
                            location.reload();
                        } else {
                            alert("삭제 실패했습니다.");
                        }
                    }, // success
                    /*beforeSend : function(xhr){
                        xhr.setRequestHeader(header, token);
                    },*/
                    error : function(xhr, status) {
                        alert(xhr + " : " + status);
                    }
                });
            }
        }
    </script>

</head>
<body>

    <div class="container-full b_grayLB">
        <div class="top-bx">
            <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>    
            <div class="top-team-thum pt10">
                <img src="${path}/images/thum/${fanBoardInfo.channel_profile_image}">
                <div class="group-thum">
                    <p>${fanBoardInfo.channel_name}</p>
                    <span>${fanBoardInfo.date_diff}일 전</span>
                </div>
            </div>        
        </div>
             

    </div>
    <!--container-->
    <div class="container">
        
        <div class="top-bbs-team">
            ${fanBoardInfo.board_description}
        </div>

        <div class="ch-bbs-bx pl20">
            <ul class="ch-inner">
                <c:forEach var="boardReplyInfo" items="${fanBoardInfo.boardReplyList}">
                <c:choose>
                <c:when test="${boardReplyInfo.reply_flag_use eq 'Y'}">
                    <li class="ch-bbs-list">
                        <div class="chbbslist-img">
                            <img src="${path}/images/thum/${boardReplyInfo.profile_image}">
                        </div>
                        <div class="chbbslist-bx">
                            <div class="chbbslist-name">
                                ${boardReplyInfo.userNm}<span>${boardReplyInfo.date_diff}일 전</span>
                                <c:choose>
                                    <c:when test="${fanBoardReplyInfo.reply_creator eq sessionScope.loginDto.userID}">
                                        <em>
                                            <a href="#" class="c_red" uk-icon="icon: close" onclick="fnDeleteBoardReply(${boardReplyInfo.reply_id})"></a>
                                        </em>
                                    </c:when>
                                    <c:otherwise>
                                        <em  id="pan-toggle" uk-icon="icon: more-vertical">
                                            <div id="pan-toggle-con">
                                                <a href="${path}/#modal-group-1" uk-toggle>신고하기</a>
                                            </div>
                                        </em>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="chbbslist-text">
                                <a href="${path}/#none">
                                    <p>${boardReplyInfo.reply_description}.</p>
                                </a>
                            </div>
                        </div>
                    </li>
                </c:when>
                    <c:otherwise>
                        <li class="ch-bbs-list">
                            <div class="chbbslist-img">
                                <img src="${path}/images/thum/grup01.jpg">
                            </div>
                            <div class="chbbslist-bx">
                                <div class="chbbslist-name">
                                    different team<span>3일 전</span>
                                    <em>
                                        <a href="${path}/#none" class="c_red" uk-icon="icon: close"></a>
                                    </em>

                                </div>
                                <div class="chbbslist-text">
                                    <a href="${path}/#none">
                                        <p class="c_red">신고로 삭제되었습니다.</p>
                                    </a>
                                </div>
                            </div>

                        </li>
                    </c:otherwise>
                </c:choose>
                </c:forEach>
                

            </ul>
        </div>

    </div>
    <!--container end-->
   

    <!--신고하기 모달 pan-->
    <div id="modal-group-1" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="uk-modal-header">
                <h2 class="uk-modal-title">신고하기</h2>
            </div>
            <div class="uk-modal-body" uk-overflow-auto>
                <div class="flex-column">
                    <label class="pb10"><input class="uk-radio" type="radio" name="radio" checked><span class="pl5">음란/성적</span></label>
                    <label class="pb10"><input class="uk-radio" type="radio" name="radio"><span class="pl5">폭력/괴롭힘</span></label>
                    <label class="pb10"><input class="uk-radio" type="radio" name="radio"><span class="pl5">위험/혐오</span></label>
                    <label class="pb10"><input class="uk-radio" type="radio" name="radio"><span class="pl5">표절/권리 침해</span></label>
                    <textarea class="uk-textarea bdgray" rows="5" placeholder="내용" aria-label="Textarea"></textarea>
                </div>
            </div>
            <div class="uk-modal-footer uk-text-right">
                <button class="uk-button uk-button-default uk-modal-close" type="button">취소</button>
                <button class="uk-button uk-button-primary" type="button">신고</button>
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
        //신고하기 
        $('#pan-toggle').click(function () {
            $('#pan-toggle-con').toggle()
        });


    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var targetDivId = window.location.hash.substring(1); // 해시 값을 가져와서 "#" 제거
            var targetDiv = document.getElementById(targetDivId);
            
            if(targetDiv) {
                targetDiv.scrollIntoView({behavior: "smooth"});
            }
        });
    </script>
</body>

</html>