package com.zarangzill.zarangzill_back.board.service;

public interface BoardService {
    int createBoard(BoardDTO BoardDto);

    int updateBoard(BoardDTO BoardDto);

    int deleteBoard(BoardDTO BoardDto);
}