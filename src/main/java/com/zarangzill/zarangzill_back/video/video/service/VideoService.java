package com.zarangzill.zarangzill_back.video.video.service;

import java.util.List;
import java.util.Map;

public interface VideoService {


    List<Map> selectVideoList(Map videoMap);
    Map selectVideoInfo(Map videoMap);
    Map createVideo(VideoDTO VideoDto);
    //Map updateVideo(VideoDTO VideoDto);
    Map deleteVideo(VideoDTO VideoDto);
    
}