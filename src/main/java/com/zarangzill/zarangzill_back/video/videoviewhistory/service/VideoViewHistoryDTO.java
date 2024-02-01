package com.zarangzill.zarangzill_back.video.videoviewhistory.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class VideoViewHistoryDTO {
    int history_id;
    int user_id;
    int video_id;
    String view_date;
    String created_at;
}
