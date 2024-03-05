package com.zarangzill.zarangzill_back.board;

import com.zarangzill.zarangzill_back.board.service.BoardService;
import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/board")
public class BoardViewController {
    @Autowired
    private BoardService boardService;

    @Autowired
    HttpSession httpSession;

    @RequestMapping(value="/boardListView")
    public String boardListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("boardList", boardService.selectBoardList(paramMap));
        return "/board/boardListView";
    }

    @RequestMapping("/boardView")
    public String boardView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("boardInfo", boardService.selectBoardInfo(paramMap));
        return "board/boardView";
    }
    
    //서비스소개
    @RequestMapping("/serviceIntroductionView")
    public String serviceIntroductionView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("serviceIntroductionInfo", boardService.selectServiceIntroductionInfo());
        return "board/serviceIntroductionView";
    }

    //자주묻는질문 목록
    @RequestMapping(value="/FAQListView")
    public String FAQListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("faqList", boardService.selectBoardList(paramMap));
        return "board/FAQListView";
    }

    //자주묻는질문
    @RequestMapping("/FAQView")
    public String FAQView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("faqInfo", boardService.selectBoardInfo(paramMap));
        return "board/FAQView";
    }

    //문의/제안 목록
    @RequestMapping(value="/QnAListView")
    public String QnAListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("qnaList", boardService.selectBoardList(paramMap));
        return "board/QnAListView";
    }

    //문의/제안
    @RequestMapping("/QnAView")
    public String QnAView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("qnaInfo", boardService.selectBoardInfo(paramMap));
        return "board/QnAView";
    }

    //이용약관
    @RequestMapping("/useTermsView")
    public String useTermsView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("useTermsInfo", boardService.selectUseTermsInfo());
        return "board/useTermsView";
    }

    //개인정보 취급방침
    @RequestMapping("/privacyStatementView")
    public String privacyStatementView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("privacyStatementInfo", boardService.selectPrivacyStatementInfo());
        return "board/privacyStatementView";
    }

    //팬게시글
    @RequestMapping(value="/fanBoardListView")
    public String fanBoardListView(@RequestParam Map ParamMap, Model model) {

        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");
        ParamMap.put("user_id" , loginDTO.getUserID());

        model.addAttribute("fanBoardList", boardService.selectFanBoardList(ParamMap));
        return "/fan/fanBoardListView";
    }

    //팬게시물
    @RequestMapping(value="/fanBoardView")
    public String fanBoardView(@RequestParam Map ParamMap, Model model) {
        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");
        ParamMap.put("user_id" , loginDTO.getUserID());
        model.addAttribute("fanBoardInfo", boardService.selectFanBoardInfo(ParamMap));
        return "fan/fanBoardView";
    }

    //팬댓글
    @RequestMapping(value="/fanBoardRelpyListView")
    public String fanBoardRelpyListView(@RequestParam Map ParamMap, Model model) {
        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");
        ParamMap.put("user_id" , loginDTO.getUserID());
        model.addAttribute("fanBoardReplyList", boardService.selectFanBoardReplyList(ParamMap));
        return "fan/fanBoardRelpyListView";
    }

    //제작자센터 목록
    @RequestMapping(value="/producerCentorListView")
    public String producerCentorListView(@RequestParam Map ParamMap, Model model) {
        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");
        ParamMap.put("user_id" , loginDTO.getUserID());
        model.addAttribute("fanBoardReplyList", boardService.selectBoardList(ParamMap));
        return "board/producerCentorListView";
    }

    //제작자센터 목록
    @RequestMapping(value="/producerCentorView")
    public String producerCentorView(@RequestParam Map ParamMap, Model model) {
        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");
        ParamMap.put("user_id" , loginDTO.getUserID());
        model.addAttribute("producerCentorList", boardService.selectBoardInfo(ParamMap));
        return "board/producerCentorView";
    }

    //온라인문의
    @RequestMapping(value="/onlineQnAView")
    public String onlineQnAView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("onlineQnAList", boardService.selectBoardList(paramMap));
        return "board/onlineQnAView";
    }

}