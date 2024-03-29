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
     <!--탑-->
     <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        알림
        <a href="${path}/#none" class="top-right c_point">모두 읽음</a>
    </div>
    <div class="container-full"> 
        <div class="alarm_list">
            <ul class="uk-animation-slide-bottom">
                
                <li>
                    <img src="${path}/images/thum/jarang.png">
                    <a href="${path}/#modal-full" class="alarm-link alarm-bx" uk-toggle>
                            <div class="alarm-tit">자랑질</div>
                            <div class="alarm-txt">♣♣2023년 7월 9일 02시 부터 4시간 동안 긴급 시스템 점검이 진행됩니다.점검이 진행됩니다점검이</div>
                            <div class="alarm-time">10분 전</div>
                            <em uk-icon="chevron-right"></em> 
                        <button class="delete-button b_gray"><span uk-icon="icon:  trash; ratio:1"></span></button>
                    </a>
                </li>
                <li class="unread">
                    <img src="${path}/images/thum/jarang.png">
                    <a href="${path}/#none" class="alarm-link alarm-bx">
                        <div class="alarm-tit">자랑질<span>영상이 신고되었습니다</span></div> 
                        <div class="alarm-txt">완벽한 궁극의 아이돌 트와이스 CE완벽한 궁극의 아이돌 트와이스TWICE</div>
                        <div class="alarm-time">10분 전</div>
                        <em uk-icon="chevron-right"></em> 
                        <button class="delete-button"><span uk-icon="icon:  close; ratio:1.2"></button>  
                    </a>                    
                </li>   
                <li>
                    <img src="${path}/images/thum/jarang.png">
                    <a href="${path}/31-3공지사항뷰.html" class="alarm-link alarm-bx">
                            <div class="alarm-tit">자랑질</div>
                            <div class="alarm-txt">1년동안 로그인 하지 않아 2023년 7월 19일 휴면계정으로 전화 예정되어 안내드립니다</div>
                            <div class="alarm-time">10분 전</div>
                            <em uk-icon="chevron-right"></em> 
                        <button class="delete-button">삭제</button>
                    </a>
                </li>
            </ul>
        </div>

    </div>   
    
 
   
 <!--채널초대모달 --> 
 <div id="invte-modal" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-default" type="button" uk-close></button>        
        <div class="uk-modal-body">
            <div class="invite-modal">
                <div class="inv-img"><img src="${path}/images/thum/grup03.jpg"></div>
                <div class="inv-tit">twice.official</div>
                <div class="inv-txt">트와이스 공식 채널</div>
                <div class="inv-msg">채널멤버 초대를 받았습니다.</div>
                <div class="inv-msg">거절했습니다.</div>
                <div class="inv-msg">멤버가 되었습니다.</div>
            </div>
        </div>
        <div class="uk-modal-footer uk-text-center">
            <a href="${path}/#msg-modal" class="sm-btn-line-gray" uk-toggle>거절</a>
            <a href="${path}/#msg-modal" class="sm-btn-line-blue" uk-toggle>수락</a>
        </div>
    </div>
     
 </div>

 <!--채널초대응답모달--> 
 <div id="msg-modal" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-default" type="button" uk-close></button>        
        <div class="uk-modal-body">
            <div class="invite-modal">
                <div class="inv-img"><img src="${path}/images/thum/grup03.jpg"></div>
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

<!--알림뷰 팝업-->
<div id="modal-full" class="uk-modal-full b_white" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-default" type="button" uk-close></button>
        <div class="uk-modal-header">
            <h2 class="uk-modal-title tac">2023.07.11 10:25</h2>
        </div>
        <div class="uk-padding-large" uk-overflow-auto>
            <div class="view-contents">
                긴급 서버 점검이 2023년 7월 12일 02:00 ~ 06:00 4시간 동안 이루어집니다. 사용자의 폭발적 증가로 인한 대규모 서버 증설과 최적화 작업이 이루어집니다. 
                점검 시간동안 접속이 불가능하니 양해 부탁드립니다.

            </div>
        </div>
        
    </div>
</div>


 <!--알림 스와이프 삭제 애니-->
<script>
    //클릭이벤트는 뷰페이지 이동 스와이프는 삭제버튼 노출 , 40% 이상 밀면 삭제
    document.querySelectorAll('li').forEach(li => {
            let startX;
            let isSwiping = false;
            let isDeleteButtonVisible = false;

            const deleteButton = li.querySelector('.delete-button');
            const alarmLink = li.querySelector('.alarm-link');

            alarmLink.addEventListener('touchstart', e => {
                startX = e.touches[0].pageX;
                isSwiping = true;
            });

            alarmLink.addEventListener('touchmove', e => {
                if (!isSwiping) return;
                const x = e.touches[0].pageX;
                const diff = startX - x;

                if (diff > 60) {
                    isDeleteButtonVisible = true;
                    deleteButton.style.transform = 'translateX(0%)';
                } else if (diff < -60 || diff < 0) {
                    isDeleteButtonVisible = false;
                    deleteButton.style.transform = 'translateX(100%)';
                }

                if (diff > window.innerWidth * 0.3) {
                    li.style.transition = 'transform 0.3s';
                    li.style.transform = 'translateX(-100%)';
                    setTimeout(() => {
                        li.remove();
                    }, 300);
                }
            });

            alarmLink.addEventListener('touchend', () => {
                isSwiping = false;
            });

            deleteButton.addEventListener('click', () => {
                li.style.transition = 'transform 0.3s';
                li.style.transform = 'translateX(-100%)';
                setTimeout(() => {
                    li.remove();
                }, 300);
            });

            alarmLink.addEventListener('click', e => {
                if (isDeleteButtonVisible) {
                    e.preventDefault();
                    isDeleteButtonVisible = false;
                    deleteButton.style.transform = 'translateX(100%)';
                }
            });
        });
</script>
</body>

</html>