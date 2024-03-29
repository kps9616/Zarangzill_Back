<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
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
     <!--탑-->
     <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        팬 댓글
    </div>
 
    <div class="container"> 
        <div class="my-ch-bx">
            <ul>
                <c:forEach var="fanBoardReplyInfo" items="${fanBoardReplyList}">
                <c:choose>
                <c:when test="${fanBoardReplyInfo.board_flag_use eq 'Y'}">
                    <li>
                        <c:if test="${fanBoardReplyInfo.reply_creator eq sessionScope.loginDto.userID}">
                        <em>
                            <a href="#" class="c_red" uk-icon="icon: close" onclick="fnDeleteBoardReply(${fanBoardReplyInfo.reply_id})"></a>
                        </em>
                        </c:if>
                        <div class="mych-bx">
                            <div class="mych-img">
                                <img src="${path}/images/thum/${fanBoardReplyInfo.channel_profile_image}">
                                <span>${fanBoardReplyInfo.channel_name}</span>
                            </div>
                            <div class="mych-text">
                                    ${fanBoardReplyInfo.subject}
                            </div>
                            <div class="comment-view">
                                <span uk-icon="icon:comment-arrow"></span>
                                <a href="/board/fanBoardView?board_id=${fanBoardReplyInfo.board_id}&channel_id=${fanBoardReplyInfo.channel_id}">
                                        ${fanBoardReplyInfo.reply_description}
                                </a>
                            </div>
                        </div>
                    </li>
                </c:when>
                    <c:otherwise>
                        <li>
                            <em>
                                <a href="${path}/#none" class="c_red" uk-icon="icon: close"></a>
                            </em>

                            <div class="mych-bx">
                                <div class="mych-img">
                                    <img src="${path}/images/thum/face01.jpg">
                                    <span>방탄소년단</span>
                                </div>
                                <div class="mych-text c_red">
                                    게시물이 삭제되었습니다.
                                </div>
                                <div class="comment-view">
                                    <span uk-icon="icon:comment-arrow"></span>
                                    <%--<a href="${path}/41-3팬게시물.html">아무말</a>--%>
                                </div>
                            </div>
                        </li>
                    </c:otherwise>
                </c:choose>
                </c:forEach>
            </ul>
        </div>

    </div>  
     
   
</body>

</html>