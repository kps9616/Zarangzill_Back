package com.zarangzill.zarangzill_back.board.service.mapper;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BoardMapper {
    public List<Map> selectBoardList(Map boardMap);
    public BoardDTO selectBoardInfo(Map boardMap);
    public int createBoard(BoardDTO boardDto);
    public int updateBoard(BoardDTO boardDto);
    public int deleteBoard(BoardDTO boardDto);
}
