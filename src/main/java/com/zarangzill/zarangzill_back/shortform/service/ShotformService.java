package com.zarangzill.zarangzill_back.shortform.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public interface ShotformService {

    int insertVideoUserFav(ShotformDTO paramMap);
    HashMap selectVideoCountInfo(ShotformDTO paramMap);
    HashMap selectCheckUserVideoFav(ShotformDTO paramMap);
    int insertUserViewHistory(ShotformDTO paramMap);
    List<ShotformDTO> selectManyViewHistory(ShotformDTO paramMap);
    int insertUserVideoInfo(ShotformDTO paramMap);
    int insertUserVideoTagsInfo(ShotformDTO paramMap);
    int insertUserVideoContInfo(ShotformDTO paramMap);
    String selectNewVideoId(ShotformDTO paramMap);
    List<ShotformDTO> selectSearchKeyWordList(ShotformDTO paramMap);
    List<ShotformDTO> selectSearchKeyWordDetailList(ShotformDTO paramMap);
    ShotformDTO selectWeekPredictionRangeInfo(ShotformDTO paramMap);
    List<ShotformDTO> selectVideoRankListFor4(ShotformDTO paramMap);
    ShotformDTO selectUserCheckWinPredInfo(ShotformDTO paramMap);
    List<ShotformDTO> selectVideoList(ShotformDTO paramMap);

}
