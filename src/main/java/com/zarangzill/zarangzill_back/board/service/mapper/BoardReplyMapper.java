package com.zarangzill.zarangzill_back.board.service.mapper;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import com.zarangzill.zarangzill_back.board.service.BoardReplyDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BoardReplyMapper {
    public BoardReplyDTO selectBoardReplyInfo(Map boardReplyMap);
    public int createBoardReply(BoardReplyDTO boardReplyDto);
    public int updateBoardReply(BoardReplyDTO boardReplyDto);
    public int deleteBoardReply(BoardReplyDTO boardReplyDto);

}
