package com.zarangzill.zarangzill_back.judge.service.dao;

import com.zarangzill.zarangzill_back.judge.service.JudgeDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class JudgeDAO {
    public List<Map> selectJudgeScoreList(Map judgeMap, SqlSessionTemplate session){
        return session.selectList("JudgeDAO.selectJudgeScoreList", judgeMap);
    }
    public int insertJudgeScore(JudgeDTO paramMap, SqlSessionTemplate session) {
        return session.selectOne("UserMapper.userList", paramMap);
    }
}
