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
        fn_getSearchList("V");
    });

    function fn_search(type) {
        $("#searchType").val(type);
        fn_getSearchList(type);
    }

    function fn_getSearchList(type) {
        $.ajax({
            url: 'http://localhost:9090/api/v1/short/search',
            method: 'GET',
            dataType: 'json',
            data: $("#searchForm").serialize(),
            success: function(response) {

                $("#movieDiv").hide();
                $("#hashDiv").hide();
                $("#nameDiv").hide();
                if(type == "H") {
                    fn_searchResultH(response.result, response.resultSize);
                } else if(type == "N") {
                    fn_searchResultN(response.result, response.resultSize);
                } else if(type == "V") {
                    fn_searchResultV(response.result, response.resultSize);
                }

            },
            error: function(error) {
                console.log(error);
            }
        });

    }

    function fn_searchResultV(result, resultSize) {
        let html = "<ul>";

        for(let i=0; i < resultSize; i++) {
            let info = result[i];

            html += '<li>';
            html += '   <div class="bigthum">';
            html += '        <img src="${path}'+info.video_thumbnail+'"  class="thum">';
            html += '    </div>';
            html += '    <div class="list-tit ellipsis2">';
            html += '        '+info.video_description+'<span> '+info.video_tag+'</span>';
            html += '    </div>';
            html += '    <div class="list-name">';
            html += '        <a href="#none">';
            html += '            <img class="small-thum mr5" src="${path}'+info.channel_profile_image+'">';
            html += '                '+info.user_name;
            html += '        </a>';
            html += '   </div>';
            html += '</li>';

        }
        html += "</ul>";
        console.log(html)

        $("#movieDiv").html(html);
        $("#movieDiv").show();
    }
    function fn_searchResultH(result, resultSize) {
        let html = "<ul>";

        for(let i=0; i < resultSize; i++) {
            let info = result[i];

            html += '<li>';
            html += '    <a href="#none" onclick="fn_searchHashDetail(\''+info.video_tag+'\')">'+info.video_tag+'<span>'+AddComma(info.video_cnt)+'</span><em uk-icon="chevron-right"></em></a>';
            html += '</li>';

        }
        html += "</ul>";
        $("#hashDiv").html(html);
        $("#hashDiv").show();

    }
    function AddComma(num) {
        var regexp = /\B(?=(\d{3})+(?!\d))/g;
        return num.toString().replace(regexp, ',');
    }
    function fn_searchResultN(result, resultSize) {

        let html = "<ul>";

        for(let i=0; i < resultSize; i++) {
            let info = result[i];

            html += '<li>';
            html += '    <img src="${path}'+info.channel_profile_image+'">';
            html += '        <a href="#" onclick="fn_moveChannel('+info.channel_id+')">@'+info.channel_name+' <span>'+info.video_cnt+'</span><em uk-icon="chevron-right"></em></a>';
            html += '</li>';

        }
        html += "</ul>";
        $("#nameDiv").html(html);
        $("#nameDiv").show();
    }

    function fn_moveChannel(id) {
        const mvFrm = $("#mvChannelFrm");
        $("#mvChannelId").val(id);
        mvFrm.action = "";
        mvFrm.submit();
    }

    function fn_searchHashDetail(name) {

        const searchFrm = $("#searchForm");
        $("#searchKeyword").val(name);

        searchFrm.attr("action","/search/detail/hash");
        searchFrm.attr("method","get");
        searchFrm.submit();
    }
</script>
<body>
    <form id="searchForm" name="searchForm" method="post">
        <input type="hidden" id="searchKeyword" name="searchKeyword" value="${searchKeyword}"/>
        <input type="hidden" id="searchType" name="searchType" value="V"/>
    </form>
    <form id="mvChannelFrm" name="mvChannelFrm" method="post">
        <input type="hidden" id="mvChannelId" name="channelId" value="V"/>
    </form>

    <div class="top-bx">
        <a href="main.html" class="top-left" uk-icon="icon: chevron-left; ratio:1.5"></a>
        검색
    </div>

    <div class="container"> 
        
        <div class="top-search">
            <div class="uk-inline">
                <a class="uk-form-icon uk-form-icon-flip" href="#" uk-icon="icon: close"></a>
                <input class="uk-input" type="text" aria-label="Clickable icon" value="${searchKeyword}">
            </div>
        </div>

        <div class="chioce-bx">   
            <div class="radio-set">
                <input type="radio" id="b1" name="radio_b" value="▶ 영상" onclick="fn_search('V')" checked>
                <label for="b1" class="m-frist wp100"><span>▶ 영상</span></label>
    
                <input type="radio" id="b2" name="radio_b" value="#해시태그" onclick="fn_search('H')">
                <label for="b2" class="wp100"><span>#해시태그</span></label>

                <input type="radio" id="b3" name="radio_b" value="@네임태그" onclick="fn_search('N')">
                <label for="b3" class="wp100"><span>@네임태그</span></label>
            </div>
        </div>

        <div class="thum-list" id="movieDiv">


        </div>

        <div class="hash_list" id="hashDiv">
        </div>

        <div class="name_list" id="nameDiv">
        </div>

    </div>   
    
  
</body>

</html>