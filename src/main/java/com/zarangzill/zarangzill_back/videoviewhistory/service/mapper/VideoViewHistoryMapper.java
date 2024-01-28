package com.zarangzill.zarangzill_back.videoviewhistory.service.mapper;


import com.zarangzill.zarangzill_back.videoviewhistory.service.VideoViewHistoryDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface VideoViewHistoryMapper {
    public List<Map> selectVideoViewHistoryList(Map videoViewHistoryMap);
    public VideoViewHistoryDTO selectVideoViewHistoryInfo(Map videoViewHistoryMap);
    public int createVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto);
    public int updateVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto);
    public int deleteVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto);
}
