package com.zarangzill.zarangzill_back.reply.service;

import com.zarangzill.zarangzill_back.channel.service.ChannelDTO;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public interface ReplyService {
    public List<HashMap> selectVideoReplyList(ReplyDTO paramMap);
    public List<HashMap> selectVideoReplyList(Map paramMap);
    int insertVideoReply(ReplyDTO paramMap);
    int updateVideoReply(ReplyDTO paramMap);




    }
