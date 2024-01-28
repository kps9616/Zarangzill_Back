package com.zarangzill.zarangzill_back.videofavorite.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;
import java.util.Map;

public interface VideoFavoriteService {


    List<Map> selectVideoFavoriteList(Map videoFavoriteMap);
    VideoFavoriteDTO selectVideoFavoriteInfo(Map videoFavoriteMap);
    Map createVideoFavorite(VideoFavoriteDTO VideoFavoriteDto);
    //Map updateVideoFavorite(VideoFavoriteDTO VideoFavoriteDto);
    Map deleteVideoFavorite(VideoFavoriteDTO VideoFavoriteDto);
    
}