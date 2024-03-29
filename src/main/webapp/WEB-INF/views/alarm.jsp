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
    
</head>
<body>
     <!--탑-->
     <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        알림
        <a href="#none" class="top-right c_point">모두 읽음</a>
    </div>
    <div class="container-full"> 

        <div class="alarm_list">
            <ul class="uk-animation-slide-bottom">
                <li class="unread">
                    <img src="${path}/resources/images/thum/jarang.png">
                    <a href="#none" class="alarm-link alarm-bx">
                        <div class="alarm-tit">자랑질<span>영상이 신고되었습니다</span></div> 
                        <div class="alarm-txt">완벽한 궁극의 아이돌 트와이스 CE완벽한 궁극의 아이돌 트와이스TWICE</div>
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em> 
                        <button class="delete-button">삭제</button>  
                    </a>                    
                </li>             
                <li class="unread">
                    <img src="${path}/resources/images/thum/jarang.png">
                    <a href="25-2댓글.html#targetDiv" class="alarm-bx">
                        <div class="alarm-tit">자랑질<span>영상 댓글이 신고되었습니다.</span></div> 
                        <div class="alarm-txt">└ ♣♣완벽한 궁극의 아이돌 트와이스 ✧트와이스✧ #TWICE</div>
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em>   
                    </a>                    
                </li>
                <li class="unread">
                    <img src="${path}/resources/images/thum/jarang.png">
                    <a href="38-2채널.html" class="alarm-bx">
                        <div class="alarm-tit">자랑질<span>♣♣채널이 신고되었습니다.</span></div> 
                        <div class="alarm-txt">TWICE</div>
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em>   
                    </a>                    
                </li>
                <li class="unread">
                    <img src="${path}/resources/images/thum/jarang.png">
                    <a href="41-3팬게시물.html" class="alarm-bx">
                        <div class="alarm-tit">자랑질<span>♣♣팬 게시글이 신고되었습니다.</span></div> 
                        <div class="alarm-txt">팬의 신고된 글</div>
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em>   
                    </a>                    
                </li>
                <li class="unread">
                    <img src="${path}/resources/images/thum/jarang.png">
                    <a href="41-3팬게시물.html#targetDiv" class="alarm-bx">
                        <div class="alarm-tit">자랑질<span>팬 댓글이 신고되었습니다.</span></div> 
                        <div class="alarm-txt">└ ♣♣완벽한 궁극의 아이돌 트와이스 ✧트와이스✧ #TWICE</div>
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em>   
                    </a>                    
                </li>
                <li class="">
                    <img src="${path}/resources/images/thum/jarang.png">
                    <a href="#none" class="alarm-bx">
                        <div class="alarm-tit">자랑질<span>신고한 영상 댓글에 문제가 없습니다.</span></div> 
                        <div class="alarm-txt">└ 완벽한 궁극의 아이돌 트와이스 ✧트와이스✧ #TWICE</div>
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em>
                    </a>                    
                </li>
                <!--멤버초대-->
                <li>
                    <img src="${path}/resources/images/thum/jarang.png">
                    <a  href="#invte-modal" class="alarm-bx" uk-toggle>
                        <div class="alarm-tit">트와이스<span>♣♣채널에 멤버 초대 받았습니다.</span></div> 
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em>
                    </a>                    
                </li>
                <li class="">
                    <img src="${path}/resources/images/thum/jarang.png">
                    <a href="#none" class="alarm-bx">
                        <div class="alarm-tit">자랑질<span>채널에 멤버가 추가되었습니다.</span></div> 
                        <div class="alarm-txt">나연</div>
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em>
                    </a>                    
                </li>
                <li class="">
                    <img src="${path}/resources/images/thum/jarang.png">
                    <a href="#none" class="alarm-bx">
                        <div class="alarm-tit">자랑질<span>채널 멤버 초대를 거절했습니다.</span></div> 
                        <div class="alarm-txt">나연</div>
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em>
                    </a>                    
                </li>
                <li class="">
                    <img src="${path}/resources/images/thum/jarang.png">
                    <a href="#none" class="alarm-bx">
                        <div class="alarm-tit">자랑질<span>채널 멤버가 나갔습니다.</span></div> 
                        <div class="alarm-txt">나연</div>
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em>
                    </a>                    
                </li>
            </ul>
        </div>

    </div>   
    
<script>
    $( document ).ready(function() {
        $("#okMember").hide();
        $("#noMember").hide();
    });

    function fn_okJoinMember() {
        $("#joinMemberDiv").hide();
        $("#okMember").show();
        fn_post("channelForm", "channel/fans/ins");
    }

    function fn_noJoinMember() {
        $("#joinMemberDiv").hide();
        $("#noMember").show();
    }

</script>
   
 <!--채널초대모달 --> 
 <div id="invte-modal" class="uk-flex-top" uk-modal>

     <form id="channelForm" name="channelForm" method="post">
         <input type="hidden" id="userId" name="userId" value="${userId}"/>
         <input type="hidden" id="channelId" name="channelId" value="1"/>
     </form>

    <div class="uk-modal-dialog">
        <button class="uk-modal-close-default" type="button" uk-close></button>        
        <div class="uk-modal-body">
            <div class="invite-modal" id="joinMemberDiv">
                <div class="inv-img"><img src="${path}/resources/images/thum/grup03.jpg"></div>
                <div class="inv-tit">twice.official</div>
                <div class="inv-txt">트와이스 공식 채널</div>
                <div class="inv-msg">채널멤버 초대를 받았습니다.</div>
            </div>

            <div class="invite-modal" id="noMember">
                <div class="inv-img"><img src="${path}/resources/images/thum/grup03.jpg"></div>
                <div class="inv-msg">거절했습니다.</div>
            </div>
            <div class="invite-modal" id="okMember">
                <div class="inv-img"><img src="${path}/resources/images/thum/grup03.jpg"></div>
                <div class="inv-msg">멤버가 되었습니다.</div>
            </div>
        </div>
        <div class="uk-modal-footer uk-text-center">
            <a href="#msg-modal" class="sm-btn-line-gray" uk-toggle onclick="fn_noJoinMember();">거절</a>
            <a href="#msg-modal" class="sm-btn-line-blue" uk-toggle onclick="fn_okJoinMember();">수락</a>
        </div>
    </div>
     
 </div>

 <!--채널초대응답모달--> 
 <div id="msg-modal" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-default" type="button" uk-close></button>        
        <div class="uk-modal-body">
            <div class="invite-modal">
                <div class="inv-img"><img src="${path}/resources/images/thum/grup03.jpg"></div>
                <div class="inv-tit">twice.official</div>
                <div class="inv-txt">트와이스 공식 채널</div>
                <div class="inv-msg">거절했습니다.</div>
                <div class="inv-msg">멤버가 되었습니다.</div>
            </div>
        </div>
        <div class="uk-modal-footer uk-text-center">
            <button type="button" class="sm-btn-line-gray" >되돌리기</button>
            <button type="button" class="sm-btn-line-blue uk-modal-close">확인</button>
        </div>
    </div>
     
 </div>


</body>

</html>