package com.zarangzill.zarangzill_back.video.video.service.mapper;

import com.zarangzill.zarangzill_back.video.video.service.VideoDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface VideoMapper {
    List<Map> selectVideoList(Map videoMap);
    List<Map> selectMyVideoList(Map videoMap);
    Map selectVideoInfo(Map videoMap);
    int createVideo(VideoDTO videoDto);
    int updateVideo(VideoDTO videoDto);
    int deleteVideo(VideoDTO videoDto);

}
