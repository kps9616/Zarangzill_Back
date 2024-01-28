package com.zarangzill.zarangzill_back.board.service.mapper;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import com.zarangzill.zarangzill_back.board.service.BoardReplyDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BoardReplyMapper {
    List<Map> selectBoardReplyList(Map boardReplyMap);
    BoardReplyDTO selectBoardReplyInfo(Map boardReplyMap);
    int createBoardReply(BoardReplyDTO boardReplyDto);
    int updateBoardReply(BoardReplyDTO boardReplyDto);
    int deleteBoardReply(BoardReplyDTO boardReplyDto);

}
