package com.zarangzill.zarangzill_back.board.service.impl;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import com.zarangzill.zarangzill_back.board.service.BoardService;
import com.zarangzill.zarangzill_back.board.service.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BoardServiceImpl implements BoardService {
    @Autowired
    private BoardMapper boardMapper;


    public List<Map> selectBoardList(Map boardMap) {
        return boardMapper.selectBoardList(boardMap);
    }
    public BoardDTO selectBoardInfo(Map boardMap) {
        return boardMapper.selectBoardInfo(boardMap);
    }
    public int createBoard(BoardDTO boardDto) {
        return boardMapper.createBoard(boardDto);
    }

    public int updateBoard(BoardDTO boardDto) {
        return boardMapper.updateBoard(boardDto);
    }

    public int deleteBoard(BoardDTO boardDto) {
        return boardMapper.deleteBoard(boardDto);
    }

    public List<Map> selectBoardListWithBoardReply(Map boardMap) {
        return boardMapper.selectBoardListWithBoardReply(boardMap);
    }

}
