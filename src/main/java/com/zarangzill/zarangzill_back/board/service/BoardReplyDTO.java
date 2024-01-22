package com.zarangzill.zarangzill_back.board.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardReplyDTO {
    int id;
    int board_id;
    String reply_description;
    String flag_use;
    int creator;
    String created_at;
    int editor;
    String updated_at;
}
