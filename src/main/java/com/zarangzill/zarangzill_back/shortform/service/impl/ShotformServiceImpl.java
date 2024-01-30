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



}
