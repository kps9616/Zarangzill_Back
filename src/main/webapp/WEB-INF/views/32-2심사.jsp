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
         <div class="bottom-modal top-radius"  style="height: auto;">
            
                <div class="uk-modal-header top-radius relative">
                    <span uk-icon="icon: close" class="bbtn-close"></span>
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
        var modal = document.getElementById('bottom-modal');
        var btn = document.getElementById("Btn-comment");
        var span = document.getElementsByClassName("bbtn-close")[0];

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }

        </script> 
</body>

</html>