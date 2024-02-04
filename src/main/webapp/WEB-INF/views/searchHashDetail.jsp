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

    <script src="${path}/resources/js/uikit.js"></script>
    <script src="${path}/resources/js/uikit-icons.js"></script>

    <script src="${path}/resources/js/jquery.min.js"></script>
    
    <title>자랑질앱</title>
    <style>
      
    </style>
</head>
<script>

    $( document ).ready(function() {
        fn_getSearchList();
    });

    function fn_search() {
        const genderV = $("input[name='radio_a']").prop("checked",true).val();
        const avgAgeV = $("input[name='radio_b']").prop("checked",true).val();

        $("#gender").val(genderV);
        $("#avgAge").val(avgAgeV);
        fn_getSearchList();
    }

    function fn_getSearchList() {
        $.ajax({

            url: 'http://localhost:9090/api/v1/short/search/detai',
            method: 'GET',
            dataType: 'json',
            data: $("#searchForm").serialize(),
            success: function(response) {
                const resultSize = response.resultSize;
                const result = response.result;
                let html = "";

                for(let i=0; i < resultSize; i++) {
                    let info = result[i];

                    html += '<li>';
                    html += '   <div class="bigthum">';
                    html += '        <img src="${path}/'+info.video_thumbnail+''"  class="thum">';
                    html += '    </div>';
                    html += '    <div class="list-tit ellipsis2">';
                    html += '        '+info.video_description+'<span> '+info.video_tag+'</span>';
                    html += '    </div>';
                    html += '    <div class="list-name">';
                    html += '        <a href="#none">';
                    html += '            <img class="small-thum mr5" src="${path}/'+info.profile_image+'">';
                    html += '                '+info.user_name;
                    html += '        </a>';
                    html += '   </div>';
                    html += '</li>';

                }

                $("#searchList").html(html);


            },
            error: function(error) {
                console.log(error);
            }
        });

    }

</script>
<body>

    <form id="searchForm" name="searchForm" method="post">
        <input type="hidden" id="gender" name="gender" value="M"/>
        <input type="hidden" id="avgAge" name="avgAge" value="10"/>
        <input type="hidden" id="searchKeyword" name="searchKeyword" value="${searchKeyword}"/>
    </form>

    <div class="top-bx">
        <a href="javascript:history.back();" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        <c:out value="${searchKeyword}"/>
    </div>

    <div class="container">

        <div class="chioce-bx">
            <div class="font14">많이 본 영상</div>
            <div class="radio-set">
                <input type="radio" id="a1" name="radio_a" value="M" onchange="fn_search()" checked>
                <label for="a1" class="m-frist wp40"><span>남</span></label>

                <input type="radio" id="a2" name="radio_a" onchange="fn_search()" value="F">
                <label for="a2" class="wp40"><span>여</span></label>
            </div>
            <div class="font16"> × </div>
            <div class="radio-set">
                <input type="radio" id="b1" name="radio_b" onchange="fn_search()" value="10" checked>
                <label for="b1" class="m-frist"><span>10대</span></label>

                <input type="radio" id="b2" name="radio_b" onchange="fn_search()" value="20">
                <label for="b2"><span>20대</span></label>

                <input type="radio" id="b3" name="radio_b" onchange="fn_search()" value="30">
                <label for="b3"><span>30대 이상</span></label>
            </div>
        </div>

        <div class="thum-list">
            <ul id="searchList">
            </ul>
        </div>

    </div>   
    

</body>

</html>