package judge.service.dao;

import judge.service.JudgeDTO;
import org.mybatis.spring.SqlSessionTemplate;

public class JudgeDAO {

    public int insertJudgeScore(JudgeDTO paramMap, SqlSessionTemplate session) {
        return session.selectOne("UserMapper.userList", paramMap);

    }
}
