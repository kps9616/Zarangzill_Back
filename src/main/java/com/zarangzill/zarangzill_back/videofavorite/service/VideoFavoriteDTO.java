package com.zarangzill.zarangzill_back.videofavorite.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class VideoFavoriteDTO {
    int id;
    int video_id;
    int user_id;
    String flag_use;
    String created_at;
    String updated_at;
}
