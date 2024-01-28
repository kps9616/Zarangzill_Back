package com.zarangzill.zarangzill_back.board.service;

import java.util.List;
import java.util.Map;

public interface BoardService {


    List<Map> selectBoardList(Map boardMap);
    BoardDTO selectBoardInfo(Map boardMap);
    Map createBoard(BoardDTO BoardDto);
    Map updateBoard(BoardDTO BoardDto);
    Map deleteBoard(BoardDTO BoardDto);
    BoardDTO selectUseTermsInfo();
    BoardDTO selectPrivacyStatementInfo();
}