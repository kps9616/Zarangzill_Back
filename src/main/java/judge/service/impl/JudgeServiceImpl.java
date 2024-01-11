package judge.service.impl;

import judge.service.JudgeDTO;
import judge.service.dao.JudgeDAO;
import org.mybatis.spring.SqlSessionTemplate;

public class JudgeServiceImpl {

    JudgeDAO judgeDAO;

    SqlSessionTemplate session;


    public int insertJudgeScore(JudgeDTO paramMap) {
        return judgeDAO.insertJudgeScore(paramMap, session);
    }
}
