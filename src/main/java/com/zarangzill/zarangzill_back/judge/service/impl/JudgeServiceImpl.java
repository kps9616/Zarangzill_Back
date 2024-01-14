package com.zarangzill.zarangzill_back.judge.service.impl;

import com.zarangzill.zarangzill_back.judge.service.dao.JudgeDAO;
import com.zarangzill.zarangzill_back.judge.service.JudgeDTO;
import org.mybatis.spring.SqlSessionTemplate;

public class JudgeServiceImpl {

    JudgeDAO judgeDAO;

    SqlSessionTemplate session;


    public int insertJudgeScore(JudgeDTO paramMap) {
        return judgeDAO.insertJudgeScore(paramMap, session);
    }
}
