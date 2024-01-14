package com.zarangzill.zarangzill_back.login.service;

import java.util.Map;
public interface LoginService {

    public LoginDTO getUserInfo(Map loginMap);

    public LoginDTO getUserInfo(LoginDTO loginDTO);
    public String LoginAction(LoginDTO loginDTO);

}