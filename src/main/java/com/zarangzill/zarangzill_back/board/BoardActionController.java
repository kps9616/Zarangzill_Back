package com.zarangzill.zarangzill_back.board;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import com.zarangzill.zarangzill_back.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/board")
public class BoardActionController {

    @Autowired
    BoardService boardService;

    @PostMapping("/createBoard")
    public Map boardCreate(BoardDTO boardDto) {
        return boardService.createBoard(boardDto);
    }
    @PostMapping("/updateBoard")
    public Map boardUpdate(BoardDTO boardDto) {
        return boardService.updateBoard(boardDto);
    }
    @PostMapping("/deleteBoard")
    public Map boardDelete(BoardDTO boardDto) {
        return boardService.deleteBoard(boardDto);
    }


}
