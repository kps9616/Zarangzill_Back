package com.zarangzill.zarangzill_back.login;

import com.zarangzill.zarangzill_back.board.service.BoardService;
import com.zarangzill.zarangzill_back.login.service.LoginService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class LoginViewController {

    @Autowired
    BoardService boardService;

    @Autowired
    LoginService loginService;

    @Autowired
    HttpSession httpSession;

    @RequestMapping(value="/login")
    public String login() {

        return "/auth/login";
    }

    @RequestMapping(value="/termsOfUse")
    public String termsOfUse(HttpServletRequest request, Model model) {
        model.addAttribute("useTermsInfo", boardService.selectUseTermsInfo());
        model.addAttribute("privacyStatementInfo", boardService.selectPrivacyStatementInfo());
        model.addAttribute("errMsg", (request.getParameter("errMsg") != null ? request.getParameter("errMsg") : ""));
        model.addAttribute("email", (httpSession.getAttribute("email") != null ? httpSession.getAttribute("email").toString() : ""));
        return "/auth/termsOfUse";
    }

    @RequestMapping(value="/snsSignUp")
    public String snsSignUp(@RequestParam Map<String, Object> paramMap, HttpServletRequest request, Model model) {
        loginService.saveUserInfo(httpSession, paramMap);
        return "/auth/snsSignUp";
    }
}