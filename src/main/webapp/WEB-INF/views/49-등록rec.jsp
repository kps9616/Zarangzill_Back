<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <link rel="stylesheet" type="text/css"  href="${path}/css/uikit.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/reset.css" >    
    <link rel="stylesheet" type="text/css"  href="${path}/css/style.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/css/video.css" >
    <script src="${path}/js/uikit.js"></script>
    <script src="${path}/js/uikit-icons.js"></script>

    <script src="${path}/js/jquery.min.js"></script>
    <title>녹화</title>
    <style>
       .body-bg{background-image:url(images/thum/thum01.jpg); background-position: top;background-size: cover; background-repeat: no-repeat;}

      
    </style>
</head>
<body class="body-bg">


    <div class="v_progress_bx">
        
        
        <div class="v_progress_control">
            <a href="${path}/#" class="v-del"><span uk-icon="icon: close;"></span></a>
            <a href="${path}/#none" class="v-bt-round">완료</a>
            <a href="${path}/#none" class="v-bt-round">X</a>
       </div>
    </div>

    <div class="rec-bx">       
        <a href="${path}/#"><span uk-icon="icon:light;ratio:0.7"></span></a>
        <a href="${path}/#"><span uk-icon="icon:self;ratio:0.8"></span></a>
        <a href="${path}/#" class="mt20"><span class="v-rec-tiemer">30</span></a>
    </div>

    <div class="v_rec_bottom">
        <a href="${path}/#" class="v-back-icon"><span uk-icon="icon:vfolder;ratio:0.7"></span>업로드</a>        
            <div class="recbtn-bx">
                <div onclick="toggleRecording()" id="record-button" class="rec-button"></div>
                <div class="text-center" id="app"></div>
            </div>
            <a href="${path}/#none" class="sound-add"><span uk-icon="icon: side06;ratio:0.8"></span>사운드 추가</a>
    </div>
   
    <script>
        let isRecording = false;
      
        function toggleRecording() {
          const recordButton = document.getElementById("record-button");
          const circleProgress = document.querySelector(".circle-progress");
      
          if (!isRecording) {
            isRecording = true;
            recordButton.classList.add("active");
            circleProgress.classList.add("rec-animate");
          } else {
            isRecording = false;
            recordButton.classList.remove("active");
            circleProgress.classList.remove("rec-animate");
            circleProgress.style.strokeDashoffset = circleProgress.getTotalLength();
          }
        }
      
      //원형 프로그래스바
        document.addEventListener('DOMContentLoaded', function () {
          const app = document.getElementById('app');
      
          const sqSize = 60;
          const strokeWidth = 8;
          const radius = (sqSize - strokeWidth) / 2;
          const viewBox = `0 0 ${sqSize} ${sqSize}`;
          const dashArray = radius * Math.PI * 2;
      
          app.innerHTML = `
              <svg width="${sqSize}" height="${sqSize}" viewBox="${viewBox}">
                  <circle class="circle-background" cx="${sqSize / 2}" cy="${sqSize / 2}" r="${radius}" strokeWidth="${strokeWidth}px" />
                  <circle class="circle-progress" cx="${sqSize / 2}" cy="${sqSize / 2}" r="${radius}" strokeWidth="${strokeWidth}px"
                      transform="rotate(-90 ${sqSize / 2} ${sqSize / 2})" style="stroke-dasharray: ${dashArray}; stroke-dashoffset: ${dashArray}" />
              </svg>
          `;
        });
      </script>


   </div>
</body>
</html>