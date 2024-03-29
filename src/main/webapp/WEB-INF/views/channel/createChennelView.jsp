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
<body>
    <div class="top-bx bline">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        채널 만들기
    </div>
    <div class="container"> 
        <div class="ch-create mt40 mb40">
            <ul>
                <li class="photo mb20">
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
                <li>
                    <h3 class="mt20">팀원</h3>
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
         <button type="button" class="bt_gradient w100">완료</button>

    </div> <!--//container-->  
    
  
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


</body>
</html>