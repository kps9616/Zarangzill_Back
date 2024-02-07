package com.zarangzill.zarangzill_back.judge;

import com.zarangzill.zarangzill_back.judge.service.JudgeDTO;
import com.zarangzill.zarangzill_back.judge.service.JudgeService;
import com.zarangzill.zarangzill_back.util.StringUtil;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("/api/v1")
@CrossOrigin
public class JudgeActionController {

    private JudgeService judgeService;

    @PostMapping("/judge/insert")
    public Map<String, String> insert(@RequestParam HashMap map) {
        JudgeDTO param = new JudgeDTO();

        param.setJudgeVideoId(StringUtil.checkNull(map.get("videoId")));
        int result = judgeService.insertJudgeScore(param);

        //심사 평가 저장
        Map<String, String> response = new HashMap<String, String>();
        response.put("code", "200");
        response.put("message", "success");
        return response;
    }
}
