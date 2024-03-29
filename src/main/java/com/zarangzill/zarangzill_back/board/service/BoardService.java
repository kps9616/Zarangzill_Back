package com.zarangzill.zarangzill_back.board.service;

import java.util.List;
import java.util.Map;

public interface BoardService {
    List<Map> selectBoardList(Map boardMap);
    BoardDTO selectBoardInfo(Map boardMap);
    Map createBoard(BoardDTO BoardDto);
    Map updateBoard(BoardDTO BoardDto);
    Map deleteBoard(BoardDTO BoardDto);
    BoardDTO selectServiceIntroductionInfo();
    BoardDTO selectUseTermsInfo();
    BoardDTO selectPrivacyStatementInfo();
    List<Map> selectFanBoardList(Map boardMap);
    List<Map> selectFanBoardReplyList(Map boardMap);
    Map selectFanBoardInfo(Map boardMap);
}