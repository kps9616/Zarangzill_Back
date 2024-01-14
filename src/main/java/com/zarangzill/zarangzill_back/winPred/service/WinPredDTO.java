package com.zarangzill.zarangzill_back.winPred.service;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class WinPredDTO {
    @JsonProperty("video_id")
    private String videoId;

    @JsonProperty("video_channel_id")
    private String videoChannelId;

    @JsonProperty("video_tags")
    private String videoTags;

    @JsonProperty("video_description")
    private String videoDescription;

    @JsonProperty("video_thumbnail")
    private String videoThumbnail;

    @JsonProperty("video_path")
    private String videoPath;

    @JsonProperty("video_created_at")
    private String videoCreatedAt;

    @JsonProperty("video_score")
    private int videoScore;

    @JsonProperty("pred_cnt")
    private int predCnt;

    @JsonProperty("channel_name")
    private String channelName;

    private String predictionType;
    private String startDate;
    private String endDate;
}
