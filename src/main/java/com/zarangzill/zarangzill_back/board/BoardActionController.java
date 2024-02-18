package com.zarangzill.zarangzill_back.board;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import com.zarangzill.zarangzill_back.board.service.BoardReplyDTO;
import com.zarangzill.zarangzill_back.board.service.BoardReplyService;
import com.zarangzill.zarangzill_back.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/board")
public class BoardActionController {

    @Autowired
    BoardService boardService;
    @Autowired
    BoardReplyService boardReplyService;

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


    @PostMapping("/createBoardReply")
    public Map createBoardReply(BoardReplyDTO boardReplyDto) {
        return boardReplyService.createBoardReply(boardReplyDto);
    }
    @PostMapping("/updateBoardReply")
    public Map updateBoardReply(BoardReplyDTO boardReplyDto) {
        return boardReplyService.updateBoardReply(boardReplyDto);
    }
    @PostMapping("/deleteBoardReply")
    public Map deleteBoardReply(BoardReplyDTO boardReplyDto) {
        return boardReplyService.deleteBoardReply(boardReplyDto);
    }


}
