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

    <title>자랑질</title>

</head>
<body>
    <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
       영상정보
    </div>

    <div class="container">
        <div class="movie-box">
            <ul>
                <li>
                    <div class="mov-img"><img src="${path}/images/thum/thum01.jpg"></div>
                    <div class="mov-txtr">
                        <div id="editor" class="editor" contenteditable="true"><span class="c_blue">#단어쓰고</span> 스페이스바 <br><span class="c_blue">@태그</span> 써보기</div>
                        <div id="counter" class="counter">0/100</div>
                    </div>    
                </li>
                <li class="mov-info">
                    <span>채널</span>
                    <div class="mov-info-con">
                        <div class="mov-dropdown" id="dropdown">
                            <div class="mov-dropdown-header" id="dropdownHeader">
                                <div class="mov-drop-info">
                                    <img src="${path}/images/thum/face01.jpg" alt="썸네일">
                                    <span id="selectedOption"><p>Twice.official<br>트와이스 공식채널</p></span>
                                    <i class="mov-select-arrow" id="arrow"></i>
                                </div>
                              
                            </div>
                            <ul class="mov-dropdown-list" id="dropdownList">
                              <li data-option="Option 1" data-image="images/thum/face01.jpg">
                               <div class="mov-drop-info">
                                    <img src="${path}/images/thum/face01.jpg" alt="썸네일"> 
                                    <p>Twice.official<br>투피엠 공식채널</p>
                               </div>
                              </li>
                              <li data-option="Option 2" data-image="images/thum/face02.jpg">
                                <div class="mov-drop-info"> 
                                    <img src="${path}/images/thum/face02.jpg" alt="썸네일"> 
                                    <p>Twice.official<br>방탄소년단 공식채널</p>
                                </div>    
                              </li>
                              <li data-option="Option 3" data-image="images/thum/face01.jpg">
                                <div class="mov-drop-info">
                                    <img src="${path}/images/thum/face01.jpg" alt="썸네일"> 
                                    <p>Twice.official<br>블랙핑크 공식채널</p>
                                </div>                                
                              </li> 
                              <li class="c_blue">
                                <i uk-icon="icon:plus-circle;" class="mr5 ml10"></i>
                                <p><a  href="${path}/#modal-center" uk-toggle>채널만들기</a></p> 
                            </li>                            
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="mov-info">                   
                    <span>공개</span>
                    <div class="mov-info-con">
                        <label class="mr20"><input class="uk-radio" type="radio" name="radio2" checked> 공개</label>
                        <label><input class="uk-radio" type="radio" name="radio2"> 비공개</label>
                    </div>    
                </li>

               
                <li class="mov-info">                   
                    <span>기여자</span>
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
                </li>


            </ul>
        </div>
        <div class="bottom-fixed">
            <button type="button" class="bt_gradient w100">등록</button>
        </div>
        
    
    </div>

    <ul class="mention-list"></ul> <!--네임태그리스트-->

 <!--채널만들기--> 
 <div id="modal-center" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">
         <button class="uk-modal-close-default" type="button" uk-close></button>
         <div class="uk-modal-header">
             <h2 class="uk-modal-title">채널 만들기</h2>
         </div>
         <div class="uk-modal-body" uk-overflow-auto>
             <div class="ch-create">
                <ul>
                    <li class="photo">
                        <span id="deleteButton" onclick="deleteImage()"><i uk-icon="icon:close;"></i></span>
                        <img src="${path}/images/thum/noimg.png" id="imagePreview">
                        <div uk-form-custom>
                            <input type="file" id="imageInput" aria-label="Custom controls">
                            <div class="flex-align">
                                <span class="uk-link"></span><i uk-icon="icon: image;" class="pr10"></i>채널 사진 등록
                            </div>
                        </div>
                        
                    </li>
                    <li>
                        <div class="radio-set-2th">
                            <input type="radio" id="b1" name="radio" value="개인채널" checked>
                            <label for="b1" class="m-frist"><span>개인채널</span><i uk-icon="icon: check;"></i></label>
                
                            <input type="radio" id="b2" name="radio" value="팀채널">
                            <label for="b2"><span>팀채널</span><i uk-icon="icon: check;"></i></label>
                        </div>    
                    </li>
                    <li>
                        <input class="uk-input" type="text" placeholder="채널명" aria-label="Input">
                    </li>
                    <li>
                        <input class="uk-input" type="text" placeholder="채널설명" aria-label="Input">
                    </li>
                </ul>
             </div>
         </div>
         <div class="uk-modal-footer uk-text-center">            
            <button type="button" class="bt_gradient w100">완료</button>
         </div>
     </div>
 </div>




 <!--이미지등록-->
 <script>
    const defaultImage = "images/thum/noimg.png";

    document.getElementById('imageInput').addEventListener('change', function(e) {
        const file = e.target.files[0];
        if (file && file.type.match('image.*')) {
            const reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('imagePreview').src = e.target.result;
                document.getElementById('deleteButton').style.display = 'inline'; // 여기서 "x" 버튼을 보이게 합니다.
            };
            reader.readAsDataURL(file);
        }
    });

    function deleteImage() {
        document.getElementById('imagePreview').src = defaultImage;
        document.getElementById('imageInput').value = "";
        document.getElementById('deleteButton').style.display = 'none';
    }
</script>

<!--기여자선택-->
    <script>
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

    <!--@네임태그로 셀렉트-->
    <script>
        const editor = document.getElementById('editor');
        const counter = document.getElementById('counter');
        const mentionList = document.querySelector('.mention-list');
        const maxLength = 100;
        
        const users = [
            { name: '민희', image: 'images/thum/face01.jpg' },
            { name: '초희', image: 'images/thum/face02.jpg' },
            { name: '강숙', image: 'images/thum/group04.jpg' }
        ];

        function updateCounter() {
            const length = editor.textContent.length;
            counter.textContent = `${length}/${maxLength}`;
        }

        function showMentionList() {
            const range = window.getSelection().getRangeAt(0);
            const rect = range.getBoundingClientRect();
            mentionList.style.left = `${rect.left + window.scrollX}px`;
            mentionList.style.top = `${rect.bottom + window.scrollY}px`;
            mentionList.innerHTML = '';
            users.forEach(user => {
                const li = document.createElement('li');
                const img = document.createElement('img');
                img.src = user.image;
                const textElement = document.createElement('span');
                textElement.textContent = `@${user.name}`;
                li.appendChild(img);
                li.appendChild(textElement);
                li.addEventListener('click', () => {
                // 마지막 '@' 문자의 위치를 찾습니다.
                const cursorPos = editor.textContent.lastIndexOf('@');
                // '@' 문자 이전의 내용과 이후의 내용을 가져옵니다.
                const beforeAt = editor.textContent.substring(0, cursorPos);
                const afterAt = editor.textContent.substring(cursorPos + 1);
                // 언급된 사용자 이름에 대한 새로운 span 엘리먼트를 생성합니다.
                const mention = document.createElement('span');
                mention.className = 'c_blue';
                mention.textContent = `@${user.name}`;
                // 에디터의 내용을 새로 구성합니다.
                editor.innerHTML = beforeAt;
                editor.appendChild(mention);
                editor.appendChild(document.createTextNode(' ' + afterAt));
                // 커서를 언급된 사용자 이름 다음으로 이동시킵니다.
                const range = document.createRange();
                const selection = window.getSelection();
                range.setStartAfter(mention);
                range.collapse(true);
                selection.removeAllRanges();
                selection.addRange(range);
                // 언급 리스트를 숨깁니다.
                mentionList.style.display = 'none';
                    styleHashTags();
                });
                mentionList.appendChild(li);
            });
            mentionList.style.display = 'block';
        }

        function styleHashTags() {
            let content = editor.innerHTML;
            content = content.replace(/(?:\s|^)(#[a-zA-Z0-9가-힣]+)/g, '<span class="c_blue"> $1</span>');
            editor.innerHTML = content;

            // 커서를 맨 뒤로 이동
            const range = document.createRange();
            const selection = window.getSelection();
            range.selectNodeContents(editor);
            range.collapse(false); // 커서를 끝으로
            selection.removeAllRanges();
            selection.addRange(range);
        }

        editor.addEventListener('input', () => {
            updateCounter();
            const text = editor.textContent;
            const lastChar = text[text.length - 1];
            if (lastChar === '@') {
                showMentionList();
            } else {
                mentionList.style.display = 'none';
            }
        });

        editor.addEventListener('keyup', (e) => {
            if (e.key === ' ') { // 스페이스바를 눌렀을 때
                styleHashTags();
            }
        });
    </script>

<!--셀렉트 이미지-->
<script>
    const dropdown = document.getElementById('dropdown');
    const arrow = document.getElementById('arrow');
    const dropdownList = document.getElementById('dropdownList');
    const selectedOption = document.getElementById('selectedOption');
    const dropdownHeader = document.getElementById('dropdownHeader');
    
    dropdown.addEventListener('click', () => {
      const isExpanded = dropdownList.style.display === 'block';
      dropdownList.style.display = isExpanded ? 'none' : 'block';
      arrow.style.transform = isExpanded ? 'rotate(45deg)' : 'rotate(-135deg)';
    });

    dropdownList.addEventListener('click', (e) => {
    const liElement = e.target.closest('li');

    if (liElement) {
        const selectedText = liElement.querySelector('.mov-drop-info p').innerHTML; // innerText 대신 innerHTML 사용
        const selectedImageSrc = liElement.querySelector('img').src; // 이미지의 src 속성 직접 가져오기

        selectedOption.innerHTML = selectedText;

        // 이미지 엘리먼트 찾기
        const imageElement = dropdownHeader.querySelector('img');
        if (imageElement) {
            imageElement.src = selectedImageSrc; // 이미지의 src 속성 업데이트
        }
        dropdownHeader.insertBefore(imageElement, selectedOption);//선택후 닫힘

        dropdownList.style.display = 'none';
        arrow.style.transform = 'rotate(45deg)';
    }
});
  </script>
</body>
</html>