package com.zarangzill.zarangzill_back.sound.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SoundDTO {
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
