package com.zarangzill.zarangzill_back.login.service;

import java.util.Map;
public interface LoginService {

    LoginDTO getUserInfo(Map loginMap);

    LoginDTO getUserInfo(LoginDTO loginDTO);
    String loginAction(LoginDTO loginDTO);

}