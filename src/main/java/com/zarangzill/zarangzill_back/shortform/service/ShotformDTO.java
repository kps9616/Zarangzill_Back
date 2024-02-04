package com.zarangzill.zarangzill_back.shortform.service;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class ShotformDTO {
    @JsonProperty("reply_id")
    private String reply_id;

    @JsonProperty("video_id")
    private String videoId;

    @JsonProperty("user_id")
    private String userId;

    @JsonProperty("description")
    private String description;

    @JsonProperty("video_description")
    private String videoDescription;

    @JsonProperty("video_thumbnail")
    private String videoThumbnail;

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

    @JsonProperty("reply_cnt")
    private String replyCnt;

    @JsonProperty("favorite_cnt")
    private String favoriteCnt;

    private String predictionType;
    private String startDate;
    private String endDate;
    private String searchType;
    private String sYear;
    private String avgAge;
    private String gender;
    private String searchKeyword;

    @JsonProperty("video_tag")
    private String videoTag;

    @JsonProperty("prediction_id")
    private String predictionId;

    @JsonProperty("week_idx")
    private String weekIdx;

    @JsonProperty("week_start_date")
    private String weekStartDate;

    @JsonProperty("week_end_date")
    private String weekEndDate;

    @JsonProperty("wp_id")
    private String wpId;

    @JsonProperty("flag_week_win")
    private String flagWeekWin;

    @JsonProperty("flag_check_month")
    private String flagCheckMonth;

    @JsonProperty("flag_check_week")
    private String flagCheckWeek;

    private String flagOpen;

    @JsonProperty("video_path")
    private String videoPath;

    @JsonProperty("video_cnt")
    private String videoCnt;

    @JsonProperty("channel_profile_image")
    private String channelProfileImage;

    @JsonProperty("channel_name")
    private String channelName;

    @JsonProperty("channel_id")
    private String channelId;




}
