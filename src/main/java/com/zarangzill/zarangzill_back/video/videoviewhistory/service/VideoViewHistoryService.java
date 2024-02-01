package com.zarangzill.zarangzill_back.video.videoviewhistory.service;

import java.util.List;
import java.util.Map;

public interface VideoViewHistoryService {


    List<Map> selectVideoViewHistoryList(Map videoViewHistoryMap);
    VideoViewHistoryDTO selectVideoViewHistoryInfo(Map videoViewHistoryMap);
    Map createVideoViewHistory(VideoViewHistoryDTO VideoViewHistoryDto);
    //Map updateVideoViewHistory(VideoViewHistoryDTO VideoViewHistoryDto);
    Map deleteVideoViewHistory(VideoViewHistoryDTO VideoViewHistoryDto);
    
}