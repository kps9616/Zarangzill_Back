package com.zarangzill.zarangzill_back.channel;

import com.zarangzill.zarangzill_back.channel.service.ChannelDTO;
import com.zarangzill.zarangzill_back.channel.service.ChannelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONArray;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/api/v1")
public class ChannelActionController {

    @Autowired
    ChannelService channelService;

    @GetMapping("/channel/usr/list")
    public Map<String, Object> getUsrList(@RequestParam("userId") String userId) {
        ChannelDTO param = new ChannelDTO();
        param.setUserId(Integer.parseInt(userId));

        List<HashMap> resultList = channelService.selectUsrChannelList(param);

        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");

        response.put("resultList", resultList);
        response.put("resultListSize", resultList.size());

        response.put("message", "success");
        return response;
    }


    @GetMapping("/channel/usr/list/mbm")
    public Map<String, Object> getUsrMbmList(@RequestParam("channelId") String channelId) {
        ChannelDTO param = new ChannelDTO();
        param.setChannelId(channelId);

        List<HashMap> resultList = channelService.selectChannelMbmList(param);

        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");

        response.put("resultList", resultList);
        response.put("resultListSize", resultList.size());

        response.put("message", "success");
        return response;
    }

    @GetMapping("/channel/fans/list")
    public Map<String, Object> getFansList(@RequestParam("userId") String userId) {
        ChannelDTO param = new ChannelDTO();
        param.setUserId(Integer.parseInt(userId));

        System.out.println("test start");
        List<HashMap> result = channelService.selectFanChannelList(param);

        String channelIds = "";

        if(null != result && !result.isEmpty()) {
            int i = 0;
            for(HashMap chMap: result) {
                if(i == 0)
                    channelIds = chMap.get("channelId").toString();
                else
                    channelIds += "," + chMap.get("channelId").toString();
            }
        }

        param.setChannelIds(channelIds);

        List<HashMap> resultList = channelService.selectRecomChannelList(param);

        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");

        if(null != resultList && !resultList.isEmpty()) {
            response.put("recomList", resultList);
            response.put("recomListSize", resultList.size());
        }

        if(null != result && !result.isEmpty()) {
            response.put("channelList", result);
            response.put("channelListSize", result.size());
        }
        response.put("message", "success");
        return response;
    }
    @PostMapping("/channel/fans/del")
    public Map<String, Object> delUserFanChannel(@RequestParam ChannelDTO param) {

        int result = channelService.deleteUserFanChannel(param);
        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        return response;

    }
    @PostMapping("/channel/fans/ins")
    public Map<String, Object> insUserFanChannel(@RequestParam ChannelDTO param) {

        int result = channelService.insertUserFanChannel(param);
        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        return response;

    }
}
