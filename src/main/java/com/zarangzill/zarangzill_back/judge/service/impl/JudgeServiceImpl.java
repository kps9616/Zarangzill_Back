package com.zarangzill.zarangzill_back.judge.service.impl;

import com.zarangzill.zarangzill_back.judge.service.JudgeService;
import com.zarangzill.zarangzill_back.judge.service.dao.JudgeDAO;
import com.zarangzill.zarangzill_back.judge.service.JudgeDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class JudgeServiceImpl implements JudgeService {
    @Autowired
    JudgeDAO judgeDAO;
    @Autowired
    SqlSessionTemplate session;

    public List<Map> selectJudgeScoreList(Map judgeMap){
        return judgeDAO.selectJudgeScoreList(judgeMap, session);
    }

    public int insertJudgeScore(JudgeDTO paramMap) {
        return judgeDAO.insertJudgeScore(paramMap, session);
    }
}
