package com.zarangzill.zarangzill_back.board.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.type.Alias;
import org.mybatis.spring.annotation.MapperScan;

@Getter
@Setter
@ToString
public class BoardDTO {
    int board_id;
    String subject;
    String description;
    String type;
    String flag_push;
    String flag_use;
    int creator;
    String created_at;
    int editor;
    String updated_at;

}
