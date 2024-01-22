package com.zarangzill.zarangzill_back.mypage;

import com.zarangzill.zarangzill_back.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("/mypage")
public class MypageViewController {
    @Autowired
    private BoardService boardService;

    @RequestMapping(value="/mypageView")
    public String boardListView(@RequestParam Map ParamMap, Model model) {

        return "/mypage/mypageView";
    }


    @GetMapping("/boardView")
    public String boardView(@RequestParam Map ParamMap, Model model) {
        model.addAttribute("boardList", boardService.selectBoardList(ParamMap));
        return "board/boardView";
    }
}