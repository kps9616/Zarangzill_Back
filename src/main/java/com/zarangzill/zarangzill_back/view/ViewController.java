package com.zarangzill.zarangzill_back.view;

import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import com.zarangzill.zarangzill_back.login.service.LoginService;
import com.zarangzill.zarangzill_back.util.StringUtil;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.OAuth2Error;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.util.Map;

@Controller
@CrossOrigin
public class ViewController {

    @Autowired
    LoginService loginService;
    private static final Logger logger = LoggerFactory.getLogger(ViewController.class);

    @Autowired
    HttpSession httpSession;
    //메인 쇼츠 페이지
    @GetMapping("main")
    public ModelAndView mainShots(Model model) {
        ModelAndView mav = new ModelAndView();
        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");

        mav.setViewName("main");
        mav.addObject("title","메인입니다.");

        if(loginDTO != null) {
            mav.addObject("userId", StringUtil.checkNull(loginDTO.getUserID()));
        }

        return mav;
    }

    //팬 페이지
    @GetMapping("fans")
    public ModelAndView fans(Model model) {
        ModelAndView mav = new ModelAndView();
        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");

        if(loginDTO == null) {

            mav.setViewName("login");
            return mav;
        }
        logger.info("hello");
        mav.setViewName("fans");
        mav.addObject("title","메인입니다.");
        mav.addObject("userId",loginDTO.getUserID());
        return mav;
    }
    //월 우승 진행 중 페이지
    @GetMapping("monthWinner")
    public ModelAndView monthWinner(Model model) {
        ModelAndView mav = new ModelAndView();
        LocalDate now = LocalDate.now();
        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");

        if(loginDTO == null) {

            mav.setViewName("login");
            return mav;
        }

        mav.setViewName("monthWinner");
        mav.addObject("userId",loginDTO.getUserID());
        mav.addObject("year",now.getYear());
        mav.addObject("month",now.getMonthValue());
        return mav;
    }
    //주 우승 진행중 페이지
    @GetMapping("weekWinner")
    public ModelAndView weekWinner(Model model) {
        ModelAndView mav = new ModelAndView();
        LocalDate now = LocalDate.now();

        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");

        if(loginDTO == null) {

            mav.setViewName("login");
            return mav;
        }

        mav.setViewName("weekWinner");
        mav.addObject("userId",loginDTO.getUserID());
        mav.addObject("year",now.getYear());
        mav.addObject("month",now.getMonthValue());
        return mav;
    }
    //예전 월 우승 목록 페이지
    @GetMapping("monthWinnerList")
    public ModelAndView monthWinnerList(@RequestParam String dType, @RequestParam int sYear, @RequestParam int sMonth, Model model) {
        ModelAndView mav = new ModelAndView();
        LocalDate sDay = LocalDate.of(sYear, sMonth, 1);
        LocalDate now = LocalDate.now();

        if("before".equals(dType)) {
            sDay = sDay.minusMonths(1);
        }
        else {
            sDay = sDay.plusMonths(1);
        }

        if(now.getYear() == sDay.getYear() && now.getMonthValue() == sDay.getMonthValue()) {
            mav.setViewName("monthWinner");
            mav.addObject("year",now.getYear());
            mav.addObject("month",now.getMonthValue());
        }
        else {
            mav.setViewName("monthWinnerList");
            mav.addObject("sYear",sDay.getYear());
            mav.addObject("sMonth",sDay.getMonthValue());
        }

        return mav;
    }

    //예전 주 우승 목록 페이지
    @GetMapping("weekWinnerList")
    public ModelAndView weekWinnerList(@RequestParam String dType, @RequestParam int sYear, @RequestParam String isEnd, Model model) {
        ModelAndView mav = new ModelAndView();
        LocalDate sDay = LocalDate.of(sYear, 1, 1);
        LocalDate now = LocalDate.now();

        if("before".equals(dType) && "D".equals(isEnd)) {
            sDay = now;
        }
        else if("before".equals(dType) &&! "D".equals(isEnd)) {
            sDay = sDay.minusYears(1);
        }
        else if("after".equals(dType) && !"Y".equals(isEnd)) {
            sDay = sDay.plusYears(1);
        }

        if(now.getYear() == sDay.getYear() && "Y".equals(isEnd)) {
            mav.setViewName("weekWinner");
            mav.addObject("year",now.getYear());
            mav.addObject("month",now.getMonthValue());
        }
        else {
            mav.setViewName("weekWinnerList");
            mav.addObject("sYear",sDay.getYear());
        }

        return mav;
    }

    @GetMapping("alarm")
    public ModelAndView mainAlarm(Model model) {
        ModelAndView mav = new ModelAndView();
        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");

        if(loginDTO == null) {

            mav.setViewName("login");
            return mav;
        }
        mav.setViewName("alarm");
        mav.addObject("title","알람입니다.");
        mav.addObject("userId",loginDTO.getUserID());
        return mav;
    }

    @GetMapping("search")
    public ModelAndView mainSearch(Model model) {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("search");
        mav.addObject("title","알람입니다.");
        return mav;
    }


    @GetMapping("search/detail")
    public ModelAndView mainSearchDetail(@RequestParam("searchKeyword") String searchKeyword, Model model) {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("searchDetail");
        mav.addObject("searchKeyword",searchKeyword);
        return mav;
    }

    @GetMapping("search/detail/hash")
    public ModelAndView mainSearchHashDetail(@RequestParam("searchKeyword") String searchKeyword,Model model) {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("searchHashDetail");
        mav.addObject("searchKeyword",searchKeyword);
        return mav;
    }

    @GetMapping("advertisement")
    public ModelAndView advertisement(Model model) {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("advertisement");
        mav.addObject("title","알람입니다.");
        return mav;
    }

    @GetMapping("subShots")
    public ModelAndView subShots(@RequestParam Map ParamMap, Model model) {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("subShots");

        mav.addObject("reply_id",ParamMap.get("reply_id"));
        mav.addObject("title","알람입니다.");
        return mav;
    }
    @PostMapping("videoRec")
    public ModelAndView uploadVideoRec(@RequestParam("uploadFilePath") String filePath, @RequestParam("uploadThumbnail") String uploadThumbnail, Model model) {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("videoRec");
        mav.addObject("uploadThumbnail",uploadThumbnail);
        mav.addObject("filePath",filePath);
        mav.addObject("userId","1");

        return mav;
    }
}
