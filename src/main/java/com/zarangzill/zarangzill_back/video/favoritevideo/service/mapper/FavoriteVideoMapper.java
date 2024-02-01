package com.zarangzill.zarangzill_back.video.favoritevideo.service.mapper;


import com.zarangzill.zarangzill_back.video.favoritevideo.service.FavoriteVideoDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface FavoriteVideoMapper {
    List<Map> selectVideoFavoriteList(Map favoriteVideoMap);
    FavoriteVideoDTO selectVideoFavoriteInfo(Map favoriteVideoMap);
    int createVideoFavorite(FavoriteVideoDTO favoriteVideoDto);
    int updateVideoFavorite(FavoriteVideoDTO favoriteVideoDto);
    int deleteVideoFavorite(FavoriteVideoDTO favoriteVideoDto);
}
