package com.zarangzill.zarangzill_back.shortform.service.impl;

import com.zarangzill.zarangzill_back.shortform.service.ShotformDTO;
import com.zarangzill.zarangzill_back.shortform.service.ShotformService;
import com.zarangzill.zarangzill_back.shortform.service.dao.ShotformDAO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class ShotformServiceImpl implements ShotformService {

    @Autowired
    ShotformDAO shotformDAO;
    @Autowired
    SqlSessionTemplate session;


    public int insertVideoUserFav(ShotformDTO paramMap) {
        return shotformDAO.insertVideoUserFav(paramMap, session);
    }

    public HashMap selectVideoCountInfo(ShotformDTO paramMap) {
        return shotformDAO.selectVideoCountInfo(paramMap, session);
    }
    public HashMap selectCheckUserVideoFav(ShotformDTO paramMap) {
        return shotformDAO.selectCheckUserVideoFav(paramMap, session);
    }
    public int insertUserViewHistory(ShotformDTO paramMap) {
        return shotformDAO.insertUserViewHistory(paramMap, session);
    }
    public List<ShotformDTO> selectManyViewHistory(ShotformDTO paramMap) {
        return shotformDAO.selectManyViewHistory(paramMap, session);
    }
    public int insertUserVideoInfo(ShotformDTO paramMap) {
        return shotformDAO.insertUserVideoInfo(paramMap, session);
    }
    public int insertUserVideoTagsInfo(ShotformDTO paramMap) {
        return shotformDAO.insertUserVideoTagsInfo(paramMap, session);
    }
    public int insertUserVideoContInfo(ShotformDTO paramMap) {
        return shotformDAO.insertUserVideoContInfo(paramMap, session);
    }
    public String selectNewVideoId(ShotformDTO paramMap) {
        return shotformDAO.selectNewVideoId(paramMap, session);
    }
    public List<ShotformDTO> selectSearchKeyWordList(ShotformDTO paramMap) {
        return shotformDAO.selectSearchKeyWordList(paramMap, session);
    }
    public List<ShotformDTO> selectSearchKeyWordDetailList(ShotformDTO paramMap) {
        return shotformDAO.selectSearchKeyWordDetailList(paramMap, session);
    }
    public ShotformDTO selectWeekPredictionRangeInfo(ShotformDTO paramMap) {
        return shotformDAO.selectWeekPredictionRangeInfo(paramMap, session);
    }
    public List<ShotformDTO> selectVideoRankListFor4(ShotformDTO paramMap) {
        return shotformDAO.selectVideoRankListFor4(paramMap, session);
    }
    public ShotformDTO selectUserCheckWinPredInfo(ShotformDTO paramMap) {
        return shotformDAO.selectUserCheckWinPredInfo(paramMap, session);
    }
    public List<ShotformDTO> selectVideoList(ShotformDTO paramMap) {
        return shotformDAO.selectVideoList(paramMap, session);
    }



}
