package com.zarangzill.zarangzill_back.board.service.impl;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import com.zarangzill.zarangzill_back.board.service.BoardReplyDTO;
import com.zarangzill.zarangzill_back.board.service.BoardReplyService;
import com.zarangzill.zarangzill_back.board.service.BoardService;
import com.zarangzill.zarangzill_back.board.service.mapper.BoardMapper;
import com.zarangzill.zarangzill_back.board.service.mapper.BoardReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BoardReplyServiceImpl implements BoardReplyService {
    @Autowired
    private BoardReplyMapper boardReplyMapper;

    public List<Map> selectBoardReplyList(Map boardReplyMap) {
        return boardReplyMapper.selectBoardReplyList(boardReplyMap);
    }
    public BoardReplyDTO selectBoardReplyInfo(Map boardReplyMap) {
        return boardReplyMapper.selectBoardReplyInfo(boardReplyMap);
    }
    public Map createBoardReply(BoardReplyDTO boardReplyDto) {
        Map response = new HashMap<>();
        if(boardReplyMapper.createBoardReply(boardReplyDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public Map updateBoardReply(BoardReplyDTO boardReplyDto) {
        Map response = new HashMap<>();
        if(boardReplyMapper.updateBoardReply(boardReplyDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public Map deleteBoardReply(BoardReplyDTO boardReplyDto) {
        Map response = new HashMap<>();
        if(boardReplyMapper.deleteBoardReply(boardReplyDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;

    }
}
