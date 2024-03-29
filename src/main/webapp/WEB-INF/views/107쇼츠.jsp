<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" type="text/css"  href="${path}/css/reset.css?20230921" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/video.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/style.css" >
  
    
    <script src="${path}/js/jquery.min.js"></script>
    <script src="${path}/js/uikit.js"></script>
    <script src="${path}/js/uikit-icons.js"></script>
    <script src="${path}/js/script.js"></script>
    <title>비디오 레이아웃</title>
</head>

<body>
    <div class="v_container">
        <div class="v_video">

            <video id="videoElement" class="videoElement" preload="metadata" autoplay loop>
                <source id="videoSource" src="${path}/images/video/svideo.mp4" type="video/mp4">
                브라우저가 비디오 태그를 지원하지 않습니다.
            </video>
            <div class="v_top_icons">
                <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
            </div>

            <!--비디오 약간어둡게-->
            <div id="videoOverlay"></div>
        </div>

    </div>
    <div class="v_contents">
        <ul>
            <li class="v_con_info">
                <div class="v_img"><a href="${path}/91-2채널.html"><img src="${path}/images/thum.jpg"></a></div>
                <div class="v_grup"><a href="${path}/91-2채널.html">Hong Dae</a></div>
                <div><button type="button" id="subscribe-button" class="v_button">팬</button></div>
            </li>
            <li class="v_con_tit">홍대 댄스 여신 준비된 아이돌 데뷔 임박  <span>#홍대여신 #아이돌 연습생들  #홍대 #댄스여신들</span> </li>
            <li class="v_con_name">@홍대여신</li>
        </ul>
    </div>
    <div class="v_side_icons">
        <a href="${path}/#none" class="vsicon" id="Btn-comment-judge"><span uk-icon="icon: side01; ratio: 1.1"></span>심사하기</a>
        <a href="${path}/#none" id="Btn-comment-winner" class="vsicon"><span uk-icon="icon: side02; ratio: 1.2"></span><em class="new_bg">new</em>우승예측</a>
        <a href="${path}/#none" id="Btn-comment" class="vsicon"><span uk-icon="icon: side03; ratio: 1.2" class="check_on"></span>77<i class="sr-only">댓글</i><em uk-icon="icon: v_check; ratio: 1.3" class="circle_check"></em></a>
        <a href="${path}/#none" class="vsicon"><span uk-icon="icon: side04; ratio: 1.2" class="check_on"></span>33 <i class="sr-only">즐겨찾기</i><em uk-icon="icon: v_check; ratio: 1.3" class="circle_check"></em></a>
        <a href="${path}/#none" class="vsicon"><span uk-icon="icon: side05; ratio: 1.2"></span>22<i class="sr-only">공유</i></a>
        <a href="${path}/#none" class="vsicon"><span uk-icon="icon: side06; ratio: 1.1"></span>음악사용</a>
        <a href="${path}/#none" class="vsicon main-more"  id="main-toggle"><span uk-icon="icon: more;"></span>
            <div id="main-toggle-con">
                <button type="button" data-uk-toggle="#modal-group-1">신고하기</button>
            </div>

           
        </a>
    </div>
    
    
    <script>
    
    //구독버튼 class추가
    // 버튼 요소 가져오기
    const subscribeButton = document.getElementById('subscribe-button');
    const videoList = ['images/video/svideo.mp4','images/video/test720.mp4','images/video/test720_2.mp4','images/video/test1080.mp4','images/video/test1920.mp4'];
    let videoIndex = 0;
    // 클릭 상태를 저장하는 변수
    let isClicked = false;
    let start_y, end_y;
    let isVideoChange = false;

    // 버튼 클릭 이벤트 리스너 추가
    subscribeButton.addEventListener('click', function() {
    if (!isClicked) {
    subscribeButton.classList.add('bt_subscribe'); // 클릭 시 'clicked' 클래스 추가
    } else {
    subscribeButton.classList.remove('bt_subscribe'); // 다시 클릭하면 'clicked' 클래스 제거
    }
    isClicked = !isClicked; // 클릭 상태 토글
    });


    //비디오 재생할때 body scroll 감추기
    const body = document.body;
    body.style.overflow = 'hidden';
    body.style.background = '#151515';
    const videoElement = document.getElementById('videoElement');

    //비디오 화면 터치 play or pause
    videoElement.addEventListener('click', function() {
        if (videoElement.paused) {
            videoElement.play();
        } else {
            videoElement.pause();
        }
    });

    //비디오 화면 휠
    videoElement.addEventListener('wheel', function(event) {
        var videoSource = document.getElementById("videoSource");
        if (event.deltaY > 0) {
            // scroll up
            if(videoIndex < 4) {
                videoIndex++;
                isVideoChange = true;
            }
            else {
                isVideoChange = false;
            }
        }
        else {
            // scroll down
            if(videoIndex > 0) {
                videoIndex--;
                isVideoChange = true;
            }
            else {
                isVideoChange = false;
            }
        }

        if(isVideoChange) {
            videoSource.setAttribute("src", videoList[videoIndex]);
            videoElement.load();
            videoElement.play();
        }
    });


    //비디오 화면 터치 play or pause
    videoElement.addEventListener('touchstart', function(e) {
        start_y = e.touches[0].pageY;
    });

    //비디오 화면 터치 play or pause
    videoElement.addEventListener('touchend', function(e) {
        end_y= e.changedTouches[0].pageY;

        if(start_y > end_y) {
            nextVideo();
        }
        else if(start_y != end_y) {
            prevVideo();
        }

        if(isVideoChange) {
            var videoSource = document.getElementById("videoSource");
            videoSource.setAttribute("src", videoList[videoIndex]);
            videoElement.load();
            videoElement.play();
        }
    });

    function nextVideo() {
        if(videoIndex < 4) {
            videoIndex++;
            isVideoChange = true;
        }
        else {
            isVideoChange = false;
        }
    }
    function prevVideo() {
        if(videoIndex > 0) {
            videoIndex--;
            isVideoChange = true;
        }
        else {
            isVideoChange = false;
        }
    }

    //신고하기 
    $('#main-toggle').click(function () {
        $('#main-toggle-con').toggle()
        });
    </script>



    <!--댓글 관련-->
     <!-- 영상댓글 모달 -->
     <div id="bottom-modal" class="bmodal">

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

    <!-- 심사하기 -->
    <div id="bottom-modal-judge" class="bmodal">

        <!-- Modal content -->
        <div class="bottom-modal top-radius">

            <div class="uk-modal-header top-radius relative">
                <span uk-icon="icon: close" class="bbtn-close-judge"></span>
                <h2 class="uk-modal-title uk-text-center">심사하기</h2>
            </div>

            <div class="graph-bx">

                <!--서클그래프-->
                <div class="circle-graph-container">
                    <svg width="150" height="150">
                        <circle cx="75" cy="75" r="67" stroke="#D3D3D3" stroke-width="5" fill="none" />
                        <g class="blue-circle-container">
                            <circle cx="75" cy="75" r="67" stroke="#1E90FF" stroke-linecap="round" stroke-width="13" fill="none" stroke-dasharray="439.822971502571" stroke-dashoffset="439.822971502571" id="blue-circle" />
                        </g>
                    </svg>
                    <div class="score-bx">
                        <!--퍼센트 가리기-->
                        <div class="percent-text sr-only" id="percent-text">0%</div>
                        <div class="score"><em>0</em><span>/45</span></div>
                        <div class="circle-txt">특별심사위원</div>
                    </div>
                </div>
                <div class="graph-txt"><span class="c_blue">특별심사위원</span>은 영상마다<br> <span class="c_blue">최대 45점 까지</span> 줄 수 있습니다.</div>

            </div>


            <!--+ - 버튼 움직일 수 없는 범위 버튼 태그에 disabled-->
            <div class="score-container">
                <div class="graph-container">
                    <div class="graph-guidetxt"><em>100%</em><em>200%</em><em>300%</em></div>
                    <div class="graph" id="heap-graph">

                        <label>힙</label>
                        <div class="range-width">
                            <em class="line" style="left: 36%;"></em><em class="line" style="left: 66.6%;"></em>
                            <input type="range" max="300" value="0" oninput="adjust('heap')">
                        </div>

                        <span class="sr-only">0%</span>
                        <button onclick="adjustValue('heap', -1)"  uk-icon="icon:  minus-circle;ratio: 1.5"></button>
                        <button onclick="adjustValue('heap', 1)" uk-icon="icon: plus-circle; ratio: 1.5" ></button>
                    </div>
                    <div class="graph" id="individuality-graph">

                        <label>개성</label>
                        <div class="range-width">
                            <em class="line" style="left: 33.3%;"></em><em class="line" style="left: 66.6%;"></em>
                            <input type="range" max="300" value="0" oninput="adjust('individuality')">
                        </div>
                        <span class="sr-only">0%</span>
                        <button onclick="adjustValue('individuality', -1)" uk-icon="icon:  minus-circle;ratio: 1.5"></button>
                        <button onclick="adjustValue('individuality', 1)" uk-icon="icon:  plus-circle;ratio: 1.5"></button>
                    </div>
                    <div class="graph" id="cuteness-graph">

                        <label>귀여움</label>
                        <div class="range-width">
                            <em class="line" style="left: 33.3%;"></em><em class="line" style="left: 66.6%;"></em>
                            <input type="range" max="300" value="0" oninput="adjust('cuteness')">
                        </div>

                        <span class="sr-only">0%</span>
                        <button onclick="adjustValue('cuteness', -1)" uk-icon="icon:  minus-circle;ratio: 1.5"></button>
                        <button onclick="adjustValue('cuteness', 1)" uk-icon="icon:  plus-circle;ratio: 1.5"></button>
                    </div>
                </div>

            </div>
            <div class="container mt20 pb30">
                <button type="button" class="bt_gradient w100">제출</button>
            </div>

        </div>
    </div>

    <div id="bottom-modal-winner" class="bmodal">

        <!-- Modal content -->
        <div class="bottom-modal top-radius"  style="height: auto;">

            <div class="uk-modal-header top-radius relative">
                <span uk-icon="icon: close" class="bbtn-close-winner"></span>
                <h2 class="uk-modal-title uk-text-center">우승예측 투표하기</h2>
            </div>

            <div class="modal-vote-con">
                <div class="mod-team-txt">홍대 스트리트 댄스팀. 춤에 대한 열정이 많은 멤버들로  구성된 팀들의 진짜 실력
                    <span>#스트리트 댄스팀 #홍대춤꾼</span>
                </div>
                <div class="mod-team-name">@Hong dae</div>

                <!--투표버튼-->
                <div class="mod-team-btnbx">
                    <div class="mod-btn-black">
                        <h3 class="mb10">8월 우승</h3>
                        <a href="${path}/#">
                            <div><em uk-icon="icon: vote-check;"></em><span>투표완료</span></div>
                        </a>
                    </div>
                    <div class="mod-btn-blue">
                        <h3 class="mb10">30번째 우승</h3>
                        <a href="${path}/#">
                            <div><em uk-icon="icon: vote-ok;"></em><span>투표하기</span></div>
                            <span class="font11">7월 25일 ~ 7월 29일</span>
                        </a>
                    </div>
                </div>
                <!--최근 순위 정보-->

                <div class="mod-w-rank">
                    <h3>최근 순위정보</h3>
                    <div class="w-rank-list">
                        <span>22</span>
                        <em>29주</em>
                    </div>
                    <div class="w-rank-list">
                        <span>32</span>
                        <em>30주</em>
                    </div>
                    <div class="w-rank-list">
                        <img src="${path}/images/icon/crown-yellow.png">
                        <span>1</span>
                        <em>31주</em>
                    </div>
                    <div class="w-rank-list no-line">
                        <span>3</span>
                        <em>32주</em>
                    </div>
                </div>
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
       var modal_judge = document.getElementById('bottom-modal-judge');
       var modal_winner = document.getElementById('bottom-modal-winner');
       var btn = document.getElementById("Btn-comment");
       var btn_judge = document.getElementById("Btn-comment-judge");
       var btn_winner = document.getElementById("Btn-comment-winner");
       var span = document.getElementsByClassName("bbtn-close")[0];
       var span_judge = document.getElementsByClassName("bbtn-close-judge")[0];
       var span_winner = document.getElementsByClassName("bbtn-close-winner")[0];


       // When the user clicks the button, open the modal
       btn.onclick = function() {
            modal.style.display = "block";
       }

       btn_judge.onclick = function() {
           modal_judge.style.display = "block";
       }
       btn_winner.onclick = function() {
           modal_winner.style.display = "block";
       }


       // When the user clicks on <span> (x), close the modal
       span.onclick = function() {
           modal.style.display = "none";
       }
       span_judge.onclick = function() {
           modal_judge.style.display = "none";
       }
       span_winner.onclick = function() {
           modal_winner.style.display = "none";
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

    <!--점수주기-->
    <script>
        const totalPercentage = 300;
        const maxVirtualValue = 45;
        const percentagePerPoint = totalPercentage / maxVirtualValue;

        function adjust(id) {
            const graphElement = document.getElementById(`${id}-graph`);
            const rangeInput = graphElement.querySelector('input[type="range"]');
            const span = graphElement.querySelector('span');

            let otherValue = 0;
            document.querySelectorAll('input[type="range"]').forEach(input => {
                if (input !== rangeInput) otherValue += parseInt(input.value);
            });

            const maxValue = totalPercentage - otherValue;
            if (parseInt(rangeInput.value) > maxValue) rangeInput.value = maxValue;
            span.textContent = `${rangeInput.value}%`;

            // 여기에 handleInputChange 함수를 호출합니다.
            handleInputChange({ target: rangeInput });

            updateCircleGraph();
            updateEmElement();
        }

        function adjustValue(id, value) {
            const graphElement = document.getElementById(`${id}-graph`);
            const rangeInput = graphElement.querySelector('input[type="range"]');
            const currentValue = parseInt(rangeInput.value);
            const newValue = Math.max(0, Math.min(totalPercentage, currentValue + (value * percentagePerPoint)));
            rangeInput.value = newValue;
            adjust(id);
        }

        function updateCircleGraph() {
            const blueCircle = document.getElementById('blue-circle');
            const percentText = document.getElementById('percent-text');

            let sum = 0;
            document.querySelectorAll('input[type="range"]').forEach(input => {
                sum += parseInt(input.value);
            });

            const circlePercent = (sum / totalPercentage) * 100;
            const circumference = 2 * Math.PI * 70;
            const offset = circumference * (1 - circlePercent / 100);

            blueCircle.style.transition = 'stroke-dashoffset 0.5s ease-in-out';
            blueCircle.style.strokeDashoffset = offset;
            percentText.textContent = `${Math.round(circlePercent)}%`;
        }

        function updateEmElement() {
            const emElement = document.querySelector('.score em');
            let sum = 0;
            document.querySelectorAll('input[type="range"]').forEach(input => {
                sum += parseInt(input.value);
            });
            const emValue = Math.round((sum / totalPercentage) * maxVirtualValue);
            emElement.textContent = emValue;
        }



    </script>

    <!--그래프 스타일-->
    <script>

        const rangeInputs = document.querySelectorAll('input[type="range"]')
        const numberInput = document.querySelector('input[type="number"]')
        let isRTL = document.documentElement.dir === 'rtl'

        function handleInputChange(e) {
            let target = e.target
            if (e.target.type !== 'range') {
                target = document.getElementById('range')
            }
            const min = target.min
            const max = target.max
            const val = target.value
            let percentage = (val - min) * 100 / (max - min)
            if (isRTL) {
                percentage = (max - val)
            }

            target.style.backgroundSize = percentage + '% 100%'
        }

        rangeInputs.forEach(input => {
            input.addEventListener('input', handleInputChange)
        })



        // Handle element change, check for dir attribute value change
        function callback(mutationList, observer) {  mutationList.forEach(function(mutation) {
            if (mutation.type === 'attributes' && mutation.attributeName === 'dir') {
                isRTL = mutation.target.dir === 'rtl'
            }
        })
        }

        // Listen for body element change
        const observer = new MutationObserver(callback)
        observer.observe(document.documentElement, {attributes: true})
    </script>



    <script>
        // 하단모달
        /*var modal = document.getElementById('bottom-modal-judge');
        var btn = document.getElementById("Btn-comment");
        var span = document.getElementsByClassName("bbtn-close")[0];

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }*/

    </script>

</body>

</html>