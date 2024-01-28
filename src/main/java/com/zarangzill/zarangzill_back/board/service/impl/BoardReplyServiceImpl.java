package com.zarangzill.zarangzill_back.board.service.impl;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import com.zarangzill.zarangzill_back.board.service.BoardReplyDTO;
import com.zarangzill.zarangzill_back.board.service.BoardReplyService;
import com.zarangzill.zarangzill_back.board.service.BoardService;
import com.zarangzill.zarangzill_back.board.service.mapper.BoardMapper;
import com.zarangzill.zarangzill_back.board.service.mapper.BoardReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public int createBoardReply(BoardReplyDTO boardReplyDto) {
        return boardReplyMapper.createBoardReply(boardReplyDto);
    }

    public int updateBoardReply(BoardReplyDTO boardReplyDto) {
        return boardReplyMapper.updateBoardReply(boardReplyDto);
    }

    public int deleteBoardReply(BoardReplyDTO boardReplyDto) {
        return boardReplyMapper.deleteBoardReply(boardReplyDto);
    }
}
