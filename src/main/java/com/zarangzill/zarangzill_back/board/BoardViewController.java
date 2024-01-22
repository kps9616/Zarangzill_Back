package com.zarangzill.zarangzill_back.board;

import com.zarangzill.zarangzill_back.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;
import java.util.Objects;

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

    @RequestMapping("/serviceIntroductionView")
    public String serviceIntroductionView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("boardInfo", boardService.selectBoardInfo(paramMap));
        return "board/serviceIntroductionView";
    }

    @RequestMapping(value="/inquirySuggestionListView")
    public String inquirySuggestionListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("boardList", boardService.selectBoardList(paramMap));
        return "/board/inquirySuggestionListView";
    }

    @RequestMapping("/inquirySuggestionView")
    public String inquirySuggestionView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("boardInfo", boardService.selectBoardInfo(paramMap));
        return "board/inquirySuggestionView";
    }

}