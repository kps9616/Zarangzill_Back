package com.zarangzill.zarangzill_back.reply.service.dao;

import com.zarangzill.zarangzill_back.reply.service.ReplyDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ReplyDAO {
    public List<HashMap> selectVideoReplyList(ReplyDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("ReplyDAO.selectVideoReplyList", paramMap);
    }
    public List<HashMap> selectVideoReplyList(Map paramMap, SqlSessionTemplate session) {
        return session.selectList("ReplyDAO.selectVideoReplyListByMypage", paramMap);
    }
    public int insertVideoReply(ReplyDTO paramMap, SqlSessionTemplate session) {
        return session.insert("ReplyDAO.insertVideoReply", paramMap);
    }

    public int updateVideoReply(ReplyDTO paramMap, SqlSessionTemplate session) {
        return session.insert("ReplyDAO.updateVideoReply", paramMap);
    }

}
