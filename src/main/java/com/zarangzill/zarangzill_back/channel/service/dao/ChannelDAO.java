package com.zarangzill.zarangzill_back.channel.service.dao;

import com.zarangzill.zarangzill_back.channel.service.ChannelDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class ChannelDAO {

    public List<HashMap> selectFanChannelList(ChannelDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ChannelMapper.userFanChannelList", paramMap);
    }


    public List<HashMap> selectRecomChannelList(ChannelDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ChannelMapper.userFanChannelList", paramMap);
    }

    public int deleteUserFanChannel(ChannelDTO paramMap, SqlSessionTemplate session) {
        return session.delete("ChannelMapper.deleteUserFanChannel", paramMap);
    }

    public int insertUserFanChannel(ChannelDTO paramMap, SqlSessionTemplate session) {
        return session.insert("ChannelMapper.insertUserFanChannel", paramMap);
    }
}
