package com.zarangzill.zarangzill_back.login.service;

import jakarta.servlet.http.HttpSession;

import java.util.Map;
import java.util.Optional;

public interface LoginService {

    LoginDTO getUserInfo(Map loginMap);

    LoginDTO getUserInfo(LoginDTO loginDTO);
    void saveUserInfo(HttpSession httpSession, Map loginMap);
    Optional <LoginDTO> getUserInfo(String email);


}