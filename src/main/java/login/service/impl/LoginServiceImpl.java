package login.service.impl;

import login.service.LoginDTO;
import login.service.LoginService;
import login.service.SocialLoginService;
import login.service.dao.LoginDAO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;

public class LoginServiceImpl implements LoginService {
    private LoginDAO loginDAO;

    private SocialLoginService socialLoginService;

    private SqlSessionTemplate session;


    public LoginDTO getUserInfo(Map loginMap) {
        return loginDAO.loginUser(loginMap, session);
    }

    public LoginDTO getUserInfo(LoginDTO loginDTO) {
        return loginDAO.loginUser(loginDTO, session);
    }

    public String LoginAction(LoginDTO sLoginDTO){
        // 회원정보 조회
        LoginDTO rLoginDTO = getUserInfo(sLoginDTO);

        // 회원
        if(rLoginDTO != null){

        } else {

        }

        return "";
    }

}
