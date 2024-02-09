package com.zarangzill.zarangzill_back.board.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import com.zarangzill.zarangzill_back.board.service.BoardService;
import com.zarangzill.zarangzill_back.board.service.mapper.BoardMapper;
import com.zarangzill.zarangzill_back.board.service.mapper.BoardReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BoardServiceImpl implements BoardService {
    @Autowired
    private BoardMapper boardMapper;
    @Autowired
    private BoardReplyMapper boardReplyMapper;

    public List<Map> selectBoardList(Map boardMap) {
        return boardMapper.selectBoardList(boardMap);
    }

    public BoardDTO selectBoardInfo(Map boardMap) {
        return boardMapper.selectBoardInfo(boardMap);
    }

    public BoardDTO selectServiceIntroductionInfo() {
        Map boardMap = new HashMap();
        boardMap.put("type", "2");
        boardMap.put("flag_use", "Y");
        return boardMapper.selectBoardInfo(boardMap);
    }

    public BoardDTO selectUseTermsInfo() {
        Map boardMap = new HashMap();
        boardMap.put("type", "5");
        boardMap.put("flag_use", "Y");
        return boardMapper.selectBoardInfo(boardMap);
    }

    public BoardDTO selectPrivacyStatementInfo() {
        Map boardMap = new HashMap();
        boardMap.put("type", "6");
        boardMap.put("flag_use", "Y");
        return boardMapper.selectBoardInfo(boardMap);
    }

    public Map createBoard(BoardDTO boardDto) {
        Map response = new HashMap<>();
        if(boardMapper.createBoard(boardDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public Map updateBoard(BoardDTO boardDto) {
        Map response = new HashMap<>();
        if(boardMapper.updateBoard(boardDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public Map deleteBoard(BoardDTO boardDto) {
        Map response = new HashMap<>();
        if(boardMapper.deleteBoard(boardDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public List<Map> selectFanBoardList(Map boardMap) {
        return boardMapper.selectFanBoardList(boardMap);
    }
    public List<Map> selectFanBoardReplyList(Map boardMap) {
        return boardMapper.selectFanBoardReplyList(boardMap);
    }

    public Map selectFanBoardInfo(Map boardMap) {
        Map boardInfo = boardMapper.selectFanBoardInfo(boardMap);
        boardInfo.put("boardReplyList", boardReplyMapper.selectBoardReplyList(boardMap));
        return boardInfo;
    }
}
