package com.zarangzill.zarangzill_back.winPred;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.zarangzill.zarangzill_back.winPred.service.WinPredDTO;
import com.zarangzill.zarangzill_back.winPred.service.WinPredService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@CrossOrigin
@RequestMapping("/api/v1")

public class WinPredActionController {

    @Autowired
    WinPredService winPredService;

    @GetMapping("win/month/list")
    public Map<String, Object> monthList(@RequestParam HashMap map) {
        WinPredDTO param = new WinPredDTO();
        param.setPredictionType(map.get("predictionType").toString());
        param.setStartDate(map.get("startDate").toString());
        param.setEndDate(map.get("endDate").toString());
        List<HashMap> result = winPredService.selectWinPredIngList(param);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("winPredMList", result);
        response.put("winPredMListSize", result.size());
        response.put("message", "succress");
        return response;
    }
    @PostMapping("win/month/insert")
    public Map<String, String> monthInsert() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

    @GetMapping("win/week/list")
    public Map<String, Object> weekList(@RequestParam HashMap map)  {
        WinPredDTO param = new WinPredDTO();
        param.setPredictionType(map.get("predictionType").toString());
        param.setStartDate(map.get("startDate").toString());
        param.setEndDate(map.get("endDate").toString());

        List<HashMap> result = winPredService.selectWinPredIngList(param);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("winPredWList", result);
        response.put("winPredWListSize", result.size());
        response.put("message", "succress");
        return response;
    }
    @PostMapping("win/week/insert")
    public Map<String, String> weekInsert() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "win week insert");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

}
