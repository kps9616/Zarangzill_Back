package com.zarangzill.zarangzill_back.video.reply.service.impl;

import com.zarangzill.zarangzill_back.video.reply.service.ReplyDTO;
import com.zarangzill.zarangzill_back.video.reply.service.ReplyService;
import com.zarangzill.zarangzill_back.video.reply.service.dao.ReplyDAO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ReplyServiceImpl implements ReplyService {

    @Autowired
    ReplyDAO replyDAO;
    @Autowired
    SqlSessionTemplate session;

    public List<HashMap> selectVideoReplyList(ReplyDTO paramMap) {
        return replyDAO.selectVideoReplyList(paramMap, session);
    }

    public List<HashMap> selectVideoReplyList(Map paramMap) {
        return replyDAO.selectVideoReplyList(paramMap, session);
    }

    public int insertVideoReply(ReplyDTO paramMap) {
        return replyDAO.insertVideoReply(paramMap, session);
    }

    public int updateVideoReply(ReplyDTO paramMap) {
        return replyDAO.updateVideoReply(paramMap, session);
    }


}
