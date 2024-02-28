package com.zarangzill.zarangzill_back.login;

import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import com.zarangzill.zarangzill_back.login.service.LoginService;
//import com.zarangzill.zarangzill_back.login.service.SocialLoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequiredArgsConstructor
@RequestMapping("/login")

public class LoginActionController {
    @Autowired
    LoginService loginService;

    @GetMapping("/loginAction")
    public LoginDTO login(@RequestParam Map<String, Object> map) {

        LoginDTO loginDTO = loginService.getUserInfo(map);
        return loginDTO;
    }



}