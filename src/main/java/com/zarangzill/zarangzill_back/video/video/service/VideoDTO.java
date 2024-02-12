package com.zarangzill.zarangzill_back.video.video.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class VideoDTO {
    int id;
    int sound_id;
    int channel_id;
    String video_path;
    String video_thumbnail;
    String video_tags;
    String video_description;
    String flag_open;
    int view_cnt;
    String flag_use;
    String created_at;
    String updated_at;
}
