package com.zarangzill.zarangzill_back.channel.service;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class ChannelDTO {

    @JsonProperty("channel_id")
    private String channelId;

    @JsonProperty("user_id")
    private int userId;

    @JsonProperty("win_cnt")
    private int winCnt;

    @JsonProperty("fan_cnt")
    private int fanCnt;

    @JsonProperty("channel_name")
    private String channelName;

    @JsonProperty("channel_description")
    private String channelDescription;

    @JsonProperty("profile_image")
    private String profileImage;

    @JsonProperty("channel_type")
    private String channel_type;

    @JsonProperty("user_name")
    private String userName;

    @JsonProperty("user_profile_image")
    private String user_profileImage;

    private String channelIds;



}
