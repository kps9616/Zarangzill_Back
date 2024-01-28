package com.zarangzill.zarangzill_back.board;

import com.zarangzill.zarangzill_back.board.service.BoardService;
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

    //문의/제안
    @RequestMapping(value="/inquirySuggestionListView")
    public String inquirySuggestionListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("boardList", boardService.selectBoardList(paramMap));
        return "/board/inquirySuggestionListView";
    }

    //문의/제안
    @RequestMapping("/inquirySuggestionView")
    public String inquirySuggestionView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("boardList", boardService.selectBoardList(paramMap));
        return "board/inquirySuggestionView";
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

}