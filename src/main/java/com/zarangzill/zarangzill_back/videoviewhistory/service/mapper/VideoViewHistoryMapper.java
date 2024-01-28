package com.zarangzill.zarangzill_back.videoviewhistory.service.mapper;


import com.zarangzill.zarangzill_back.videoviewhistory.service.VideoViewHistoryDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface VideoViewHistoryMapper {
    List<Map> selectVideoViewHistoryList(Map videoViewHistoryMap);
    VideoViewHistoryDTO selectVideoViewHistoryInfo(Map videoViewHistoryMap);
    int createVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto);
    int updateVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto);
    int deleteVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto);
}
