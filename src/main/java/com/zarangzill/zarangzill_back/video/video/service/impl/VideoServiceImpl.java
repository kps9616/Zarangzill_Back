package com.zarangzill.zarangzill_back.video.video.service.impl;

import com.zarangzill.zarangzill_back.video.video.service.VideoDTO;
import com.zarangzill.zarangzill_back.video.video.service.VideoService;
import com.zarangzill.zarangzill_back.video.video.service.mapper.VideoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class VideoServiceImpl implements VideoService {
    @Autowired
    private VideoMapper videoMapper;

    public List<Map> selectVideoList(Map videoMap) {
        return videoMapper.selectVideoList(videoMap);
    }
    public List<Map> selectMyVideoList(Map videoMap) {
        return videoMapper.selectMyVideoList(videoMap);
    }

    public Map selectVideoInfo(Map videoMap) {
        return videoMapper.selectVideoInfo(videoMap);
    }

    public Map createVideo(VideoDTO videoDto) {
        Map response = new HashMap<>();
        if(videoMapper.createVideo(videoDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
    /*
    public Map updateVideo(VideoDTO videoDto) {
        Map response = new HashMap<>();
        if(videoMapper.updateVideo(videoDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
    */
    public Map deleteVideo(VideoDTO videoDto) {
        Map response = new HashMap<>();
        if(videoMapper.deleteVideo(videoDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

}
