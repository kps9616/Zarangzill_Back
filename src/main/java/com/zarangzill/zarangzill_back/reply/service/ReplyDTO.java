package com.zarangzill.zarangzill_back.reply.service;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class ReplyDTO {
    @JsonProperty("reply_id")
    private String reply_id;

    @JsonProperty("video_id")
    private String videoId;

    @JsonProperty("user_id")
    private String userId;

    @JsonProperty("description")
    private String description;

    @JsonProperty("reply_description")
    private String replyDescription;

    @JsonProperty("flag_use")
    private String flagUse;

    @JsonProperty("report_id")
    private String reportId;

    @JsonProperty("reply_creator_id")
    private String replyCreatorId;

    @JsonProperty("profile_image")
    private String profileImage;

    @JsonProperty("user_name")
    private String userName;

    @JsonProperty("created_at")
    private String createdAt;

    private String predictionType;
    private String startDate;
    private String endDate;
    private String searchType;
    private String sYear;

}
