package com.zarangzill.zarangzill_back.channel.service.dao;

import com.zarangzill.zarangzill_back.channel.service.ChannelDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class ChannelDAO {

    public List<HashMap> selectFanChannelList(ChannelDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ChannelDAO.userFanChannelList", paramMap);
    }

    public List<HashMap> selectRecomChannelList(ChannelDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ChannelDAO.selectRecomChannelList", paramMap);
    }

    public int deleteUserFanChannel(ChannelDTO paramMap, SqlSessionTemplate session) {
        return session.delete("ChannelDAO.deleteUserFanChannel", paramMap);
    }

    public int insertUserFanChannel(ChannelDTO paramMap, SqlSessionTemplate session) {
        return session.insert("ChannelDAO.insertUserFanChannel", paramMap);
    }

    public List<HashMap> selectUsrChannelList(ChannelDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ChannelDAO.selectUsrChannelList", paramMap);
    }
    public List<HashMap> selectChannelMbmList(ChannelDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ChannelDAO.selectChannelMbmList", paramMap);
    }


}
