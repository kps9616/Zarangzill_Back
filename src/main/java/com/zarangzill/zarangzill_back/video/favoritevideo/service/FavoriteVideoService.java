package com.zarangzill.zarangzill_back.video.favoritevideo.service;

import java.util.List;
import java.util.Map;

public interface FavoriteVideoService {
    List<Map> selectVideoFavoriteList(Map favoriteVideoMap);
    FavoriteVideoDTO selectVideoFavoriteInfo(Map favoriteVideoMap);
    Map createVideoFavorite(FavoriteVideoDTO favoriteVideoDto);
    //Map updateVideoFavorite(VideoFavoriteDTO VideoFavoriteDto);
    Map deleteVideoFavorite(FavoriteVideoDTO favoriteVideoDto);
    
}