package com.zarangzill.zarangzill_back.reply;

import com.zarangzill.zarangzill_back.reply.service.ReplyDTO;
import com.zarangzill.zarangzill_back.reply.service.ReplyService;
import com.zarangzill.zarangzill_back.util.StringUtil;
import com.zarangzill.zarangzill_back.winPred.service.WinPredDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/v1")

public class ReplyActionController {
    @Autowired
    ReplyService replyService;

    @GetMapping("reply/list")
    public Map<String, Object> list(@RequestParam HashMap map) {
        ReplyDTO param = new ReplyDTO();
        param.setVideoId(map.get("video_id").toString());
        List<HashMap> result = replyService.selectVideoReplyList(param);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("videoReplyList", result);
        response.put("videoReplyListSize", result.size());
        response.put("message", "succress");
        return response;
    }

    @PostMapping("reply/insert")
    public Map<String, Object> insert(@RequestParam HashMap map) {
        ReplyDTO param = new ReplyDTO();
        param.setFlagUse("Y");
        param.setVideoId(StringUtil.checkNull(map.get("video_id")));
        param.setUserId(StringUtil.checkNull(map.get("user_id")));
        param.setReplyDescription(StringUtil.checkNull(map.get("reply_description")));
        int result = replyService.insertVideoReply(param);
        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        return response;
    }

    @PostMapping("reply/report")
    public Map<String, Object> report(@RequestParam ReplyDTO param) {
        int result = replyService.insertVideoReply(param);
        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        return response;
    }

    @PostMapping("reply/delete")
    public Map<String, Object> delete(@RequestParam HashMap map) {
        ReplyDTO param = new ReplyDTO();
        param.setFlagUse("N");
        param.setReply_id(StringUtil.checkNull(map.get("reply_id")));
        int result = replyService.updateVideoReply(param);
        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        return response;
    }
}
