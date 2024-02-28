package com.zarangzill.zarangzill_back.login.service.impl;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import com.zarangzill.zarangzill_back.login.service.LoginService;
//import com.zarangzill.zarangzill_back.login.service.SocialLoginService;
import com.zarangzill.zarangzill_back.login.service.mapper.LoginMapper;
import com.zarangzill.zarangzill_back.member.service.MemberDTO;
import com.zarangzill.zarangzill_back.member.service.MemberService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper loginMapper;

    @Autowired
    private MemberService memberService;

    public LoginDTO getUserInfo(Map loginMap) {
        return loginMapper.loginUser(loginMap);
    }

    public LoginDTO getUserInfo(LoginDTO loginDto) {
        return loginMapper.loginUser(loginDto);
    }

    public Optional<LoginDTO> getUserInfo(String email) {
        LoginDTO setLoginDto = new LoginDTO();
        setLoginDto.setEmail(email);
        LoginDTO loginDto = loginMapper.loginUser(setLoginDto);

        if(loginDto == null || loginDto.getUserID().isEmpty()){
            return Optional.empty();
        }
        return Optional.of(loginDto);
    }

    public void saveUserInfo(HttpSession httpSession, Map loginMap){
        httpSession.setAttribute("termsOfUseChk","Y");
        if(loginMap.get("markgChk") != null){
            httpSession.setAttribute("markgChk",loginMap.get("markgChk"));
        } else {
            httpSession.setAttribute("markgChk", "N");
        }
    }



}
