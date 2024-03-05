package com.zarangzill.zarangzill_back.judge;

import com.zarangzill.zarangzill_back.judge.service.JudgeDTO;
import com.zarangzill.zarangzill_back.judge.service.JudgeService;
import com.zarangzill.zarangzill_back.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/v1")
@CrossOrigin
public class JudgeActionController {

    @Autowired
    JudgeService judgeService;

    @PostMapping("judge/score/ins")
    public Map<String, Object> insertJudge(@RequestParam HashMap map) {
        JudgeDTO param = new JudgeDTO();

        param.setJudgeUserId(StringUtil.checkNull(map.get("judge_user_id")));
        param.setJudgeVideoId(StringUtil.checkNull(map.get("judge_video_id")));
        param.setScoreJudgeHeap(StringUtil.checkNull(map.get("score_judgeHeap")));
        param.setScoreJudgeIndividuality(StringUtil.checkNull(map.get("score_judgeIndividuality")));
        param.setScoreJudgeCuteness(StringUtil.checkNull(map.get("score_judgeCuteness")));
        int result = judgeService.insertJudgeScore(param);

        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        return response;
    }
}
