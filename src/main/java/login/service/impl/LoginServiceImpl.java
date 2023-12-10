package login.service.impl;

import login.service.LoginDTO;
import login.service.LoginService;
import login.service.dao.LoginDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.Map;

public class LoginServiceImpl implements LoginService {

    @Autowired
    LoginDAO loginDAO;

    @Autowired
    SqlSessionTemplate session;

    public LoginDTO getUserInfo(Map loginMap) {
        return loginDAO.loginUser(loginMap, session);
    }
}
