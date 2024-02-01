package com.zarangzill.zarangzill_back.video.videoviewhistory.service.impl;

import com.zarangzill.zarangzill_back.video.videoviewhistory.service.mapper.VideoViewHistoryMapper;
import com.zarangzill.zarangzill_back.video.videoviewhistory.service.VideoViewHistoryDTO;
import com.zarangzill.zarangzill_back.video.videoviewhistory.service.VideoViewHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class VideoViewHistoryServiceImpl implements VideoViewHistoryService {
    @Autowired
    private VideoViewHistoryMapper videoViewHistoryMapper;

    public List<Map> selectVideoViewHistoryList(Map videoViewHistoryMap) {
        return videoViewHistoryMapper.selectVideoViewHistoryList(videoViewHistoryMap);
    }

    public VideoViewHistoryDTO selectVideoViewHistoryInfo(Map videoViewHistoryMap) {
        return videoViewHistoryMapper.selectVideoViewHistoryInfo(videoViewHistoryMap);
    }

    public Map createVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto) {
        Map response = new HashMap<>();
        if(videoViewHistoryMapper.createVideoViewHistory(videoViewHistoryDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
    /*
    public Map updateVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto) {
        Map response = new HashMap<>();
        if(videoViewHistoryMapper.updateVideoViewHistory(videoViewHistoryDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
    */
    public Map deleteVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto) {
        Map response = new HashMap<>();
        if(videoViewHistoryMapper.deleteVideoViewHistory(videoViewHistoryDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

}
