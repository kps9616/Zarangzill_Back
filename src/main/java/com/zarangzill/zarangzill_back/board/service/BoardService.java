package com.zarangzill.zarangzill_back.board.service;

import java.util.List;
import java.util.Map;

public interface BoardService {

    List<Map> selectBoardList(Map boardMap);
    BoardDTO selectBoardInfo(Map boardMap);
    int createBoard(BoardDTO BoardDto);

    int updateBoard(BoardDTO BoardDto);

    int deleteBoard(BoardDTO BoardDto);

    List<Map> selectBoardListWithBoardReply(Map boardMap);
}