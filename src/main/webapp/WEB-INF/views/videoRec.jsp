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
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/style.css" >
    <link rel="stylesheet" type="text/css"  href="${path}/resources/css/video.css" >
    <script src="${path}/resources/js/uikit.js"></script>
    <script src="${path}/resources/js/uikit-icons.js"></script>
    <script src="${path}/resources/js/jquery.min.js"></script>

    <title>자랑질</title>

</head>
<script>


    $( document ).ready(function() {
        fn_initChannelList();
    });

    function fn_initChannelList() {
        $.ajax({

            url: '/api/v1/channel/usr/list',
            method: 'GET',
            dataType: 'json',
            data: $("#videoForm").serialize(),
            success: function(response) {
                const result = response.resultList;
                const resultSize = response.resultListSize;
                console.log(result);
                let html = "";

                if(resultSize > 0) {
                    html += '    <div class="mov-drop-info">';
                    html += '        <img src="${path}/'+result[0].profile_image+'" alt="썸네일">';
                    html += '            <span id="selectedOption"><p>'+result[0].channel_name+'<br>'+result[0].channel_description+'</p></span>';
                    html += '            <i class="mov-select-arrow" id="arrow"></i>';
                    html += '    </div>';
                    $("#dropdownHeader").html(html);
                    $("#channelId").val(result[0].channel_id);
                    html = "";

                    for(let i = 0; i < resultSize; i++) {
                        html += '<li data-id="'+result[i].channel_id+' data-option="Option "'+(i+1)+' data-image="${path}/'+result[i].profile_image+'">';
                        html += '   <div class="mov-drop-info">';
                        html += '        <img src="${path}/'+result[i].profile_image+'" alt="썸네일">';
                        html += '            <p>'+result[i].channel_name+'<br>'+result[i].channel_description+'</p>';
                        html += '    </div>';
                        html += '</li>';
                    }

                    $("#dropdownList").html(html);
                    fn_initVideoCont(result[0].channel_id);
                }


            },
            error: function(error) {
                console.log(error);
            }
        });
    }

    function fn_initVideoCont(channelId) {

        $("#channelId").val(channelId);
        $.ajax({

            url: '/api/v1/channel/usr/list/mbm',
            method: 'GET',
            dataType: 'json',
            data: { channelId : channelId },
            success: function(response) {
                const result = response.resultList;
                const resultSize = response.resultListSize;
                let html = "";

                if(resultSize > 0) {

                    for(let i = 0; i < resultSize; i++) {
                        html += '<li data-id="'+result[i].user_id+'" class="name-sh-list" onClick="selectItem(\''+result[i].user_name+'\', \'${path}/'+result[i].profile_image+'\',\''+result[i].user_id+'\')">';
                        html += '    <img src="${path}/'+result[i].profile_image+'" alt="profile-image">';
                        html += '        <p>'+result[i].user_name+'</p>';
                        html += '</li>';
                    }

                    $("#name-list").html(html);
                }


            },
            error: function(error) {
                console.log(error);
            }
        });
    }

    function fn_createVideo() {
        $("#videoDescription").val($("#editor").text());
        $("#flagOpen").val($("input[name='radio2']").prop("checked",true).val());
        $("#videoTags").val($("#nameTag-input").val());

        var nameList = document.getElementById('selected-list');
        for(var i = 0; i < nameList.children.length; i++) {
            var contList = $(nameList.children[i]);
            var ids = "";
            if(i == 0) {
                ids = contList.data("id");
            }
            else {
                ids = "," + contList.data("id");
            }
        }

        $("#contributorIds").val(ids);

        $.ajax({

            url: '/api/v1/short/upload/ins',
            method: 'POST',
            dataType: 'json',
            data: $("#videoForm").serialize(),
            success: function(response) {
                alert("등록 되었습니다.");
                window.location.href = "main";
            },
            error: function(error) {
                console.log(error);
            }
        });
    }

</script>
<body>
    <form id="videoForm" name="videoForm" method="post">
        <input type="hidden" id="userId" name="userId" value="${userId}"/>
        <input type="hidden" id="videoDescription" name="videoDescription" value=""/>
        <input type="hidden" id="videoThumbnail" name="videoThumbnail" value="${uploadThumbnail}"/>
        <input type="hidden" id="videoPath" name="videoPath" value="${filePath}"/>
        <input type="hidden" id="channelId" name="channelId" value=""/>
        <input type="hidden" id="flagOpen" name="flagOpen" value=""/>
        <input type="hidden" id="videoTags" name="videoTags" value=""/>
        <input type="hidden" id="contributorIds" name="contributorIds" value=""/>
    </form>

    <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
       영상정보
    </div>

    <div class="container">
        <div class="movie-box">
            <ul>
                <li>
                    <div class="mov-img"><img src="${path}/resources/images/thum/thum01.jpg"></div>
                    <div class="mov-txtr">
                        <div id="editor" class="editor" contenteditable="true"></div>
                        <div id="counter" class="counter">0/100</div>
                    </div>    
                </li>
                <li class="mov-info">
                    <span>네임태그</span>
                    <div class="mov-info-con">

                        <div class="name-search">
                            <input id="nameTag-input" class="uk-input" type="text" placeholder="#">
                        </div>

                    </div>
                </li>
                <li class="mov-info">
                    <span>채널</span>
                    <div class="mov-info-con">
                        <div class="mov-dropdown" id="dropdown">
                            <div class="mov-dropdown-header" id="dropdownHeader">
                            </div>
                            <ul class="mov-dropdown-list" id="dropdownList">
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="mov-info">                   
                    <span>공개</span>
                    <div class="mov-info-con">
                        <label class="mr20"><input class="uk-radio" value="Y" type="radio" name="radio2" checked> 공개</label>
                        <label><input class="uk-radio" type="radio" value="N"  name="radio2"> 비공개</label>
                    </div>    
                </li>

               
                <li class="mov-info">                   
                    <span>기여자</span>
                    <div class="mov-info-con">
                       
                        <div class="name-search">
                            <input id="search-input" class="uk-input" type="text" placeholder="@">
                            <ul id="name-list" class="name-sh-bx">

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
            <button type="button" class="bt_gradient w100" onclick="fn_createVideo();">등록</button>
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
                        <img src="${path}/resources/images/thum/noimg.png" id="imagePreview">
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
    const defaultImage = "${path}/resources/images/thum/noimg.png";

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

        function selectItem(name, imgSrc, userId) {
            var selectedList = document.getElementById('selected-list');

            // 중복 선택 방지
            for(var i = 0; i < selectedList.children.length; i++) {
                if(selectedList.children[i].getElementsByTagName('p')[0].textContent === name) {
                    return;
                }
            }

            var newItem = document.createElement('div');
            newItem.className = 'name-sh-list';
            newItem.setAttribute("data-id",userId);

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

        function updateCounter() {
            const length = editor.textContent.length;
            counter.textContent = `${length}/${maxLength}`;
        }

        editor.addEventListener('input', () => {
            updateCounter();
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
            fn_initVideoCont($(liElement).data("id"));
        }
    });
  </script>
</body>
</html>