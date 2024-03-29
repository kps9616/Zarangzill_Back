<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/reset.css" >    
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/video.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/style.css" >

    <script src="${path}/resources/js/jquery.min.js"></script>
    <script src="${path}/resources/js/uikit.js"></script>
    <script src="${path}/resources/js/uikit-icons.js"></script>
    <script src="${path}/resources/js/script.js"></script>

    <!--스와이퍼슬라이더-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
    <title>자랑질앱</title>
  
</head>
<body>

     <!--탑-->
     <div class="top-bx bline">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>        
         우승예측    
    </div>
    
     <h3 class="swp-tit">2023년8월</h3>
        <!-- Swiper -->
     <div class="swiper mySwiper">
       <div class="swiper-wrapper">        
         <div class="swiper-slide">
            
           <div class="swp-img rank-score" title="비디오 썸네일" style="background-image: url(${path}/resources/images/thum/thum02.jpg);">
            <div class="rank-score-num">2</div>
            </div>
           <div class="swp-info">
               <a href="#">
                   <img src="${path}/resources/images/thum/face01.jpg">
                   <span>TWICE</span>
               </a>
               <div class="swp-txt ellipsis2">
                   완벽한 궁극의 아이돌 트와이스<span>#트와이스 #TWICE #공연</span> 
               </div>             
           </div>        
         </div>
   
         <div class="swiper-slide  ">
            <div class="swp-img rank-score" title="비디오 썸네일" style="background-image: url(${path}/resources/images/thum/thum03.jpg);">               
                <div class="rank-score-num"><img src="${path}/resources/images/icon/m-winner.png"></div>
           </div>
           <div class="swp-info">
               <a href="#">
                   <img src="${path}/resources/images/thum/face02.jpg">
                   <span>newjeans</span>
               </a>
               <div class="swp-txt ellipsis2">
                   홍대 아이돌 뉴진스 댄스 동아리<span>#뉴진스 #댄스동아리</span> 
               </div>             
           </div>        
         </div>
   
         <div class="swiper-slide">
            <div class="swp-img rank-score" title="비디오 썸네일" style="background-image: url(${path}/resources/images/thum/thum01.jpg);">
                <div class="rank-score-num">57</div>
           </div>
           <div class="swp-info">
               <a href="#">
                   <img src="${path}/resources/images/thum/group04.jpg">
                   <span>Nya</span>
               </a>
               <div class="swp-txt ellipsis2">
                   아이돌 트와이스의 공연 #역대급 팬덤<span>#트와이스 #TWICE #공연</span> 
               </div>             
           </div>        
         </div>

         <div class="swiper-slide rank-score">
            <div class="swp-img rank-score" title="비디오 썸네일" style="background-image: url(${path}/resources/images/thum/thum02.jpg);">
                <div class="rank-score-num">53</div>
           </div>
            <div class="swp-info">
                <a href="#">
                    <img src="${path}/resources/images/thum/face01.jpg">
                    <span>TWICE</span>
                </a>
                <div class="swp-txt ellipsis2">
                    완벽한 궁극의 아이돌 트와이스<span>#트와이스 #TWICE #공연</span> 
                </div>             
            </div>        
          </div>
    
          <div class="swiper-slide rank-score">
            <div class="swp-img rank-score" title="비디오 썸네일" style="background-image: url(${path}/resources/images/thum/thum01.jpg);">
                <div class="rank-score-num">6</div>
           </div>
            <div class="swp-info">
                <a href="#">
                    <img src="${path}/resources/images/thum/face02.jpg">
                    <span>newjeans</span>
                </a>
                <div class="swp-txt ellipsis2">
                    댄스 동아리 트와이스걸<span>#트와이스걸 #댄스동아리</span> 
                </div>             
            </div>        
          </div>
    
          <div class="swiper-slide">           
            <div class="swp-img filter-gray" title="비디오 썸네일" style="background-image: url(${path}/resources/images/thum/thum03.jpg);">
                <!--삭제된비디오표시s-->
                <div class=" video-del-sw">
                    <span uk-icon="icon: grayimg"></span>
                </div>
                <!--삭제된비디오표시e-->
            </div>
            <div class="swp-info">
                <a href="#">
                    <img src="${path}/resources/images/thum/face02.jpg">
                    <span>newjeans</span>
                </a>
                <div class="swp-txt ellipsis2 c_red">
                   삭제된 영상 입니다.
                </div>             
            </div>       
          </div>
         
          
       </div>
       <div class="swiper-pagination"></div>
     </div>

     <!--주간예측-->
     <div class="swiper mySwiper mt40">
        <div class="swiper-wrapper">   
        
          <div class="swiper-slide">
            <h3 class="h-tit tal">32번째 주 <span>8월 6일 ~ 8월 13일</span></h3>
            <div class="swp-img rank-score" title="비디오 썸네일" style="background-image: url(${path}/resources/images/thum/thum04.jpg);">
                <div class="rank-score-num"><img src="${path}/resources/images/icon/w-winner.png"></div>
           </div>
            <div class="swp-info">
                <a href="#">
                    <img src="${path}/resources/images/thum/group04.jpg">
                    <span>Nya</span>
                </a>
                <div class="swp-txt ellipsis2">
                    아이돌 트와이스의 공연 #역대급 팬덤<span>#트와이스 #TWICE #공연</span> 
                </div>             
            </div>        
          </div>
 
          <div class="swiper-slide">
            <h3 class="h-tit tal">31번째 주 <span>7월 30일 ~ 8월 5일</span></h3>           
             <div class="swp-img rank-score" title="비디오 썸네일" style="background-image: url(${path}/resources/images/thum/thum01.jpg);">
                <div class="rank-score-num">10</div>
            </div>
             <div class="swp-info">
                 <a href="#">
                     <img src="${path}/resources/images/thum/face01.jpg">
                     <span>TWICE</span>
                 </a>
                 <div class="swp-txt ellipsis2">
                     완벽한 궁극의 아이돌 트와이스<span>#트와이스 #TWICE #공연</span> 
                 </div>             
             </div>        
           </div>
     
           <div class="swiper-slide">
            <h3 class="h-tit tal">30번째 주 <span>7월 22일 ~ 8월 29일</span></h3>
            <div class="swp-img rank-score" title="비디오 썸네일" style="background-image: url(${path}/resources/images/thum/thum02.jpg);">
                <div class="rank-score-num">88</div>
           </div>
             <div class="swp-info">
                 <a href="#">
                     <img src="${path}/resources/images/thum/face02.jpg">
                     <span>newjeans</span>
                 </a>
                 <div class="swp-txt ellipsis2">
                     댄스 동아리 트와이스걸<span>#트와이스걸 #댄스동아리</span> 
                 </div>             
             </div>        
           </div>
     
           <div class="swiper-slide"> 
            <h3 class="h-tit tal">29번째 주 <span>7월 22일 ~ 8월 29일</span></h3>          
            <div class="swp-img filter-gray" title="비디오 썸네일" style="background-image: url(${path}/resources/images/thum/thum03.jpg);">
                <!--삭제된비디오표시s-->
                <div class="video-del-sw">
                    <span uk-icon="icon: grayimg"></span>
                </div>
                <!--삭제된비디오표시e-->
            </div>
            <div class="swp-info">
                <a href="#">
                    <img src="${path}/resources/images/thum/face02.jpg">
                    <span>newjeans</span>
                </a>
                <div class="swp-txt ellipsis2 c_red">
                   삭제된 영상 입니다.
                </div>             
            </div>       
          </div>
          
           
        </div>
        <div class="swiper-pagination"></div>
      </div>
     <div class="container">   
        


    <!--구독 버튼-->
    <script>
    // 구독버튼 class로 버튼 요소들 가져오기
    const subscribeButtons = document.querySelectorAll('.bt_subscribe_blue');

    // 각 버튼에 대해 이벤트 리스너 추가
    subscribeButtons.forEach(button => {
        // 클릭 상태를 저장하는 변수
        let isClicked = false;

    button.addEventListener('click', function() {
        if (!isClicked) {
            button.classList.add('bt_subscribe'); // 클릭 시 'bt_subscribe' 클래스 추가
        } else {
            button.classList.remove('bt_subscribe'); // 다시 클릭하면 'bt_subscribe' 클래스 제거
        }
        isClicked = !isClicked; // 클릭 상태 토글
        });
    });
    </script>    
    <!--스와이퍼슬라이더-->
    <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: "2.3",
      spaceBetween: 10,
     
      breakpoints: {
        640: {
          slidesPerView: 2.3,
          spaceBetween: 20,
        },
        768: {
          slidesPerView: 4,
          spaceBetween: 40,
        },
        1024: {
          slidesPerView: 5,
          spaceBetween: 50,
        },
      },
    });
  </script>
</body>

</html>