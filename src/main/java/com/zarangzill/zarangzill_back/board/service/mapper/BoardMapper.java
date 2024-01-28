package com.zarangzill.zarangzill_back.board.service.mapper;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BoardMapper {
    List<Map> selectBoardList(Map boardMap);
    BoardDTO selectBoardInfo(Map boardMap);
    int createBoard(BoardDTO boardDto);
    int updateBoard(BoardDTO boardDto);
    int deleteBoard(BoardDTO boardDto);
}
