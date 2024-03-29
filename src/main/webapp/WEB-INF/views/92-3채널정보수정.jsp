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
    <div class="top-bx bline">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
      채널 정보
    </div>
    <div class="container"> 
        <div class="ch-create mt40 mb40">
            <ul>
                <li class="photo mb20">
                    <span id="deleteButton" onclick="deleteImage()"><i uk-icon="icon:close;"></i></span>
                    <img src="${path}/images/thum/face01.jpg" id="imagePreview">
                    <div uk-form-custom>
                        <input type="file" id="imageInput" aria-label="Custom controls">
                        <div class="flex-align">
                            <span class="uk-link"></span><i uk-icon="icon: image;" class="pr10"></i>채널 사진 등록
                        </div>
                    </div>
                    
                </li>
               
                <li>
                    <input class="uk-input" type="text" placeholder="" aria-label="Input" value="twice.official">
                </li>
                <li>
                    <input class="uk-input" type="text" placeholder="" aria-label="Input" value="트와이스 공식채널">
                </li>
               
            </ul>            
         </div>
         <button type="button" class="bt_gradient w100">저장</button>

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

   
    </script>


</body>
</html>