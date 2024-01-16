package com.zarangzill.zarangzill_back.board.service.mapper;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
    public int createBoard(BoardDTO boardDto);
    public int updateBoard(BoardDTO boardDto);
    public int deleteBoard(BoardDTO boardDto);

}
