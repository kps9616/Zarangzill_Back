package com.zarangzill.zarangzill_back.board.service;

import java.util.List;
import java.util.Map;

public interface BoardReplyService {

    BoardReplyDTO selectBoardReplyInfo(Map boardReplyMap);
    int createBoardReply(BoardReplyDTO BoardReplyDto);

    int updateBoardReply(BoardReplyDTO BoardReplyDto);

    int deleteBoardReply(BoardReplyDTO BoardReplyDto);
}