package com.zarangzill.zarangzill_back.videofavorite.service.mapper;


import com.zarangzill.zarangzill_back.videofavorite.service.VideoFavoriteDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface VideoFavoriteMapper {
    List<Map> selectVideoFavoriteList(Map videoFavoriteMap);
    VideoFavoriteDTO selectVideoFavoriteInfo(Map videoFavoriteMap);
    int createVideoFavorite(VideoFavoriteDTO videoFavoriteDto);
    int updateVideoFavorite(VideoFavoriteDTO videoFavoriteDto);
    int deleteVideoFavorite(VideoFavoriteDTO videoFavoriteDto);
}
