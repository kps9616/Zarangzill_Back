package com.zarangzill.zarangzill_back.board.service;

import java.util.List;
import java.util.Map;

public interface BoardReplyService {

    List<Map> selectBoardReplyList(Map boardReplyMap);
    BoardReplyDTO selectBoardReplyInfo(Map boardReplyMap);
    Map createBoardReply(BoardReplyDTO BoardReplyDto);

    Map updateBoardReply(BoardReplyDTO BoardReplyDto);

    Map deleteBoardReply(BoardReplyDTO BoardReplyDto);
}