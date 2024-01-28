package com.zarangzill.zarangzill_back.board.service;

import java.util.List;
import java.util.Map;

public interface BoardReplyService {

    List<Map> selectBoardReplyList(Map boardReplyMap);
    BoardReplyDTO selectBoardReplyInfo(Map boardReplyMap);
    int createBoardReply(BoardReplyDTO BoardReplyDto);

    int updateBoardReply(BoardReplyDTO BoardReplyDto);

    int deleteBoardReply(BoardReplyDTO BoardReplyDto);
}