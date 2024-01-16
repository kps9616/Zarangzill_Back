package com.zarangzill.zarangzill_back.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginViewController {

    @RequestMapping(value="/login")
    public String login() {

        return "/login/login";
    }


    @GetMapping("/index")
    public String getIndex() {

        return "index";
    }
}