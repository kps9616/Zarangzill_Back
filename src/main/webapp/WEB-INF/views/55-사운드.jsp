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
        
        사운드  
        <a href="javascript:history.back();" class="top-right pt5" uk-icon="icon: close; ratio:1.5"></a>          
    </div>
    <div class="container">   

        <div class="top-search">
            <div class="uk-inline">
                <a class="uk-form-icon uk-form-icon-flip" href="${path}/#" uk-icon="icon: search"></a>
                <input class="uk-input" type="text" aria-label="Clickable icon">
            </div>
        </div>

        <div class="tab-nav">
            <ul>
                <li><a href="${path}/#none" class="on">추천</a></li>
                <li><a href="${path}/#none">즐겨찾기</a></li>
                <li><a href="${path}/#none">업로드</a></li>
            </ul>
        </div>

        <div class="check-line-bx">
            <div class="checkbox-set-2th">
                <input type="checkbox" id="b1" name="checkbox" value="힙합" checked>
                <label for="b1" class="m-frist"><span>힙합</span><i uk-icon="icon: check;"></i></label>
    
                <input type="checkbox" id="b2" name="checkbox" value="R&B">
                <label for="b2"><span>R&B</span><i uk-icon="icon: check;"></i></label>

                <input type="checkbox" id="b3" name="checkbox" value="EDM">
                <label for="b3"><span>EDM</span><i uk-icon="icon: check;"></i></label>

                <input type="checkbox" id="b4" name="checkbox" value="발라드">
                <label for="b4"><span>발라드</span><i uk-icon="icon: check;"></i></label>

                <input type="checkbox" id="b5" name="checkbox" value="OST">
                <label for="b5"><span>OST</span><i uk-icon="icon: check;"></i></label>

                <input type="checkbox" id="b6" name="checkbox" value="BGM">
                <label for="b6"><span>BGM</span><i uk-icon="icon: check;"></i></label>
            </div>
        </div>

        <div class="music-list mt20">
            <ul>
                <li>                    
                    <div class="music-star"><span uk-icon="icon: starfill;"></span></div>
                    <div><img src="${path}/images/thum/face01.jpg"></div>
                    <div class="music-tit ellipsis"><a href="${path}/#none">나를 잊지 말아요<span>박민환</span></a></div>
                    <div class="music-time">2:50</div>
                    <div class="music-play">                        
                        <div class="music-circle-container" id="hiddenDiv">
                            <svg class="music-circle" viewBox="0 0 100 100">
                                <circle cx="50" cy="50" r="48" />
                            </svg>
                            <div class="music-square"></div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="music-star-y"><span uk-icon="icon: starfill;"></span></div>
                    <div><img src="${path}/images/thum/face02.jpg"></div>
                    <div class="music-tit ellipsis"><a href="${path}/#modal-center" uk-toggle>♣♣허전해<span>미스사이버</span></a></div>
                    <div class="music-time">4:30</div>
                    <div class="music-play">
                        <button type="button" id="showButton" uk-icon="icon:  play-circle; ratio: 1.2"></button>
                    </div>
                </li>
                <li>
                    <div class="music-star-y"><span uk-icon="icon: starfill;"></span></div>
                    <div><img src="${path}/images/thum/grup01.jpg"></div>
                    <div class="music-tit ellipsis"><a href="${path}/#none">거울속의 내모습은<span>댄스보이</span></a></div>
                    <div class="music-time">4:10</div>
                    <div class="music-play">
                        <button type="button" id="showButton" uk-icon="icon:  play-circle; ratio: 1.2"></button>
                    </div>
                </li>
                <li>
                    <div class="music-star"><span uk-icon="icon: starfill;"></span></div>
                    <div><img src="${path}/images/thum/grup02.jpg"></div>
                    <div class="music-tit ellipsis"><a href="${path}/#none">즐거운 하루되세요<span>나이스보이</span></a></div>
                    <div class="music-time">4:10</div>
                    <div class="music-play">
                        <button type="button" id="showButton" uk-icon="icon:  play-circle; ratio: 1.2"></button>
                    </div>
                </li>
                <li>
                    <div class="music-star"><span uk-icon="icon: starfill;"></span></div>
                    <div><img src="${path}/images/thum/grup03.jpg"></div>
                    <div class="music-tit ellipsis"><a href="${path}/#none">하늘의 구름이 솜사탕<span>점프걸</span></a></div>
                    <div class="music-time">4:10</div>
                    <div class="music-play">
                        <button type="button" id="showButton" uk-icon="icon:  play-circle; ratio: 1.2"></button>
                    </div>
                </li>
               
            </ul>
        </div>

    </div> <!--//container-->  
    
    <!--삭제하기-->
<div id="modal-center" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

        <button class="uk-modal-close-default" type="button" uk-close></button>
        <div class="uk-modal-body uk-text-center mb20 mt20">
            <p uk-icon="icon: warning; ratio: 2"></p>
            <p class="font16 fontBold mb5">등록 불가능</p>
            <p class="tac">MP3파일로 3분 이내 15mb이하 <br>사운드만 등록 가능합니다. </p>
        </div>
       
        <div class="uk-modal-footer uk-text-center">
            <button class="uk-button uk-button-default uk-modal-close" type="button">확인</button>
        </div>
    </div>
</div>


   
</body>
</html>