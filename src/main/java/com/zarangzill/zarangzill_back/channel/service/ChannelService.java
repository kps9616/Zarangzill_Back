package com.zarangzill.zarangzill_back.channel.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface ChannelService {


    List<HashMap> selectFanChannelList(ChannelDTO paramMap);

    List<HashMap> selectRecomChannelList(ChannelDTO paramMap);
    int deleteUserFanChannel(ChannelDTO paramMap);
    int insertUserFanChannel(ChannelDTO paramMap);

}

