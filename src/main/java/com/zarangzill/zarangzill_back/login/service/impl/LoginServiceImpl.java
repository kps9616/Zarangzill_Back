package com.zarangzill.zarangzill_back.login.service.impl;

import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import com.zarangzill.zarangzill_back.login.service.LoginService;
import com.zarangzill.zarangzill_back.login.service.SocialLoginService;
import com.zarangzill.zarangzill_back.login.service.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;
@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper loginMapper;
    @Autowired
    private SocialLoginService socialLoginService;

    public LoginDTO getUserInfo(Map loginMap) {
        return loginMapper.loginUser(loginMap);
    }

    public LoginDTO getUserInfo(LoginDTO loginDTO) {
        return loginMapper.loginUser(loginDTO);
    }

    public String loginAction(LoginDTO sLoginDTO){
        // 회원정보 조회
        LoginDTO rLoginDTO = getUserInfo(sLoginDTO);

        // 회원
        if(rLoginDTO != null){

        } else {

        }

        return "";
    }

}
