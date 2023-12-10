package login.service.dao;

import login.service.LoginDTO;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.Map;

public class LoginDAO {
    public LoginDTO loginUser(Map param, SqlSessionTemplate session) {
        return session.selectOne("UserMapper.userList", param);
    }

}
