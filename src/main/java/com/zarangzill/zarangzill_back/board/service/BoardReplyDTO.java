package com.zarangzill.zarangzill_back.board.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardReplyDTO {
    int reply_id;
    int board_id;
    String reply_description;
    String reply_flag_use;
    int reply_creator;
    String reply_created_at;
    int reply_editor;
    String reply_updated_at;
}
