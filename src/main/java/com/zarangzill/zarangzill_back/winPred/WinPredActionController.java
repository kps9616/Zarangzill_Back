package com.zarangzill.zarangzill_back.winPred;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.zarangzill.zarangzill_back.winPred.service.WinPredDTO;
import com.zarangzill.zarangzill_back.winPred.service.WinPredService;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.zarangzill.zarangzill_back.util.*;

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

    @GetMapping("win/month/list/old")
    public Map<String, Object> monthOldList(@RequestParam HashMap map) {
        WinPredDTO param = new WinPredDTO();
        int sYear = Integer.parseInt(StringUtil.checkNull(map.get("sYear")));
        int sMonth = Integer.parseInt(StringUtil.checkNull(map.get("sMonth")));

        LocalDate oldDate = LocalDate.of(sYear, sMonth,1);

        param.setStartDate(String.valueOf(oldDate.withDayOfMonth(1)));
        param.setEndDate(String.valueOf(oldDate.withDayOfMonth(oldDate.lengthOfMonth())));
        param.setSearchType(StringUtil.checkNull(map.get("searchType")));
        List<HashMap> result = winPredService.selectWinPredMonthEndList(param);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("winPredMList", result);
        response.put("winPredMListSize", 10);
        response.put("message", "success");
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
        response.put("message", "success");
        return response;
    }
    @GetMapping("win/week/list/old")
    public Map<String, Object> weekOldList(@RequestParam HashMap map)  {
        WinPredDTO param = new WinPredDTO();
        param.setSYear(map.get("sYear").toString());

        List<HashMap> result = winPredService.selectWinPredWeekEndList(param);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("winPredWList", result);
        response.put("winPredWListSize", result.size());
        response.put("message", "success");
        return response;
    }

}
