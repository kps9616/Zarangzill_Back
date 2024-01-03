package mypage.service.dao;

import mypage.service.MypageDTO;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.Map;

public class MypageDAO {
    public MypageDTO loginUser(Map param, SqlSessionTemplate session) {
        return session.selectOne("UserMapper.userList", param);
    }

}
