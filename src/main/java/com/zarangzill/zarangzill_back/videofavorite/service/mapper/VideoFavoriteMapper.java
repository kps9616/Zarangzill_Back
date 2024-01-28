package com.zarangzill.zarangzill_back.videofavorite.service.mapper;


import com.zarangzill.zarangzill_back.videofavorite.service.VideoFavoriteDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface VideoFavoriteMapper {
    public List<Map> selectVideoFavoriteList(Map videoFavoriteMap);
    public VideoFavoriteDTO selectVideoFavoriteInfo(Map videoFavoriteMap);
    public int createVideoFavorite(VideoFavoriteDTO videoFavoriteDto);
    public int updateVideoFavorite(VideoFavoriteDTO videoFavoriteDto);
    public int deleteVideoFavorite(VideoFavoriteDTO videoFavoriteDto);
}
