package com.zarangzill.zarangzill_back.shortform.service.dao;

import com.zarangzill.zarangzill_back.shortform.service.ShotformDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class ShotformDAO {
    public int insertVideoUserFav(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.insert("ShotformDAO.insertVideoUserFav", paramMap);
    }
    public HashMap selectVideoCountInfo(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.selectOne("ShotformDAO.selectVideoCountInfo", paramMap);
    }

    public HashMap selectCheckUserVideoFav(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.selectOne("ShotformDAO.selectCheckUserVideoFav", paramMap);
    }
    public int insertUserViewHistory(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.insert("ShotformDAO.insertUserViewHistory", paramMap);
    }
    public List<ShotformDTO> selectManyViewHistory(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ShotformDAO.selectManyViewHistory", paramMap);
    }
    public int insertUserVideoInfo(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.insert("ShotformDAO.insertUserVideoInfo", paramMap);
    }
    public int insertUserVideoTagsInfo(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.insert("ShotformDAO.insertUserVideoTagsInfo", paramMap);
    }
    public int insertUserVideoContInfo(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.insert("ShotformDAO.insertUserVideoContInfo", paramMap);
    }
    public String selectNewVideoId(ShotformDTO paramMap, SqlSessionTemplate session) {
        return (String)session.selectOne("ShotformDAO.selectNewVideoId", paramMap);
    }
    public List<ShotformDTO> selectSearchKeyWordList(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ShotformDAO.selectSearchKeyWordList", paramMap);
    }
    public List<ShotformDTO> selectSearchKeyWordDetailList(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ShotformDAO.selectSearchKeyWordDetailList", paramMap);
    }
    public ShotformDTO selectWeekPredictionRangeInfo(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.selectOne("ShotformDAO.selectWeekPredictionRangeInfo", paramMap);
    }
    public List<ShotformDTO> selectVideoRankListFor4(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ShotformDAO.selectVideoRankListFor4", paramMap);
    }
    public ShotformDTO selectUserCheckWinPredInfo(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.selectOne("ShotformDAO.selectUserCheckWinPredInfo", paramMap);
    }

    public List<ShotformDTO> selectVideoList(ShotformDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ShotformDAO.selectVideoList", paramMap);
    }

}
