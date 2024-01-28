package com.zarangzill.zarangzill_back.videofavorite.service.impl;

import com.zarangzill.zarangzill_back.videofavorite.service.VideoFavoriteDTO;
import com.zarangzill.zarangzill_back.videofavorite.service.VideoFavoriteService;
import com.zarangzill.zarangzill_back.videofavorite.service.mapper.VideoFavoriteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class VideoFavoriteServiceImpl implements VideoFavoriteService {
    @Autowired
    private VideoFavoriteMapper videoFavoriteMapper;

    public List<Map> selectVideoFavoriteList(Map videoFavoriteMap) {
        return videoFavoriteMapper.selectVideoFavoriteList(videoFavoriteMap);
    }

    public VideoFavoriteDTO selectVideoFavoriteInfo(Map videoFavoriteMap) {
        return videoFavoriteMapper.selectVideoFavoriteInfo(videoFavoriteMap);
    }

    public Map createVideoFavorite(VideoFavoriteDTO videoFavoriteDto) {
        Map response = new HashMap<>();
        if(videoFavoriteMapper.createVideoFavorite(videoFavoriteDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
    /*
    public Map updateVideoFavorite(VideoFavoriteDTO videoFavoriteDto) {
        Map response = new HashMap<>();
        if(videoFavoriteMapper.updateVideoFavorite(videoFavoriteDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
    */
    public Map deleteVideoFavorite(VideoFavoriteDTO videoFavoriteDto) {
        Map response = new HashMap<>();
        if(videoFavoriteMapper.deleteVideoFavorite(videoFavoriteDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

}
