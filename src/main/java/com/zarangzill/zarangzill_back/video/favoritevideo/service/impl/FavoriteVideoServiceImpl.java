package com.zarangzill.zarangzill_back.video.favoritevideo.service.impl;

import com.zarangzill.zarangzill_back.video.favoritevideo.service.FavoriteVideoDTO;
import com.zarangzill.zarangzill_back.video.favoritevideo.service.FavoriteVideoService;
import com.zarangzill.zarangzill_back.video.favoritevideo.service.mapper.FavoriteVideoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class FavoriteVideoServiceImpl implements FavoriteVideoService {
    @Autowired
    private FavoriteVideoMapper favoriteVideoMapper;

    public List<Map> selectVideoFavoriteList(Map favoriteVideoMap) {
        return favoriteVideoMapper.selectVideoFavoriteList(favoriteVideoMap);
    }

    public FavoriteVideoDTO selectVideoFavoriteInfo(Map favoriteVideoMap) {
        return favoriteVideoMapper.selectVideoFavoriteInfo(favoriteVideoMap);
    }

    public Map createVideoFavorite(FavoriteVideoDTO favoriteVideoDto) {
        Map response = new HashMap<>();
        if(favoriteVideoMapper.createVideoFavorite(favoriteVideoDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
    /*
    public Map updateVideoFavorite(VideoFavoriteDTO favoriteVideoDto) {
        Map response = new HashMap<>();
        if(favoriteVideoMapper.updateVideoFavorite(favoriteVideoDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
    */
    public Map deleteVideoFavorite(FavoriteVideoDTO favoriteVideoDto) {
        Map response = new HashMap<>();
        if(favoriteVideoMapper.deleteVideoFavorite(favoriteVideoDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

}
