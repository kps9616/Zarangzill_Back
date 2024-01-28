package com.zarangzill.zarangzill_back.login;

import com.zarangzill.zarangzill_back.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginViewController {

    @Autowired
    BoardService boardService;

    @RequestMapping(value="/login")
    public String login() {

        return "/auth/login";
    }

    @RequestMapping(value="/signup")
    public String signup(Model model) {
        model.addAttribute("useTermsInfo", boardService.selectUseTermsInfo());
        model.addAttribute("privacyStatementInfo", boardService.selectPrivacyStatementInfo());
        return "/auth/signup";
    }
}