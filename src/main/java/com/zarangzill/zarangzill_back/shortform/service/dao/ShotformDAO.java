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
}
