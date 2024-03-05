package com.zarangzill.zarangzill_back.channel.service.impl;

import com.zarangzill.zarangzill_back.channel.service.ChannelDTO;
import com.zarangzill.zarangzill_back.channel.service.ChannelService;
import com.zarangzill.zarangzill_back.channel.service.dao.ChannelDAO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class ChannelServiceImpl implements ChannelService {

    @Autowired
    ChannelDAO channelDAO;

    @Autowired
    SqlSessionTemplate session;

    public List<HashMap> selectFanChannelList(ChannelDTO paramMap) {
        return channelDAO.selectFanChannelList(paramMap, session);
    }

    public List<HashMap> selectRecomChannelList(ChannelDTO paramMap) {
        return channelDAO.selectRecomChannelList(paramMap, session);
    }
    public int deleteUserFanChannel(ChannelDTO paramMap) {
        return channelDAO.deleteUserFanChannel(paramMap, session);
    }
    public int insertUserFanChannel(ChannelDTO paramMap) {
        return channelDAO.insertUserFanChannel(paramMap, session);
    }

    public List<HashMap> selectUsrChannelList(ChannelDTO paramMap) {
        return channelDAO.selectUsrChannelList(paramMap, session);
    }
    public List<HashMap> selectChannelMbmList(ChannelDTO paramMap) {
        return channelDAO.selectChannelMbmList(paramMap, session);
    }
}
