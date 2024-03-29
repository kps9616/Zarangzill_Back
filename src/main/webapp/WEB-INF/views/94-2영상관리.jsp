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
    <style>
      
    </style>
</head>
<body>
    <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        채널              
        <div class="top-right">
            <button id="popupButton" type="button"><span uk-icon="icon: more-vertical"  class="pd10"></span></button>         
        </div>     
        
            <div class="white-bx" id="whiteBox">                
                <a href="${path}/#none">공개로 변경</a>
                <a href="${path}/#modal-sections" uk-toggle>수정</a>
                <a href="${path}/#modal-sections2" uk-toggle>삭제</a>
            </div> 
    </div>

    <div class="container"> 
        <div class="mymov-manage">
            <div class="mymov-ma-img"><img src="${path}/images/thum/thum02.jpg"></div>
            <div class="mymov-ma-info">
               <div class="mymov-ma-tit">완벽한 궁극의 아이돌 ✧트와이스✧<span>#TWICE #트와이스 </span>  </div> 
               <p><span>등록</span>2023.0612</p>
               <p><span uk-icon="icon:eye-slash;"></span> 비공개</p>
               <p><span uk-icon="icon:eye;"></span> 공개</p>
               <p><span uk-icon="icon: ccman;"></span><a href="${path}/#modal-sections3" class="tlink" uk-toggle>기여자 3명</a></p>
            </div>
        </div>
        

        <div class="mymov-table mt40">
            <table>
                <thead>
                    <tr>
                        <th>기간</th>
                        <th>뷰</th>
                        <th>심사</th>
                        <th>우승예측</th>
                        <th>즐겨찾기</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="tar fontBold">2023.08</td>
                        <td>535</td>
                        <td>-</td>
                        <td>-</td>
                        <td>12</td>
                    </tr>
                    <tr>
                        <td class="tar">30주</td>
                        <td>535</td>
                        <td>-</td>
                        <td>-</td>
                        <td>12</td>
                    </tr>
                    <tr>
                        <td class="tar fontBold"><img src="${path}/images/icon/icon-winner.png" width="20" title="월우승 왕관">2023.07</td>
                        <td>555</td>
                        <td>1,456/44명(1위)</td>
                        <td>142</td>
                        <td>12</td>
                    </tr>
                    <tr>
                        <td class="tar"><img src="${path}/images/icon/icon-winner-w.png" width="20" title="주우승 왕관">29주</td>
                        <td>555</td>
                        <td>1,456/44명(54위)</td>
                        <td>142</td>
                        <td>12</td>
                    </tr>
                    <tr>
                        <td class="tar">30주</td>
                        <td>555</td>
                        <td>1,456/44명(54위)</td>
                        <td>142</td>
                        <td>12</td>
                    </tr>

                    
                </tbody>
            </table>
        </div>
    </div> 
    
    
   
    <!--영상삭제-->
    <div id="modal-sections2" class="uk-flex-top" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

            <button class="uk-modal-close-default" type="button" uk-close></button>
            <h2 class="uk-modal-title tac">영상 삭제</h2>
            <div class="uk-modal-body tac">
               
                <p>영상을 삭제 하시겠습니까?</p>
            </div>
        
            <div class="uk-modal-footer uk-text-center">
                <button class="uk-button uk-button-default uk-modal-close" type="button">취소</button>
                <button class="uk-button uk-button-danger" type="button">삭제</button>
            </div>
        </div>
    </div>


     <!--영상수정-->
     <div id="modal-sections" class="uk-flex-top" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

            <button class="uk-modal-close-default" type="button" uk-close></button>
            <h2 class="uk-modal-title">영상 수정</h2>
            <div class="uk-modal-body">
               
                <p>설명</p>
                <div class="mov-txtr">
                    <div id="editor" class="editor" contenteditable="true"><span class="c_blue"> 내용수정하기</div>
                    <div id="counter" class="counter">0/100</div>
                </div>  
            </div>
        
            <div class="uk-modal-footer uk-text-center">
                <button class="uk-button uk-button-default uk-modal-close" type="button">취소</button>
                <button class="uk-button uk-button-danger" type="button">삭제</button>
            </div>
        </div>
    </div>

     <!--기여자-->
     <div id="modal-sections3" class="uk-flex-top" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

            <button class="uk-modal-close-default" type="button" uk-close></button>
            <h2 class="uk-modal-title tac">기여자</h2>
            <div class="uk-modal-body" style="min-height: 200px;">               
                <p class="tac c_gray font12">기여자 지정 후 24시간 이내 수정이 가능합니다.</p>
                <div class="mov-info-con">                       
                    <div class="name-search">
                        <input id="search-input" class="uk-input" type="text" placeholder="@">
                        <ul id="name-list" class="name-sh-bx">
                            <li class="name-sh-list" onclick="selectItem('지효', 'images/thum/face01.jpg')">
                                <img src="${path}/images/thum/face01.jpg" alt="profile-image">
                                <p>지효</p>
                            </li>
                            <li class="name-sh-list" onclick="selectItem('사나', 'images/thum/face02.jpg')">
                                <img src="${path}/images/thum/face02.jpg" alt="profile-image">
                                <p>사나</p>
                            </li>
                            <!-- 추가 리스트 아이템 -->
                        </ul>
                        <div id="selected-list" class="name-sh-value">
                            <!-- 선택된 항목들이 여기에 추가됩니다 -->
                        </div>
                    </div>

                </div> 
            </div>
        
            <div class="uk-modal-footer uk-text-center">
                <button class="uk-button uk-button-default uk-modal-close" type="button">취소</button>
                <button class="uk-button uk-button-danger" type="button">삭제</button>
            </div>
        </div>
    </div>
       
        <script>
            //상단 레이어메뉴    
            const popupButton = document.getElementById("popupButton");
            const whiteBox = document.getElementById("whiteBox");
    
            // 버튼 클릭 이벤트 처리
            popupButton.addEventListener("click", () => {
                // white-bx에 "active" 클래스를 토글하여 애니메이션 적용
                whiteBox.classList.toggle("active");
            });
    
            // document를 클릭하면 white-bx 닫기
            document.addEventListener("click", (event) => {
                if (!popupButton.contains(event.target) && !whiteBox.contains(event.target)) {
                    whiteBox.classList.remove("active");
                }
            });
            
             //팀원선택
            document.getElementById('search-input').addEventListener('input', function(e) {
                if (e.target.value.includes('@') && document.getElementById('name-list').children.length > 0) {
                    document.getElementById('name-list').style.display = 'block';
                } else {
                    document.getElementById('name-list').style.display = 'none';
                }
            });

            function selectItem(name, imgSrc) {
                var selectedList = document.getElementById('selected-list');

                // 중복 선택 방지
                for(var i = 0; i < selectedList.children.length; i++) {
                    if(selectedList.children[i].getElementsByTagName('p')[0].textContent === name) {
                        return;
                    }
                }
                
                var newItem = document.createElement('div');
                newItem.className = 'name-sh-list';

                var img = document.createElement('img');
                img.src = imgSrc;
                newItem.appendChild(img);

                var p = document.createElement('p');
                p.textContent = name;
                newItem.appendChild(p);

                var a = document.createElement('a');
                a.href = '#';
                a.className = 'close-icon';
                a.onclick = function(e) {
                    e.preventDefault();
                    selectedList.removeChild(newItem);
                }

                var em = document.createElement('em');
                em.setAttribute('uk-icon', 'icon: close');
                a.appendChild(em);

                newItem.appendChild(a);
                selectedList.appendChild(newItem);

                // 선택 후 목록 닫기
                document.getElementById('name-list').style.display = 'none';
            }
    </script>

    </script>
   
</body>

</html>