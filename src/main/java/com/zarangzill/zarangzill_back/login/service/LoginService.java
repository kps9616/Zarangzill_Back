package com.zarangzill.zarangzill_back.login.service;

import java.util.Map;
public interface LoginService {

    LoginDTO getUserInfo(Map loginMap);

    LoginDTO getUserInfo(LoginDTO loginDTO);
    LoginDTO getUserInfo(String email);
    String loginAction(LoginDTO loginDTO);

}