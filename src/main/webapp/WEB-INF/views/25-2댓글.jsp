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

  
</head>
<body>
     <div class="testimg" style="overflow: hidden;">
        <img src="${path}/images/thum/thum01.jpg" >
     </div>
     

     <!-- 영상댓글 모달 -->
     <div id="bottom-modal" class="bmodal" style="display: block;">

         <!-- Modal content -->
         <div class="bottom-modal top-radius">
            
                <div class="uk-modal-header top-radius relative">
                    <span uk-icon="icon: close" class="bbtn-close"></span>
                    <h2 class="uk-modal-title uk-text-center">영상 댓글</h2>
                </div>
                <div class="bttom-modal-con">
                    <div class="ch-bbs-bx">
                        <ul class="ch-inner">
                            <li class="ch-bbs-list">
                                <div class="chbbslist-img red-circle">
                                    <img src="${path}/images/thum/face02.jpg">
                                </div>
                                <div class="chbbslist-bx">
                                    <div class="chbbslist-name">
                                        team member A<span>3일 전</span>
                                        <em  id="pan-toggle" uk-icon="icon: more-vertical">
                                            <div id="pan-toggle-con">
                                            <a href="${path}/#modal-group-1" uk-toggle>신고하기</a>
                                            </div>
                                        </em>                                
                                    </div>
                                    <div class="chbbslist-text">
                                        <a href="${path}/#none">
                                            <p>반갑습니다.</p>
                                        </a> 
                                    </div>
                                </div>                    
                            </li>
                            <li class="ch-bbs-list">
                                <div class="chbbslist-img gray-circle">
                                    <img src="${path}/images/thum/face01.jpg">
                                </div>
                                <div class="chbbslist-bx">
                                    <div class="chbbslist-name">
                                        team member B<span>3일 전</span>
                                        <em>
                                            <a href="${path}/#modal-center" class="c_gray" uk-toggle uk-icon="icon: close"></a>
                                        </em>
                                            
                                    </div>
                                    <div class="chbbslist-text">
                                        <a href="${path}/#none">
                                            <p>환영합니다.</p>  
                                        </a>                                                      
                                    </div>
                                </div>
                                
                            </li>
                            <li class="ch-bbs-list" id="targetDiv">
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
                                            <p>뭐라고 심한말.</p>  
                                        </a>                                                      
                                    </div>
                                </div>
                                
                            </li>
                        </ul>
                    </div>
                </div>
            
                <div class="uk-modal-footer">
                    <div class="msg-send">
                        <div class="msg-send-img">
                            <img src="${path}/images/thum/face01.jpg">
                        </div>
                        <div class="msg-send-inp">
                            <div class="uk-inline w100">
                                <a class="uk-form-icon uk-form-icon-flip on" href="${path}/#" uk-icon="icon: send"></a>
                                <input class="uk-input" type="text" aria-label="Clickable icon" placeholder="글씨가 적혀있으면 class on">
                            </div>
                        </div>
                        
                    </div>
                </div>
         </div>

     </div>

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
            
        // 하단모달
        var modal = document.getElementById('bottom-modal');
        var btn = document.getElementById("Btn-comment");
        var span = document.getElementsByClassName("bbtn-close")[0];

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }

       //댓글위치 타게팅
        document.addEventListener('DOMContentLoaded', function() {
            var modal = document.getElementById("bottom-modal");
            var targetDiv = document.getElementById("targetDiv");
    
            if(window.location.hash === '#targetDiv') {
                modal.style.display = "block";
                targetDiv.scrollIntoView();
            }
        });

        </script> 
</body>

</html>